using System;
using System.Xml;
using System.Xml.XPath;
using OnlineBankingApp.Models;

using System.Xml.Xsl;

namespace OnlineBankingApp.Services
{
    public class KnowledgebaseService : IKnowledgebaseService
    {
        private IWebHostEnvironment  _env;
        public KnowledgebaseService(IWebHostEnvironment env)
        {
            _env = env;
        }

        private string Sanitize(string input){
            
            if (string.IsNullOrEmpty(input)) {
                    throw new ArgumentNullException("input", "input cannot be null");
                }
                
            HashSet<char> whitelist = new HashSet<char>(@"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
            return string.Concat(input.Where(i =>  whitelist.Contains(i))); ;
        }

        public List<Knowledge> Search(string input)
        {
            List<Knowledge> searchResult = new List<Knowledge>(); 
            var webRoot = _env.WebRootPath;
            var file = System.IO.Path.Combine(webRoot, "Knowledgebase.xml");

            XmlDocument XmlDoc = new XmlDocument();
            XmlDoc.Load(file);
            
            input = Sanitize(input);
            XPathNavigator  nav = XmlDoc.CreateNavigator();
            //XPathExpression expr = nav.Compile(@"//knowledge[tags[contains(text(),$input)] and sensitivity/text()='Public']");
            XPathExpression expr = nav.Compile(@"//knowledge[tags[contains(text(),'" + input + "')] and sensitivity/text() ='Public']");

            // parametrizacion: se crea una lista de argumentos para pasar al xpath
            XsltArgumentList varList = new();
            varList.AddParam("input", string.Empty, input);

            CustomContext context = new(new NameTable(), varList);
            expr.SetContext(context);

            var matchedNodes = nav.Select(expr);

            foreach (XPathNavigator node in matchedNodes)
            {                
                searchResult.Add(new Knowledge() {Topic = node.SelectSingleNode(nav.Compile("topic")).Value,Description = node.SelectSingleNode(nav.Compile("description")).Value});                
            }

            return searchResult;
        }
    }

    public interface IKnowledgebaseService
    {
        List<Knowledge> Search(string input);
    }
}