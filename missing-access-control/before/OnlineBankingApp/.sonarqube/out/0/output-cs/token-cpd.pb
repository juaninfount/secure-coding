¸_
dD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Startup.cs
	namespace 	
OnlineBankingApp
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
,3 4
IWebHostEnvironment5 H
envI L
)L M
{ 	
Environment 
= 
env 
; 
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
IWebHostEnvironment "
Environment# .
{/ 0
get1 4
;4 5
}6 7
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{   	
services!! 
.!! 
	Configure!! 
<!! 
IdentityOptions!! .
>!!. /
(!!/ 0
options!!0 7
=>!!8 :
{"" 
options## 
.## 
Password##  
.##  !
RequireDigit##! -
=##. /
true##0 4
;##4 5
options$$ 
.$$ 
Password$$  
.$$  !
RequireLowercase$$! 1
=$$2 3
true$$4 8
;$$8 9
options%% 
.%% 
Password%%  
.%%  !"
RequireNonAlphanumeric%%! 7
=%%8 9
true%%: >
;%%> ?
options&& 
.&& 
Password&&  
.&&  !
RequireUppercase&&! 1
=&&2 3
true&&4 8
;&&8 9
options'' 
.'' 
Password''  
.''  !
RequiredLength''! /
=''0 1
$num''2 3
;''3 4
options(( 
.(( 
Password((  
.((  !
RequiredUniqueChars((! 4
=((5 6
$num((7 8
;((8 9
})) 
))) 
;)) 
if++ 
(++ 
Environment++ 
.++ 
IsDevelopment++ )
(++) *
)++* +
)+++ ,
{,, 
services-- 
.-- 
AddDbContext-- %
<--% &#
OnlineBankingAppContext--& =
>--= >
(--> ?
options--? F
=>--G I
options.. 
... 
	UseSqlite.. %
(..% &
Configuration..& 3
...3 4
GetConnectionString..4 G
(..G H
$str..H a
)..a b
)..b c
)..c d
;..d e
}// 
else00 
{11 
services22 
.22 
AddDbContext22 %
<22% &#
OnlineBankingAppContext22& =
>22= >
(22> ?
options22? F
=>22G I
options33 
.33 
UseSqlServer33 (
(33( )
Configuration33) 6
.336 7
GetConnectionString337 J
(33J K
$str33K d
)33d e
)33e f
)33f g
;33g h
}44 
services66 
.66 
AddIdentity66  
<66  !
Customer66! )
,66) *
IdentityRole66* 6
>666 7
(667 8
options77 
=>77  "
options77# *
.77* +
SignIn77+ 1
.771 2#
RequireConfirmedAccount772 I
=77J K
false77L Q
)77Q R
.88 
AddRoles88 
<88 
IdentityRole88 &
>88& '
(88' (
)88( )
.99 $
AddEntityFrameworkStores99 )
<99) *#
OnlineBankingAppContext99* A
>99A B
(99B C
)99C D
.:: $
AddDefaultTokenProviders:: )
(::) *
)::* +
;::+ ,
services<< 
.<< 
	Configure<< 
<<< 
CookiePolicyOptions<< 2
><<2 3
(<<3 4
options<<4 ;
=><<< >
{== 
options>> 
.>> 
CheckConsentNeeded>> *
=>>+ ,
context>>- 4
=>>>5 7
true>>8 <
;>>< =
options?? 
.?? !
MinimumSameSitePolicy?? -
=??. /
SameSiteMode??0 <
.??< =
None??= A
;??A B
}@@ 
)@@ 
;@@ 
servicesBB 
.BB &
ConfigureApplicationCookieBB /
(BB/ 0
optionsBB0 7
=>BB8 :
{CC 
optionsDD 
.DD 
	LoginPathDD !
=DD" #
$"DD$ &
$strDD& =
"DD= >
;DD> ?
optionsEE 
.EE 

LogoutPathEE "
=EE# $
$"EE% '
$strEE' ?
"EE? @
;EE@ A
optionsFF 
.FF 
AccessDeniedPathFF (
=FF) *
$"FF+ -
$strFF- K
"FFK L
;FFL M
optionsGG 
.GG 
ExpireTimeSpanGG &
=GG' (
TimeSpanGG) 1
.GG1 2
FromMinutesGG2 =
(GG= >
$numGG> @
)GG@ A
;GGA B
}HH 
)HH 
;HH 
servicesKK 
.KK 
AddRazorPagesKK "
(KK" #
optionsKK# *
=>KK+ -
{LL 
optionsMM 
.MM 
ConventionsMM #
.MM# $
AuthorizeAreaFolderMM$ 7
(MM7 8
$strMM8 B
,MMB C
$strMMD U
)MMU V
;MMV W
optionsNN 
.NN 
ConventionsNN #
.NN# $
AuthorizeAreaPageNN$ 5
(NN5 6
$strNN6 @
,NN@ A
$strNNB S
)NNS T
;NNT U
}OO 
)OO 
;OO 
servicesQQ 
.QQ %
AddDistributedMemoryCacheQQ .
(QQ. /
)QQ/ 0
;QQ0 1
servicesRR 
.RR 

AddSessionRR 
(RR  
optionsRR  '
=>RR( *
{SS 
optionsTT 
.TT 
CookieTT 
.TT 
NameTT #
=TT$ %
$strTT& >
;TT> ?
optionsUU 
.UU 
IdleTimeoutUU #
=UU$ %
TimeSpanUU& .
.UU. /
FromSecondsUU/ :
(UU: ;
$numUU; =
)UU= >
;UU> ?
optionsVV 
.VV 
CookieVV 
.VV 
HttpOnlyVV '
=VV( )
trueVV* .
;VV. /
optionsWW 
.WW 
CookieWW 
.WW 
IsEssentialWW *
=WW+ ,
trueWW- 1
;WW1 2
}XX 
)XX 
;XX 
servicesZZ 
.ZZ 
AddAuthorizationZZ %
(ZZ% &
optionsZZ& -
=>ZZ. 0
{[[ 
options\\ 
.\\ 
FallbackPolicy\\ &
=\\' (
new\\) ,&
AuthorizationPolicyBuilder\\- G
(\\G H
)\\H I
.]] $
RequireAuthenticatedUser]] -
(]]- .
)]]. /
.^^ 
Build^^ 
(^^ 
)^^ 
;^^ 
foreach`` 
(`` 
var`` 
	criterion`` %
in``& (
PrincipalPermission``) <
.``< =
Criteria``= E
)``E F
{aa 
optionsbb 
.bb 
	AddPolicybb %
(bb% &
	criterionbb& /
.bb/ 0
Methodbb0 6
.bb6 7
Namebb7 ;
,bb; <
policycc 
=>cc 
policycc $
.cc$ %
RequireAssertioncc% 5
(cc5 6
	criterioncc6 ?
)cc? @
)cc@ A
;ccA B
}dd 
}ff 
)ff 
;ff 
serviceshh 
.hh 
AddSingletonhh !
<hh! "!
IKnowledgebaseServicehh" 7
,hh7 8 
KnowledgebaseServicehh9 M
>hhM N
(hhN O
)hhO P
;hhP Q
servicesii 
.ii 
AddSingletonii !
<ii! "
IEmailSenderii" .
,ii. /
EmailSenderii0 ;
>ii; <
(ii< =
)ii= >
;ii> ?
servicesjj 
.jj 
AddSingletonjj !
<jj! "
ICryptoServicejj" 0
,jj0 1
CryptoServicejj2 ?
>jj? @
(jj@ A
)jjA B
;jjB C
serviceskk 
.kk 
	Configurekk 
<kk $
AuthMessageSenderOptionskk 7
>kk7 8
(kk8 9
Configurationkk9 F
)kkF G
;kkG H
ifmm 
(mm 
!mm 
Environmentmm 
.mm 
IsDevelopmentmm *
(mm* +
)mm+ ,
)mm, -
{nn 
servicesoo 
.oo 
AddHstsoo  
(oo  !
optionsoo! (
=>oo) +
{pp 
optionsqq 
.qq 
Preloadqq #
=qq$ %
trueqq& *
;qq* +
optionsrr 
.rr 
IncludeSubDomainsrr -
=rr. /
truerr0 4
;rr4 5
optionsss 
.ss 
MaxAgess "
=ss# $
TimeSpanss% -
.ss- .
FromDaysss. 6
(ss6 7
$numss7 9
)ss9 :
;ss: ;
optionstt 
.tt 
ExcludedHoststt )
.tt) *
Addtt* -
(tt- .
$strtt. ;
)tt; <
;tt< =
optionsuu 
.uu 
ExcludedHostsuu )
.uu) *
Adduu* -
(uu- .
$struu. ?
)uu? @
;uu@ A
}vv 
)vv 
;vv 
}ww 
servicesyy 
.yy 
AddHttpsRedirectionyy (
(yy( )
optionsyy) 0
=>yy1 3
{zz 
options{{ 
.{{ 
RedirectStatusCode{{ *
={{+ ,
StatusCodes{{- 8
.{{8 9&
Status307TemporaryRedirect{{9 S
;{{S T
options|| 
.|| 
	HttpsPort|| !
=||" #
$num||$ (
;||( )
}}} 
)}} 
;}} 
} 	
public
ÇÇ 
void
ÇÇ 
	Configure
ÇÇ 
(
ÇÇ !
IApplicationBuilder
ÇÇ 1
app
ÇÇ2 5
,
ÇÇ5 6!
IWebHostEnvironment
ÇÇ7 J
env
ÇÇK N
)
ÇÇN O
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
env
ÑÑ 
.
ÑÑ 
IsDevelopment
ÑÑ !
(
ÑÑ! "
)
ÑÑ" #
)
ÑÑ# $
{
ÖÖ 
app
ÜÜ 
.
ÜÜ '
UseDeveloperExceptionPage
ÜÜ -
(
ÜÜ- .
)
ÜÜ. /
;
ÜÜ/ 0
}
áá 
else
àà 
{
ââ 
app
ää 
.
ää !
UseExceptionHandler
ää '
(
ää' (
$str
ää( 0
)
ää0 1
;
ää1 2
app
ãã 
.
ãã 
UseHsts
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 
app
éé 
.
éé !
UseHttpsRedirection
éé #
(
éé# $
)
éé$ %
;
éé% &
app
èè 
.
èè 
UseStaticFiles
èè 
(
èè 
)
èè  
;
èè  !
app
ëë 
.
ëë 

UseRouting
ëë 
(
ëë 
)
ëë 
;
ëë 
app
ìì 
.
ìì 
UseAuthentication
ìì !
(
ìì! "
)
ìì" #
;
ìì# $
app
îî 
.
îî 
UseAuthorization
îî  
(
îî  !
)
îî! "
;
îî" #
app
ññ 
.
ññ 

UseSession
ññ 
(
ññ 
)
ññ 
;
ññ 
app
òò 
.
òò 
UseEndpoints
òò 
(
òò 
	endpoints
òò &
=>
òò' )
{
ôô 
	endpoints
öö 
.
öö 
MapRazorPages
öö '
(
öö' (
)
öö( )
;
öö) *
}
õõ 
)
õõ 
;
õõ 
}
úú 	
}
ùù 
}ûû ¡
|D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\XPathExtensionVariable.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public

 

class

 "
XPathExtensionVariable

 '
:

( ) 
IXsltContextVariable

* >
{ 
private 
string 
prefix 
; 
private 
string 
varName 
; 
public "
XPathExtensionVariable %
(% &
string& ,
prefix- 3
,3 4
string5 ;
varName< C
)C D
{ 	
this 
. 
prefix 
= 
prefix  
;  !
this 
. 
varName 
= 
varName "
;" #
} 	
public 
object 
Evaluate 
( 
System %
.% &
Xml& )
.) *
Xsl* -
.- .
XsltContext. 9
xsltContext: E
)E F
{ 	
XsltArgumentList 
vars !
=" #
($ %
(% &
CustomContext& 3
)3 4
xsltContext4 ?
)? @
.@ A
ArgListA H
;H I
return 
vars 
. 
GetParam  
(  !
varName! (
,( )
prefix* 0
)0 1
;1 2
} 	
public## 
bool## 
IsLocal## 
{$$ 	
get%% 
{&& 
return'' 
false'' 
;'' 
}(( 
})) 	
public-- 
bool-- 
IsParam-- 
{.. 	
get// 
{00 
return11 
false11 
;11 
}22 
}33 	
public55 
System55 
.55 
Xml55 
.55 
XPath55 
.55  
XPathResultType55  /
VariableType550 <
{66 	
get77 
{88 
return99 
XPathResultType99 &
.99& '
Any99' *
;99* +
}:: 
};; 	
}<< 
}== ÊA
}D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\XPathExtensionFunctions.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public 

class #
XPathExtensionFunctions (
:) *
System+ 1
.1 2
Xml2 5
.5 6
Xsl6 9
.9 : 
IXsltContextFunction: N
{ 
private

 
System

 
.

 
Xml

 
.

 
XPath

  
.

  !
XPathResultType

! 0
[

0 1
]

1 2
argTypes

3 ;
;

; <
private 
int 
minArgs 
; 
private 
int 
maxArgs 
; 
private 
System 
. 
Xml 
. 
XPath  
.  !
XPathResultType! 0

returnType1 ;
;; <
private 
string 
FunctionName #
;# $
public #
XPathExtensionFunctions &
(& '
int' *
minArgs+ 2
,2 3
int4 7
maxArgs8 ?
,? @
XPathResultType 

returnType &
,& '
XPathResultType( 7
[7 8
]8 9
argTypes: B
,B C
stringD J
functionNameK W
)W X
{ 	
this 
. 
minArgs 
= 
minArgs "
;" #
this 
. 
maxArgs 
= 
maxArgs "
;" #
this 
. 

returnType 
= 

returnType (
;( )
this 
. 
argTypes 
= 
argTypes $
;$ %
this 
. 
FunctionName 
= 
functionName  ,
;, -
} 	
public!! 
System!! 
.!! 
Xml!! 
.!! 
XPath!! 
.!!  
XPathResultType!!  /
[!!/ 0
]!!0 1
ArgTypes!!2 :
{"" 	
get## 
{$$ 
return%% 
argTypes%% 
;%%  
}&& 
}'' 	
public(( 
int(( 
Maxargs(( 
{)) 	
get** 
{++ 
return,, 
maxArgs,, 
;,, 
}-- 
}.. 	
public00 
int00 
Minargs00 
{11 	
get22 
{33 
return44 
maxArgs44 
;44 
}55 
}66 	
public88 
System88 
.88 
Xml88 
.88 
XPath88 
.88  
XPathResultType88  /

ReturnType880 :
{99 	
get:: 
{;; 
return<< 

returnType<< !
;<<! "
}== 
}>> 	
privateBB 
intBB 
	CountCharBB 
(BB 
XPathNodeIteratorBB /
nodeBB0 4
,BB4 5
charBB6 :
charToCountBB; F
)BBF G
{CC 	
intDD 
	charCountDD 
=DD 
$numDD 
;DD 
forEE 
(EE 
intEE 
charIdxEE 
=EE 
$numEE  
;EE  !
charIdxEE" )
<EE* +
nodeEE, 0
.EE0 1
CurrentEE1 8
.EE8 9
ValueEE9 >
.EE> ?
LengthEE? E
;EEE F
charIdxEEG N
++EEN P
)EEP Q
{FF 
ifGG 
(GG 
nodeGG 
.GG 
CurrentGG  
.GG  !
ValueGG! &
[GG& '
charIdxGG' .
]GG. /
==GG0 2
charToCountGG4 ?
)GG? @
{HH 
	charCountII 
++II 
;II  
}JJ 
}KK 
returnLL 
	charCountLL 
;LL 
}MM 	
privateQQ 
stringQQ 

FindTaskByQQ !
(QQ! "
XPathNodeIteratorQQ" 3
nodeQQ4 8
,QQ8 9
stringQQ: @
textQQA E
)QQE F
{RR 	
ifSS 
(SS 
nodeSS 
.SS 
CurrentSS 
.SS 
ValueSS "
.SS" #
ContainsSS# +
(SS+ ,
textSS, 0
)SS0 1
)SS1 2
returnTT 
nodeTT 
.TT 
CurrentTT #
.TT# $
ValueTT$ )
;TT) *
elseUU 
returnVV 
$strVV 
;VV 
}WW 	
privateYY 
stringYY 
LeftYY 
(YY 
stringYY "
strYY# &
,YY& '
intYY( +
lengthYY, 2
)YY2 3
{ZZ 	
return[[ 
str[[ 
.[[ 
	Substring[[  
([[  !
$num[[! "
,[[" #
length[[$ *
)[[* +
;[[+ ,
}\\ 	
private^^ 
string^^ 
Right^^ 
(^^ 
string^^ #
str^^$ '
,^^' (
int^^) ,
length^^- 3
)^^3 4
{__ 	
return`` 
str`` 
.`` 
	Substring``  
(``  !
(``! "
str``" %
.``% &
Length``& ,
-``- .
length``/ 5
)``5 6
,``6 7
length``8 >
)``> ?
;``? @
}aa 	
publicee 
objectee 
Invokeee 
(ee 
Systemee #
.ee# $
Xmlee$ '
.ee' (
Xslee( +
.ee+ ,
XsltContextee, 7
xsltContextee8 C
,eeC D
objectff 
[ff 
]ff 
argsff !
,ff! "
Systemff# )
.ff) *
Xmlff* -
.ff- .
XPathff. 3
.ff3 4
XPathNavigatorff4 B

docContextffC M
)ffM N
{gg 	
ifhh 
(hh 
FunctionNamehh 
==hh 
$strhh  +
)hh+ ,
returnii 
(ii 
Objectii 
)ii 
	CountCharii (
(ii( )
(ii) *
XPathNodeIteratorii* ;
)ii; <
argsii< @
[ii@ A
$numiiA B
]iiB C
,iiC D
Convertjj0 7
.jj7 8
ToCharjj8 >
(jj> ?
argsjj? C
[jjC D
$numjjD E
]jjE F
)jjF G
)jjG H
;jjH I
ifkk 
(kk 
FunctionNamekk 
==kk 
$strkk  ,
)kk, -
returnll 

FindTaskByll !
(ll! "
(ll" #
XPathNodeIteratorll# 4
)ll4 5
argsll5 9
[ll9 :
$numll: ;
]ll; <
,ll< =
Convertmm, 3
.mm3 4
ToStringmm4 <
(mm< =
argsmm= A
[mmA B
$nummmB C
]mmC D
)mmD E
)mmE F
;mmF G
ifoo 
(oo 
FunctionNameoo 
==oo 
$stroo  &
)oo& '
returnpp 
(pp 
Objectpp 
)pp 
Leftpp #
(pp# $
Convertpp$ +
.pp+ ,
ToStringpp, 4
(pp4 5
argspp5 9
[pp9 :
$numpp: ;
]pp; <
)pp< =
,pp= >
Convertqq0 7
.qq7 8
ToInt16qq8 ?
(qq? @
argsqq@ D
[qqD E
$numqqE F
]qqF G
)qqG H
)qqH I
;qqI J
ifss 
(ss 
FunctionNamess 
==ss 
$strss  '
)ss' (
returntt 
(tt 
Objecttt 
)tt 
Righttt $
(tt$ %
Converttt% ,
.tt, -
ToStringtt- 5
(tt5 6
argstt6 :
[tt: ;
$numtt; <
]tt< =
)tt= >
,tt> ?
Convertuu0 7
.uu7 8
ToInt16uu8 ?
(uu? @
argsuu@ D
[uuD E
$numuuE F
]uuF G
)uuG H
)uuH I
;uuI J
returnww 
nullww 
;ww 
}xx 	
}yy 
}zz Ã*
zD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\KnowledgebaseService.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public 

class  
KnowledgebaseService %
:& '!
IKnowledgebaseService( =
{ 
private 
IWebHostEnvironment #
_env% )
;) *
public  
KnowledgebaseService #
(# $
IWebHostEnvironment$ 7
env8 ;
); <
{ 	
_env 
= 
env 
; 
} 	
public 
List 
< 
	Knowledge 
> 
Search %
(% &
string& ,
input- 2
)2 3
{ 	
List 
< 
	Knowledge 
> 
searchResult (
=) *
new+ .
List/ 3
<3 4
	Knowledge4 =
>= >
(> ?
)? @
;@ A
var 
webRoot 
= 
_env 
. 
WebRootPath *
;* +
var 
file 
= 
System 
. 
IO  
.  !
Path! %
.% &
Combine& -
(- .
webRoot. 5
,5 6
$str7 J
)J K
;K L
XmlReaderSettings 
settings &
=' (
new) ,
XmlReaderSettings- >
(> ?
)? @
;@ A
settings 
. 
DtdProcessing "
=# $
DtdProcessing% 2
.2 3
Prohibit3 ;
;; <
settings 
. %
MaxCharactersFromEntities .
=/ 0
$num1 5
;5 6
settings   
.   #
MaxCharactersInDocument   ,
=  - .
$num  / 3
;  3 4
try"" 
{"" 
	XmlReader## 
reader##  
=##! "
	XmlReader### ,
.##, -
Create##- 3
(##3 4
file##4 8
,##8 9
settings##: B
)##B C
;##C D
	XDocument$$ 
xmlDoc$$  
=$$! "
	XDocument$$# ,
.$$, -
Load$$- 1
($$1 2
reader$$2 8
)$$8 9
;$$9 :
var&& 
query&& 
=&& 
from&&  
i&&! "
in&&# %
xmlDoc&&& ,
.&&, -
Element&&- 4
(&&4 5
$str&&5 D
)&&D E
.'' 
Elements'' !
(''! "
$str''" -
)''- .
where(( 
()) 
i)) 
.)) 
Element)) %
())% &
$str))& -
)))- .
.)). /
ToString))/ 7
())7 8
)))8 9
.))9 :
Contains)): B
())B C
input))C H
)))H I
==))J L
true))M Q
||))R T
i** 
.** 
Element** $
(**$ %
$str**% 2
)**2 3
.**3 4
ToString**4 <
(**< =
)**= >
.**> ?
Contains**? G
(**G H
input**H M
)**M N
==**O Q
true**R V
)**V W
&&**X Z
i++ 
.++ 
Element++ $
(++$ %
$str++% 2
)++2 3
.++3 4
ToString++4 <
(++< =
)++= >
.++> ?
Contains++? G
(++G H
$str++H P
)++P Q
==++R T
true++U Y
select,, 
new,, "
{-- 
Topic.. !
=.." #
(..$ %
string..% +
)..+ ,
i.., -
...- .
Element... 5
(..5 6
$str..6 =
)..= >
,..> ?
Description// '
=//( )
(//* +
string//+ 1
)//1 2
i//2 3
.//3 4
Element//4 ;
(//; <
$str//< I
)//I J
}00 
;00 
foreach22 
(22 
var22 
	knowledge22 &
in22' )
query22* /
)22/ 0
{33 
searchResult44  
.44  !
Add44! $
(44$ %
new44% (
	Knowledge44) 2
(442 3
)443 4
{445 6
Topic446 ;
=44< =
	knowledge44> G
.44G H
Topic44H M
,44N O
Description44O Z
=44[ \
	knowledge44] f
.44f g
Description44g r
}44s t
)44t u
;44u v
}55 
return77 
searchResult77 #
;77# $
}88 
catch99 
(99 
XmlException99 
ex99  "
)99" #
{99$ %
throw:: 
new:: 
XmlException:: &
(::& '
ex::' )
.::) *
Message::* 1
)::1 2
;::2 3
};; 
}== 	
}>> 
public@@ 

	interface@@ !
IKnowledgebaseService@@ *
{AA 
ListBB 
<BB 
	KnowledgeBB 
>BB 
SearchBB 
(BB 
stringBB %
inputBB& +
)BB+ ,
;BB, -
}CC 
}DD â
qD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\EmailSender.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public		 

class		 
EmailSender		 
:		 
IEmailSender		 +
{

 
public 
EmailSender 
( 
IOptions #
<# $$
AuthMessageSenderOptions$ <
>< =
optionsAccessor> M
)M N
{ 	
Options 
= 
optionsAccessor %
.% &
Value& +
;+ ,
} 	
public $
AuthMessageSenderOptions '
Options( /
{0 1
get2 5
;5 6
}7 8
public 
Task 
SendEmailAsync "
(" #
string# )
email* /
,/ 0
string1 7
subject8 ?
,? @
stringA G
messageH O
)O P
{ 	
return 
Execute 
( 
Options "
." #
SendGridKey# .
,. /
subject0 7
,7 8
message9 @
,@ A
emailB G
)G H
;H I
} 	
public 
Task 
Execute 
( 
string "
apiKey# )
,) *
string+ 1
subject2 9
,9 :
string; A
messageB I
,I J
stringK Q
emailR W
)W X
{ 	
var 
client 
= 
new 
SendGridClient +
(+ ,
apiKey, 2
)2 3
;3 4
var 
msg 
= 
new 
SendGridMessage )
() *
)* +
{ 
From 
= 
new 
EmailAddress '
(' (
$str( 9
,9 :
Options; B
.B C
SendGridUserC O
)O P
,P Q
Subject 
= 
subject !
,! "
PlainTextContent  
=! "
message# *
,* +
HtmlContent 
= 
message %
}   
;   
msg!! 
.!! 
AddTo!! 
(!! 
new!! 
EmailAddress!! &
(!!& '
email!!' ,
)!!, -
)!!- .
;!!. /
msg%% 
.%% 
SetClickTracking%%  
(%%  !
false%%! &
,%%& '
false%%( -
)%%- .
;%%. /
return'' 
client'' 
.'' 
SendEmailAsync'' (
(''( )
msg'') ,
)'', -
;''- .
}(( 	
})) 
}** Ú.
sD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\CustomContext.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public 

class 
CustomContext 
:  
XsltContext! ,
{ 
private		 
const		 
string		 "
ExtensionsNamespaceUri		 3
=		4 5
$str		6 N
;		N O
private 
XsltArgumentList  
argList! (
;( )
public 
CustomContext 
( 
) 
{ 	
} 	
public 
CustomContext 
( 
	NameTable &
nt' )
,) *
XsltArgumentList+ ;
args< @
)@ A
: 
base 
( 
nt 
) 
{ 	
argList 
= 
args 
; 
} 	
public 
override 
System 
. 
Xml "
." #
Xsl# &
.& ' 
IXsltContextFunction' ;
ResolveFunction< K
(K L
string$ *
prefix+ 1
,1 2
string3 9
name: >
,> ?
System$ *
.* +
Xml+ .
.. /
XPath/ 4
.4 5
XPathResultType5 D
[D E
]E F
argTypesG O
)O P
{ 	
if 
( 
this 
. 
LookupNamespace $
($ %
prefix% +
)+ ,
==- /"
ExtensionsNamespaceUri0 F
)F G
{   
string!! 
strCase!! 
=!!  
name!!! %
;!!% &
switch## 
(## 
strCase## 
)##  
{$$ 
case%% 
$str%% $
:%%$ %
return&& 
new&& "#
XPathExtensionFunctions&&# :
(&&: ;
$num&&; <
,&&< =
$num&&> ?
,&&? @
XPathResultType&&A P
.&&P Q
Number&&Q W
,&&W X
argTypes''D L
,''L M
$str''N Y
)''Y Z
;''Z [
case)) 
$str)) %
:))% &
return** 
new** "#
XPathExtensionFunctions**# :
(**: ;
$num**; <
,**< =
$num**> ?
,**? @
XPathResultType**A P
.**P Q
String**Q W
,**W X
argTypes++D L
,++L M
$str++N Z
)++Z [
;++[ \
case-- 
$str--  
:--  !
return.. 
new.. "#
XPathExtensionFunctions..# :
(..: ;
$num..; <
,..< =
$num..> ?
,..? @
XPathResultType..A P
...P Q
String..Q W
,..W X
argTypes//H P
,//P Q
$str//R Y
)//Y Z
;//Z [
case11 
$str11 
:11  
return22 
new22 "#
XPathExtensionFunctions22# :
(22: ;
$num22; <
,22< =
$num22> ?
,22? @
XPathResultType22A P
.22P Q
String22Q W
,22W X
argTypes33H P
,33P Q
$str33R X
)33X Y
;33Y Z
}44 
}55 
return77 
null77 
;77 
}88 	
public<< 
override<< 
System<< 
.<< 
Xml<< "
.<<" #
Xsl<<# &
.<<& ' 
IXsltContextVariable<<' ;
ResolveVariable<<< K
(<<K L
string==8 >
prefix==? E
,==E F
string==G M
name==N R
)==R S
{>> 	
if?? 
(?? 
this?? 
.?? 
LookupNamespace?? $
(??$ %
prefix??% +
)??+ ,
==??- /"
ExtensionsNamespaceUri??0 F
||??G I
!??J K
prefix??K Q
.??Q R
Equals??R X
(??X Y
string??Y _
.??_ `
Empty??` e
)??e f
)??f g
{@@ 
throwAA 
newAA 
XPathExceptionAA (
(AA( )
stringAA) /
.AA/ 0
FormatAA0 6
(AA6 7
$strAA7 [
,AA[ \
prefixAA] c
,AAc d
nameAAe i
)AAi j
)AAj k
;AAk l
}BB "
XPathExtensionVariableKK &
varKK' *
;KK* +
varLL 
=LL 
newLL "
XPathExtensionVariableLL 0
(LL0 1
prefixLL1 7
,LL7 8
nameLL9 =
)LL= >
;LL> ?
returnQQ 
varQQ 
;QQ 
}TT 	
publicWW 
overrideWW 
boolWW 
PreserveWhitespaceWW /
(WW/ 0
SystemWW0 6
.WW6 7
XmlWW7 :
.WW: ;
XPathWW; @
.WW@ A
XPathNavigatorWWA O
nodeWWP T
)WWT U
{XX 	
returnYY 
falseYY 
;YY 
}ZZ 	
public]] 
override]] 
int]] 
CompareDocument]] +
(]]+ ,
string]], 2
baseUri]]3 :
,]]: ;
string]]< B
nextbaseUri]]C N
)]]N O
{^^ 	
return__ 
$num__ 
;__ 
}`` 	
publicbb 
overridebb 
boolbb 

Whitespacebb '
{cc 	
getdd 
{ee 
returnff 
trueff 
;ff 
}gg 
}hh 	
publicmm 
XsltArgumentListmm 
ArgListmm  '
{nn 	
getoo 
{pp 
returnqq 
argListqq 
;qq 
}rr 
}ss 	
}tt 
}uu á\
sD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\CryptoService.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public 

class 
CryptoService 
:  
ICryptoService! /
{ 
private 
static 
readonly 
SecureRandom  ,
Random- 3
=4 5
new6 9
SecureRandom: F
(F G
)G H
;H I
private 
const 
int 
SaltBitSize %
=& '
$num( +
;+ ,
private 
const 
int 

Iterations $
=% &
$num' ,
;, -
private 
const 
int 
NonceBitSize &
=' (
$num) ,
;, -
private 
const 
int 

KeyBitSize $
=% &
$num' *
;* +
private 
const 
int 

MacBitSize $
=% &
$num' *
;* +
public 
string 
Encrypt 
( 
string $
strToEncrypt% 1
,1 2
string3 9

passPhrase: D
)D E
{ 	
var 
	plainText 
= 
Encoding $
.$ %
UTF8% )
.) *
GetBytes* 2
(2 3
strToEncrypt3 ?
)? @
;@ A
var 
	generator 
= 
new &
Pkcs5S2ParametersGenerator  :
(: ;
); <
;< =
var 
salt 
= 
new 
byte 
[  
SaltBitSize  +
/, -
$num. /
]/ 0
;0 1
Random 
. 
	NextBytes 
( 
salt !
)! "
;" #
	generator 
. 
Init 
( "
PbeParametersGenerator &
.& ' 
Pkcs5PasswordToBytes' ;
(; <

passPhrase< F
.F G
ToCharArrayG R
(R S
)S T
)T U
,U V
salt   
,   

Iterations!! 
)!! 
;!! 
var## 
key## 
=## 
(## 
KeyParameter## #
)### $
	generator##$ -
.##- .(
GenerateDerivedMacParameters##. J
(##J K

KeyBitSize##K U
)##U V
;##V W
var%% 
nonSecretPayload%%  
=%%! "
new%%# &
byte%%' +
[%%+ ,
]%%, -
{%%. /
}%%0 1
;%%1 2
var&& 
payload&& 
=&& 
new&& 
byte&& "
[&&" #
salt&&# '
.&&' (
Length&&( .
]&&. /
;&&/ 0
Array'' 
.'' 
Copy'' 
('' 
nonSecretPayload'' '
,''' (
payload'') 0
,''0 1
nonSecretPayload''2 B
.''B C
Length''C I
)''I J
;''J K
Array(( 
.(( 
Copy(( 
((( 
salt(( 
,(( 
$num(( 
,(( 
payload((  '
,((' (
nonSecretPayload(() 9
.((9 :
Length((: @
,((@ A
salt((B F
.((F G
Length((G M
)((M N
;((N O
var** 
nonce** 
=** 
new** 
byte**  
[**  !
NonceBitSize**! -
/**. /
$num**0 1
]**1 2
;**2 3
Random++ 
.++ 
	NextBytes++ 
(++ 
nonce++ "
,++" #
$num++$ %
,++% &
nonce++' ,
.++, -
Length++- 3
)++3 4
;++4 5
var-- 
cipher-- 
=-- 
new-- 
GcmBlockCipher-- +
(--+ ,
new--, /
	AesEngine--0 9
(--9 :
)--: ;
)--; <
;--< =
var.. 

parameters.. 
=.. 
new..  
AeadParameters..! /
(../ 0
new// 
KeyParameter//  
(//  !
key//! $
.//$ %
GetKey//% +
(//+ ,
)//, -
)//- .
,//. /

MacBitSize//0 :
,//: ;
nonce//< A
,//A B
payload//C J
)//J K
;//K L
cipher00 
.00 
Init00 
(00 
true00 
,00 

parameters00 (
)00( )
;00) *
var22 

cipherText22 
=22 
new22  
byte22! %
[22% &
cipher22& ,
.22, -
GetOutputSize22- :
(22: ;
	plainText22; D
.22D E
Length22E K
)22K L
]22L M
;22M N
var33 
len33 
=33 
cipher33 
.33 
ProcessBytes33 )
(33) *
	plainText33* 3
,333 4
$num335 6
,336 7
	plainText338 A
.33A B
Length33B H
,33H I

cipherText33J T
,33T U
$num33V W
)33W X
;33X Y
cipher44 
.44 
DoFinal44 
(44 

cipherText44 %
,44% &
len44' *
)44* +
;44+ ,
using66 
var66 
combinedStream66 $
=66% &
new66' *
MemoryStream66+ 7
(667 8
)668 9
;669 :
using77 
var77 
binaryWriter77 "
=77# $
new77% (
BinaryWriter77) 5
(775 6
combinedStream776 D
)77D E
;77E F
binaryWriter88 
.88 
Write88 
(88 
payload88 &
)88& '
;88' (
binaryWriter99 
.99 
Write99 
(99 
nonce99 $
)99$ %
;99% &
binaryWriter:: 
.:: 
Write:: 
(:: 

cipherText:: )
)::) *
;::* +
return<< 
Convert<< 
.<< 
ToBase64String<< )
(<<) *
combinedStream<<* 8
.<<8 9
ToArray<<9 @
(<<@ A
)<<A B
)<<B C
;<<C D
}== 	
public?? 
string?? 
Decrypt?? 
(?? 
string?? $
strEncrypted??% 1
,??1 2
string??3 9

passPhrase??: D
)??D E
{@@ 	
varAA 

cipherTextAA 
=AA 
ConvertAA $
.AA$ %
FromBase64StringAA% 5
(AA5 6
strEncryptedAA6 B
)AAB C
;AAC D
varBB 
	generatorBB 
=BB 
newBB &
Pkcs5S2ParametersGeneratorBB  :
(BB: ;
)BB; <
;BB< =
varCC 
saltCC 
=CC 
newCC 
byteCC 
[CC  
SaltBitSizeCC  +
/CC, -
$numCC. /
]CC/ 0
;CC0 1
ArrayDD 
.DD 
CopyDD 
(DD 

cipherTextDD !
,DD! "
$numDD# $
,DD$ %
saltDD& *
,DD* +
$numDD, -
,DD- .
saltDD/ 3
.DD3 4
LengthDD4 :
)DD: ;
;DD; <
	generatorFF 
.FF 
InitFF 
(FF "
PbeParametersGeneratorGG &
.GG& ' 
Pkcs5PasswordToBytesGG' ;
(GG; <

passPhraseGG< F
.GGF G
ToCharArrayGGG R
(GGR S
)GGS T
)GGT U
,GGU V
saltHH 
,HH 

IterationsII 
)II 
;II 
varKK 
keyKK 
=KK 
(KK 
KeyParameterKK #
)KK# $
	generatorKK$ -
.KK- .(
GenerateDerivedMacParametersKK. J
(KKJ K

KeyBitSizeKKK U
)KKU V
;KKV W
usingMM 
varMM 
cipherStreamMM "
=MM# $
newMM% (
MemoryStreamMM) 5
(MM5 6

cipherTextMM6 @
)MM@ A
;MMA B
usingNN 
varNN 
cipherReaderNN "
=NN# $
newNN% (
BinaryReaderNN) 5
(NN5 6
cipherStreamNN6 B
)NNB C
;NNC D
varPP 
payloadPP 
=PP 
cipherReaderPP &
.PP& '
	ReadBytesPP' 0
(PP0 1
saltPP1 5
.PP5 6
LengthPP6 <
)PP< =
;PP= >
varQQ 
nonceQQ 
=QQ 
cipherReaderQQ $
.QQ$ %
	ReadBytesQQ% .
(QQ. /
NonceBitSizeQQ/ ;
/QQ< =
$numQQ> ?
)QQ? @
;QQ@ A
varSS 
cipherSS 
=SS 
newSS 
GcmBlockCipherSS +
(SS+ ,
newSS, /
	AesEngineSS0 9
(SS9 :
)SS: ;
)SS; <
;SS< =
varTT 

parametersTT 
=TT 
newTT  
AeadParametersTT! /
(TT/ 0
newUU 
KeyParameterUU  
(UU  !
keyUU! $
.UU$ %
GetKeyUU% +
(UU+ ,
)UU, -
)UU- .
,UU. /

MacBitSizeUU0 :
,UU: ;
nonceUU< A
,UUA B
payloadUUC J
)UUJ K
;UUK L
cipherVV 
.VV 
InitVV 
(VV 
falseVV 
,VV 

parametersVV )
)VV) *
;VV* +
varXX 
	readBytesXX 
=XX 
cipherReaderXX (
.XX( )
	ReadBytesXX) 2
(XX2 3
strEncryptedXX3 ?
.XX? @
LengthXX@ F
-XXG H
saltXXI M
.XXM N
LengthXXN T
-XXU V
nonceXXW \
.XX\ ]
LengthXX] c
)XXc d
;XXd e
varYY 
plainTextBytesYY 
=YY  
newYY! $
byteYY% )
[YY) *
cipherYY* 0
.YY0 1
GetOutputSizeYY1 >
(YY> ?
	readBytesYY? H
.YYH I
LengthYYI O
)YYO P
]YYP Q
;YYQ R
var[[ 
len[[ 
=[[ 
cipher[[ 
.[[ 
ProcessBytes[[ )
([[) *
	readBytes[[* 3
,[[3 4
$num[[5 6
,[[6 7
	readBytes[[8 A
.[[A B
Length[[B H
,[[H I
plainTextBytes[[J X
,[[X Y
$num[[Z [
)[[[ \
;[[\ ]
cipher\\ 
.\\ 
DoFinal\\ 
(\\ 
plainTextBytes\\ )
,\\) *
len\\+ .
)\\. /
;\\/ 0
return^^ 
Encoding^^ 
.^^ 
UTF8^^  
.^^  !
	GetString^^! *
(^^* +
plainTextBytes^^+ 9
)^^9 :
;^^: ;
}__ 	
}`` 
publicbb 

	interfacebb 
ICryptoServicebb #
{cc 
stringdd 
Encryptdd 
(dd 
stringdd 
strToEncryptdd *
,dd* +
stringdd, 2

passPhrasedd3 =
)dd= >
;dd> ?
stringee 
Decryptee 
(ee 
stringee 
strEncryptedee *
,ee* +
stringee, 2

passPhraseee3 =
)ee= >
;ee> ?
}ff 
}hh Ö
sD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\BackupService.cs
	namespace		 	
OnlineBankingApp		
 
.		 
Services		 #
{

 
public 

class 
BackupService 
{ 
public 
async 
Task 
BackupDB "
(" #
string# )

backupname* 4
)4 5
{ 	
var 
regex 
= 
new 
Regex !
(! "
$str" 3
)3 4
;4 5
if 
( 
! 
regex 
. 
IsMatch 
( 

backupname )
)) *
)* +
return, 2
;2 3
string 
source 
= 
Environment '
.' (
CurrentDirectory( 8
+9 :
$str; L
;L M
string 
destination 
=  
Environment! ,
., -
CurrentDirectory- =
+> ?
$str@ M
+N O

backupnameP Z
;Z [
await 
FileCopyAsync 
(  
source  &
,& '
destination( 3
)3 4
;4 5
} 	
public 
async 
Task 
FileCopyAsync '
(' (
string( .
sourceFileName/ =
,= >
string? E
destinationFileNameF Y
,Y Z
int[ ^

bufferSize_ i
=j k
$numl r
,r s
CancellationToken	t Ö
cancellationToken
Ü ó
=
ò ô
default
ö °
(
° ¢
CancellationToken
¢ ≥
)
≥ ¥
)
¥ µ
{ 	
using 
( 
var 

sourceFile !
=" #
File$ (
.( )
OpenRead) 1
(1 2
sourceFileName2 @
)@ A
)A B
{ 
using 
( 
var 
destinationFile *
=+ ,
File- 1
.1 2
	OpenWrite2 ;
(; <
destinationFileName< O
)O P
)P Q
{ 
await 

sourceFile $
.$ %
CopyToAsync% 0
(0 1
destinationFile1 @
,@ A

bufferSizeB L
,L M
cancellationTokenN _
)_ `
;` a
} 
}   
}!! 	
}## 
}%% ú
~D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Services\AuthMessageSenderOptions.cs
	namespace 	
OnlineBankingApp
 
. 
Services #
{ 
public 

class $
AuthMessageSenderOptions )
{ 
public 
string 
SendGridUser "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
SendGridKey !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 Å
dD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Program.cs
	namespace		 	
OnlineBankingApp		
 
{

 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
var 
host 
= 
CreateHostBuilder (
(( )
args) -
)- .
.. /
Build/ 4
(4 5
)5 6
;6 7
using 
( 
var 
scope 
= 
host #
.# $
Services$ ,
., -
CreateScope- 8
(8 9
)9 :
): ;
{ 
var 
services 
= 
scope $
.$ %
ServiceProvider% 4
;4 5
try 
{ 
SeedData 
. 

Initialize '
(' (
services( 0
)0 1
.1 2
Wait2 6
(6 7
)7 8
;8 9
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
var 
logger 
=  
services! )
.) *
GetRequiredService* <
<< =
ILogger= D
<D E
ProgramE L
>L M
>M N
(N O
)O P
;P Q
logger 
. 
LogError #
(# $
ex$ &
,& '
$str( K
)K L
;L M
} 
} 
host   
.   
Run   
(   
)   
;   
}!! 	
public## 
static## 
IHostBuilder## "
CreateHostBuilder### 4
(##4 5
string##5 ;
[##; <
]##< =
args##> B
)##B C
=>##D F
Host$$ 
.$$  
CreateDefaultBuilder$$ %
($$% &
args$$& *
)$$* +
.%% $
ConfigureWebHostDefaults%% )
(%%) *

webBuilder%%* 4
=>%%5 7
{&& 

webBuilder'' 
.'' 

UseKestrel'' )
('') *
kestrelOptions''* 8
=>''9 ;
{(( 
kestrelOptions)) &
.))& '"
ConfigureHttpsDefaults))' =
())= >
httpsOptions))> J
=>))K M
{** 
httpsOptions++ (
.++( )
SslProtocols++) 5
=++6 7
SslProtocols++8 D
.++D E
Tls12++E J
|++K L
SslProtocols++M Y
.++Y Z
Tls13++Z _
;++_ `
},, 
),, 
;,, 
}-- 
)-- 
;-- 

webBuilder.. 
... 

UseStartup.. )
<..) *
Startup..* 1
>..1 2
(..2 3
)..3 4
;..4 5
}// 
)// 
;// 
}00 
}11 ä
qD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Privacy.cshtml.cs
	namespace		 	
OnlineBankingApp		
 
.		 
Pages		  
{

 
public 

class 
PrivacyModel 
: 
	PageModel  )
{ 
private 
readonly 
ILogger  
<  !
PrivacyModel! -
>- .
_logger/ 6
;6 7
public 
PrivacyModel 
( 
ILogger #
<# $
PrivacyModel$ 0
>0 1
logger2 8
)8 9
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} Ä
oD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Index.cshtml.cs
	namespace		 	
OnlineBankingApp		
 
.		 
Pages		  
{

 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
ILogger  
<  !

IndexModel! +
>+ ,
_logger- 4
;4 5
public 

IndexModel 
( 
ILogger !
<! "

IndexModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} «
tD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Help\Index.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
Knowledgebase! .
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
public 
IList 
< 
	Knowledge 
> 
	Knowledge  )
{* +
get, /
;/ 0
set0 3
;3 4
}5 6
[ 	
BindProperty	 
( 
SupportsGet !
=" #
true$ (
)( )
]) *
public 
string 
SearchString "
{# $
get% (
;( )
set* -
;- .
}/ 0
private 
readonly !
IKnowledgebaseService .!
_knowledgebaseService/ D
;D E
public 

IndexModel 
( !
IKnowledgebaseService / 
knowledgebaseService0 D
)D E
{ 	!
_knowledgebaseService !
=" # 
knowledgebaseService$ 8
;8 9
} 	
public 
void 
OnGet 
( 
) 
{ 	
	Knowledge 
= 
new 
List  
<  !
	Knowledge! *
>* +
(+ ,
), -
;- .
if   
(   
!   
string   
.   
IsNullOrEmpty   %
(  % &
SearchString  & 2
)  2 3
)  3 4
{!! 
	Knowledge"" 
="" !
_knowledgebaseService"" 1
.""1 2
Search""2 8
(""8 9
SearchString""9 E
)""E F
;""F G
}## 
}$$ 	
}%% 
}&& Ä
}D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\FundTransfers\Index.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
FundTransfers! .
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 

IndexModel 
( 
OnlineBankingApp *
.* +
Data+ /
./ 0#
OnlineBankingAppContext0 G
contextH O
)O P
{ 	
_context 
= 
context 
; 
} 	
public 
IList 
< 
FundTransfer !
>! "
FundTransfer# /
{0 1
get2 5
;5 6
set6 9
;9 :
}; <
[ 	
BindProperty	 
( 
SupportsGet !
=" #
true$ (
)( )
]) *
public 
string 
SearchString "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
async 
Task 

OnGetAsync $
($ %
)% &
{ 	
var 
fundtransfer 
= 
from #
f$ %
in& (
_context) 1
.1 2
FundTransfer2 >
select 
f 
; 
if   
(   
!   
string   
.   
IsNullOrEmpty   %
(  % &
SearchString  & 2
)  2 3
)  3 4
{!! 
fundtransfer"" 
="" 
_context"" '
.""' (
FundTransfer""( 4
.""4 5
FromSqlInterpolated""5 H
(""H I
$"""I K
$str""K v
{""v w
$str""w z
+""{ |
SearchString	""} â
+
""ä ã
$str
""å è
}
""è ê
"
""ê ë
)
""ë í
;
""í ì
}&& 
FundTransfer(( 
=(( 
await((  
fundtransfer((! -
.((- .
ToListAsync((. 9
(((9 :
)((: ;
;((; <
})) 	
}** 
}++ ö 
|D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\FundTransfers\Edit.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
FundTransfers! .
{ 
public 

class 
	EditModel 
: 
	PageModel &
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
	EditModel 
( 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
contextG N
)N O
{ 	
_context 
= 
context 
; 
} 	
[ 	
BindProperty	 
] 
public 
FundTransfer 
FundTransfer (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
FundTransfer!! 
=!! 
await!!  
_context!!! )
.!!) *
FundTransfer!!* 6
.!!6 7
FirstOrDefaultAsync!!7 J
(!!J K
m!!K L
=>!!M O
m!!P Q
.!!Q R
ID!!R T
==!!U W
id!!X Z
)!!Z [
;!![ \
if## 
(## 
FundTransfer## 
==## 
null##  $
)##$ %
{$$ 
return%% 
NotFound%% 
(%%  
)%%  !
;%%! "
}&& 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
OnPostAsync,,) 4
(,,4 5
),,5 6
{-- 	
if.. 
(.. 
!.. 

ModelState.. 
... 
IsValid.. #
)..# $
{// 
return00 
Page00 
(00 
)00 
;00 
}11 
_context33 
.33 
Attach33 
(33 
FundTransfer33 (
)33( )
.33) *
State33* /
=330 1
EntityState332 =
.33= >
Modified33> F
;33F G
try55 
{66 
await77 
_context77 
.77 
SaveChangesAsync77 /
(77/ 0
)770 1
;771 2
}88 
catch99 
(99 (
DbUpdateConcurrencyException99 /
)99/ 0
{:: 
if;; 
(;; 
!;; 
FundTransferExists;; '
(;;' (
FundTransfer;;( 4
.;;4 5
ID;;5 7
);;7 8
);;8 9
{<< 
return== 
NotFound== #
(==# $
)==$ %
;==% &
}>> 
else?? 
{@@ 
throwAA 
;AA 
}BB 
}CC 
returnEE 
RedirectToPageEE !
(EE! "
$strEE" +
)EE+ ,
;EE, -
}FF 	
privateHH 
boolHH 
FundTransferExistsHH '
(HH' (
intHH( +
idHH, .
)HH. /
{II 	
returnJJ 
_contextJJ 
.JJ 
FundTransferJJ (
.JJ( )
AnyJJ) ,
(JJ, -
eJJ- .
=>JJ/ 1
eJJ2 3
.JJ3 4
IDJJ4 6
==JJ7 9
idJJ: <
)JJ< =
;JJ= >
}KK 	
}LL 
}MM Ö
D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\FundTransfers\Details.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
FundTransfers! .
{ 
public 

class 
DetailsModel 
: 
	PageModel  )
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
DetailsModel 
( 
OnlineBankingApp ,
., -
Data- 1
.1 2#
OnlineBankingAppContext2 I
contextJ Q
)Q R
{ 	
_context 
= 
context 
; 
} 	
public 
FundTransfer 
FundTransfer (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
FundTransfer 
= 
await  
_context! )
.) *
FundTransfer* 6
.6 7
FirstOrDefaultAsync7 J
(J K
mK L
=>M O
mP Q
.Q R
IDR T
==U W
idX Z
)Z [
;[ \
if!! 
(!! 
FundTransfer!! 
==!! 
null!!  $
)!!$ %
{"" 
return## 
NotFound## 
(##  
)##  !
;##! "
}$$ 
return%% 
Page%% 
(%% 
)%% 
;%% 
}&& 	
}'' 
}(( á
~D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\FundTransfers\Delete.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
FundTransfers! .
{ 
public 

class 
DeleteModel 
: 
	PageModel (
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
DeleteModel 
( 
OnlineBankingApp +
.+ ,
Data, 0
.0 1#
OnlineBankingAppContext1 H
contextI P
)P Q
{ 	
_context 
= 
context 
; 
} 	
[ 	
BindProperty	 
] 
public 
FundTransfer 
FundTransfer (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
FundTransfer   
=   
await    
_context  ! )
.  ) *
FundTransfer  * 6
.  6 7
FirstOrDefaultAsync  7 J
(  J K
m  K L
=>  M O
m  P Q
.  Q R
ID  R T
==  U W
id  X Z
)  Z [
;  [ \
if"" 
("" 
FundTransfer"" 
=="" 
null""  $
)""$ %
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
return&& 
Page&& 
(&& 
)&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
OnPostAsync))) 4
())4 5
int))5 8
?))8 9
id)): <
)))< =
{** 	
if++ 
(++ 
id++ 
==++ 
null++ 
)++ 
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
FundTransfer00 
=00 
await00  
_context00! )
.00) *
FundTransfer00* 6
.006 7
	FindAsync007 @
(00@ A
id00A C
)00C D
;00D E
if22 
(22 
FundTransfer22 
!=22 
null22  $
)22$ %
{33 
_context44 
.44 
FundTransfer44 %
.44% &
Remove44& ,
(44, -
FundTransfer44- 9
)449 :
;44: ;
await55 
_context55 
.55 
SaveChangesAsync55 /
(55/ 0
)550 1
;551 2
}66 
return88 
RedirectToPage88 !
(88! "
$str88" +
)88+ ,
;88, -
}99 	
}:: 
};; æ
~D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\FundTransfers\Create.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
FundTransfers! .
{ 
[ 
	Authorize 
( 
Policy 
= 
nameof 
( 
PrincipalPermission 2
.2 3!
CanCreateFundTransfer3 H
)H I
)I J
]J K
public 

class 
CreateModel 
: 
AccountPageModel /
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
CreateModel 
( 
OnlineBankingApp +
.+ ,
Data, 0
.0 1#
OnlineBankingAppContext1 H
contextI P
)P Q
{ 	
_context 
= 
context 
; 
} 	
public 
IActionResult 
OnGet "
(" #
)# $
{ 	(
PopulateAccountsDropDownList (
(( )
_context) 1
)1 2
;2 3
return 
Page 
( 
) 
; 
} 	
[   	
BindProperty  	 
]   
public!! 
FundTransfer!! 
FundTransfer!! (
{!!) *
get!!+ .
;!!. /
set!!0 3
;!!3 4
}!!5 6
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
OnPostAsync$$) 4
($$4 5
)$$5 6
{%% 	
if&& 
(&& 
!&& 

ModelState&& 
.&& 
IsValid&& #
)&&# $
{'' 
return(( 
Page(( 
((( 
)(( 
;(( 
})) 
var++ 
emptyFundTransfer++ !
=++" #
new++$ '
FundTransfer++( 4
(++4 5
)++5 6
;++6 7
if-- 
(-- 
await-- 
TryUpdateModelAsync-- )
<--) *
FundTransfer--* 6
>--6 7
(--7 8
emptyFundTransfer.. "
,.." #
$str// 
,//  
f00 
=>00 
f00 
.00 
ID00 
,00 
f00 
=>00  
f00! "
.00" #
AccountFrom00# .
,00. /
f000 1
=>002 4
f005 6
.006 7
	AccountTo007 @
,00@ A
f00B C
=>00D F
f00G H
.00H I
Amount00I O
,00O P
f00Q R
=>00R T
f00U V
.00V W
TransactionDate00W f
,00f g
f00h i
=>00j l
f00m n
.00n o
Note00o s
)00s t
)00t u
{11 
_context22 
.22 
FundTransfer22 %
.22% &
Add22& )
(22) *
emptyFundTransfer22* ;
)22; <
;22< =
await33 
_context33 
.33 
SaveChangesAsync33 /
(33/ 0
)330 1
;331 2
return44 
RedirectToPage44 %
(44% &
$str44& /
)44/ 0
;440 1
}55 (
PopulateAccountsDropDownList77 (
(77( )
_context77) 1
)771 2
;772 3
return88 
Page88 
(88 
)88 
;88 
}:: 	
};; 
}<< í
àD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\FundTransfers\AccountPageModel.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
FundTransfers! .
{ 
[ 
	Authorize 
] 
public 

class 
AccountPageModel !
:" #
	PageModel$ -
{ 
public 

SelectList 
	AccountSL #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
void (
PopulateAccountsDropDownList 0
(0 1#
OnlineBankingAppContext1 H
_contextI Q
,Q R
object 
selectedAccount "
=# $
null% )
)) *
{ 	
var 
accountsQuery 
= 
from  $
a% &
in' )
_context* 2
.2 3
Account3 :
orderby# *
a+ ,
., -
ID- /
select# )
a* +
;+ ,
	AccountSL 
= 
new 

SelectList &
(& '
accountsQuery' 4
.4 5
AsNoTracking5 A
(A B
)B C
,C D
$str 
, 
$str $
,$ %
selectedAccount& 5
)5 6
;6 7
}   	
}!! 
}"" ˛
oD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Error.cshtml.cs
	namespace

 	
OnlineBankingApp


 
.

 
Pages

  
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
[ "
IgnoreAntiforgeryToken 
] 
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
}   ß
wD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Backups\Index.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
Backups! (
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 

IndexModel 
( 
OnlineBankingApp *
.* +
Data+ /
./ 0#
OnlineBankingAppContext0 G
contextH O
)O P
{ 	
_context 
= 
context 
; 
} 	
public 
IList 
< 
Backup 
> 
Backup #
{$ %
get& )
;) *
set* -
;- .
}/ 0
public 
async 
Task 

OnGetAsync $
($ %
)% &
{ 	
Backup 
= 
await 
_context #
.# $
Backup$ *
.* +
ToListAsync+ 6
(6 7
)7 8
;8 9
} 	
} 
} “
vD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Backups\Edit.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
Backups! (
{ 
public 

class 
	EditModel 
: 
	PageModel &
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
	EditModel 
( 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
contextG N
)N O
{ 	
_context 
= 
context 
; 
} 	
[ 	
BindProperty	 
] 
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
Backup!! 
=!! 
await!! 
_context!! #
.!!# $
Backup!!$ *
.!!* +
FirstOrDefaultAsync!!+ >
(!!> ?
m!!? @
=>!!A C
m!!D E
.!!E F
ID!!F H
==!!I K
id!!L N
)!!N O
;!!O P
if## 
(## 
Backup## 
==## 
null## 
)## 
{$$ 
return%% 
NotFound%% 
(%%  
)%%  !
;%%! "
}&& 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
OnPostAsync,,) 4
(,,4 5
),,5 6
{-- 	
if.. 
(.. 
!.. 

ModelState.. 
... 
IsValid.. #
)..# $
{// 
return00 
Page00 
(00 
)00 
;00 
}11 
_context33 
.33 
Attach33 
(33 
Backup33 "
)33" #
.33# $
State33$ )
=33* +
EntityState33, 7
.337 8
Modified338 @
;33@ A
try55 
{66 
await77 
_context77 
.77 
SaveChangesAsync77 /
(77/ 0
)770 1
;771 2
}88 
catch99 
(99 (
DbUpdateConcurrencyException99 /
)99/ 0
{:: 
if;; 
(;; 
!;; 
BackupExists;; !
(;;! "
Backup;;" (
.;;( )
ID;;) +
);;+ ,
);;, -
{<< 
return== 
NotFound== #
(==# $
)==$ %
;==% &
}>> 
else?? 
{@@ 
throwAA 
;AA 
}BB 
}CC 
returnEE 
RedirectToPageEE !
(EE! "
$strEE" +
)EE+ ,
;EE, -
}FF 	
privateHH 
boolHH 
BackupExistsHH !
(HH! "
intHH" %
idHH& (
)HH( )
{II 	
returnJJ 
_contextJJ 
.JJ 
BackupJJ "
.JJ" #
AnyJJ# &
(JJ& '
eJJ' (
=>JJ) +
eJJ, -
.JJ- .
IDJJ. 0
==JJ1 3
idJJ4 6
)JJ6 7
;JJ7 8
}KK 	
}LL 
}MM €
yD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Backups\Details.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
Backups! (
{ 
public 

class 
DetailsModel 
: 
	PageModel  )
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
DetailsModel 
( 
OnlineBankingApp ,
., -
Data- 1
.1 2#
OnlineBankingAppContext2 I
contextJ Q
)Q R
{ 	
_context 
= 
context 
; 
} 	
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
Backup 
= 
await 
_context #
.# $
Backup$ *
.* +
FirstOrDefaultAsync+ >
(> ?
m? @
=>A C
mD E
.E F
IDF H
==I K
idL N
)N O
;O P
if!! 
(!! 
Backup!! 
==!! 
null!! 
)!! 
{"" 
return## 
NotFound## 
(##  
)##  !
;##! "
}$$ 
return%% 
Page%% 
(%% 
)%% 
;%% 
}&& 	
}'' 
}(( ø
xD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Backups\Delete.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
Backups! (
{ 
public 

class 
DeleteModel 
: 
	PageModel (
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
DeleteModel 
( 
OnlineBankingApp +
.+ ,
Data, 0
.0 1#
OnlineBankingAppContext1 H
contextI P
)P Q
{ 	
_context 
= 
context 
; 
} 	
[ 	
BindProperty	 
] 
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
Backup   
=   
await   
_context   #
.  # $
Backup  $ *
.  * +
FirstOrDefaultAsync  + >
(  > ?
m  ? @
=>  A C
m  D E
.  E F
ID  F H
==  I K
id  L N
)  N O
;  O P
if"" 
("" 
Backup"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
return&& 
Page&& 
(&& 
)&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
OnPostAsync))) 4
())4 5
int))5 8
?))8 9
id)): <
)))< =
{** 	
if++ 
(++ 
id++ 
==++ 
null++ 
)++ 
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
Backup00 
=00 
await00 
_context00 #
.00# $
Backup00$ *
.00* +
	FindAsync00+ 4
(004 5
id005 7
)007 8
;008 9
if22 
(22 
Backup22 
!=22 
null22 
)22 
{33 
_context44 
.44 
Backup44 
.44  
Remove44  &
(44& '
Backup44' -
)44- .
;44. /
await55 
_context55 
.55 
SaveChangesAsync55 /
(55/ 0
)550 1
;551 2
}66 
return88 
RedirectToPage88 !
(88! "
$str88" +
)88+ ,
;88, -
}99 	
}:: 
};; Û
xD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Pages\Backups\Create.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Pages  
.  !
Backups! (
{ 
public 

class 
CreateModel 
: 
	PageModel (
{ 
private 
readonly 
OnlineBankingApp )
.) *
Data* .
.. /#
OnlineBankingAppContext/ F
_contextG O
;O P
public 
CreateModel 
( 
OnlineBankingApp +
.+ ,
Data, 0
.0 1#
OnlineBankingAppContext1 H
contextI P
)P Q
{ 	
_context 
= 
context 
; 
} 	
public 
IActionResult 
OnGet "
(" #
)# $
{ 	
return 
Page 
( 
) 
; 
} 	
[ 	
BindProperty	 
] 
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
public!! 
async!! 
Task!! 
<!! 
IActionResult!! '
>!!' (
OnPostAsync!!) 4
(!!4 5
)!!5 6
{"" 	
if## 
(## 
!## 

ModelState## 
.## 
IsValid## #
)### $
{$$ 
return%% 
Page%% 
(%% 
)%% 
;%% 
}&& 
var(( 
emptyBackup(( 
=(( 
new(( !
Backup((" (
(((( )
)(() *
;((* +
if** 
(** 
await** 
TryUpdateModelAsync** )
<**) *
Backup*** 0
>**0 1
(**1 2
emptyBackup++ 
,++ 
$str,, 
,,, 
b-- 
=>-- 
b-- 
.-- 
Name-- 
,-- 
b-- 
=>-- !
b--" #
.--# $

BackupDate--$ .
)--. /
)--/ 0
{.. 
emptyBackup// 
.// 

BackupDate// &
=//' (
DateTime//) 1
.//1 2
Now//2 5
;//5 6
_context00 
.00 
Backup00 
.00  
Add00  #
(00# $
emptyBackup00$ /
)00/ 0
;000 1
await11 
_context11 
.11 
SaveChangesAsync11 /
(11/ 0
)110 1
;111 2
var33 
service33 
=33 
new33 !
BackupService33" /
(33/ 0
)330 1
;331 2
await44 
service44 
.44 
BackupDB44 &
(44& '
emptyBackup44' 2
.442 3
Name443 7
)447 8
;448 9
return66 
RedirectToPage66 %
(66% &
$str66& /
)66/ 0
;660 1
}77 
return99 
Page99 
(99 
)99 
;99 
};; 	
}<< 
}== ÜD
lD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\SeedData.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public 

static 
class 
SeedData  
{ 
public 
static 
async 
Task  

Initialize! +
(+ ,
IServiceProvider, <
serviceProvider= L
)L M
{ 	
var 
userManager 
= 
serviceProvider -
.- .

GetService. 8
<8 9
UserManager9 D
<D E
CustomerE M
>M N
>N O
(O P
)P Q
;Q R
var 
roleManager 
= 
serviceProvider -
.- .

GetService. 8
<8 9
RoleManager9 D
<D E
IdentityRoleE Q
>Q R
>R S
(S T
)T U
;U V
if 
( 
! 
await 
roleManager "
." #
RoleExistsAsync# 2
(2 3
Role3 7
.7 8
ActiveCustomer8 F
)F G
)G H
{ 
await 
roleManager !
.! "
CreateAsync" -
(- .
new. 1
IdentityRole2 >
(> ?
Role? C
.C D
ActiveCustomerD R
)R S
)S T
;T U
} 
if 
( 
! 
await 
roleManager "
." #
RoleExistsAsync# 2
(2 3
Role3 7
.7 8
PendingCustomer8 G
)G H
)H I
{ 
await 
roleManager !
.! "
CreateAsync" -
(- .
new. 1
IdentityRole2 >
(> ?
Role? C
.C D
PendingCustomerD S
)S T
)T U
;U V
} 
if 
( 
! 
await 
roleManager "
." #
RoleExistsAsync# 2
(2 3
Role3 7
.7 8
SuspendedCustomer8 I
)I J
)J K
{ 
await 
roleManager !
.! "
CreateAsync" -
(- .
new. 1
IdentityRole2 >
(> ?
Role? C
.C D
SuspendedCustomerD U
)U V
)V W
;W X
} 
var!! 
user1!! 
=!! 
await!! 
userManager!! )
.!!) *
FindByNameAsync!!* 9
(!!9 :
$str!!: X
)!!X Y
;!!Y Z
if"" 
("" 
user1"" 
=="" 
null"" 
)"" 
{## 
user1$$ 
=$$ 
new$$ 
Customer$$ $
{%% 
	FirstName&& 
=&& 
$str&&  )
,&&) *

MiddleName'' 
=''  
$str''! (
,''( )
LastName(( 
=(( 
$str(( '
,((' (
DateOfBirth)) 
=))  !
DateTime))" *
.))* +
Parse))+ 0
())0 1
$str))1 =
)))= >
,))> ?
UserName** 
=** 
$str** =
,**= >
Email++ 
=++ 
$str++ :
,++: ;
Accounts,, 
=,, 
new,, "
List,,# '
<,,' (
Account,,( /
>,,/ 0
{,,0 1
new-- 
Account-- #
{--$ %
Name..  $
=..% &
$str..' 0
,..0 1
AccountType//  +
=//, -
AccountType//. 9
.//9 :
Savings//: A
,//A B
Balance00  '
=00( )
$num00* 2
}11 
,11 
new22 
Account22 #
{22$ %
Name33  $
=33% &
$str33' 1
,331 2
AccountType44  +
=44, -
AccountType44. 9
.449 :
Checking44: B
,44B C
Balance55  '
=55( )
$num55* 2
}66 
}77 
,77 
FundTransfers88 !
=88" #
new88$ '
List88( ,
<88, -
FundTransfer88- 9
>889 :
{88: ;
new99 
FundTransfer99 (
{99) *
AccountFrom::  +
=::, -
$num::. /
,::/ 0
	AccountTo;;  )
=;;* +
$num;;, -
,;;- .
Amount<<  &
=<<' (
$num<<) 0
,<<0 1
TransactionDate==  /
===0 1
DateTime==2 :
.==: ;
Parse==; @
(==@ A
$str==A M
)==M N
,==N O
Note>>  $
=>>% &
$str>>' B
}?? 
}@@ 
,@@ 
}AA 
;AA 
user1BB 
.BB 
PasswordHashBB "
=BB# $
userManagerBB% 0
.BB0 1
PasswordHasherBB1 ?
.BB? @
HashPasswordBB@ L
(BBL M
user1BBM R
,BBR S
$strBBS e
)BBe f
;BBf g
awaitDD 
userManagerDD !
.DD! "
CreateAsyncDD" -
(DD- .
user1DD. 3
)DD3 4
;DD4 5
awaitEE 
userManagerEE !
.EE! "
AddToRoleAsyncEE" 0
(EE0 1
user1EE1 6
,EE6 7
RoleEE7 ;
.EE; <
ActiveCustomerEE< J
)EEJ K
;EEK L
}FF 
ifHH 
(HH 
user1HH 
==HH 
nullHH 
)HH 
{II 
throwJJ 
newJJ 
	ExceptionJJ #
(JJ# $
$strJJ$ Q
)JJQ R
;JJR S
}KK 
varMM 
user2MM 
=MM 
awaitMM 
userManagerMM )
.MM) *
FindByNameAsyncMM* 9
(MM9 :
$strMM: Q
)MMQ R
;MMR S
ifNN 
(NN 
user2NN 
==NN 
nullNN 
)NN 
{OO 
user2PP 
=PP 
newPP 
CustomerPP $
{QQ 
	FirstNameRR !
=RR" #
$strRR$ )
,RR) *

MiddleNameSS "
=SS# $
$strSS% -
,SS- .
LastNameTT  
=TT! "
$strTT# -
,TT- .
DateOfBirthUU #
=UU$ %
DateTimeUU& .
.UU. /
ParseUU/ 4
(UU4 5
$strUU5 A
)UUA B
,UUB C
EmailVV 
=VV 
$strVV  7
,VV7 8
UserNameWW  
=WW! "
$strWW# :
,WW: ;
AccountsXX  
=XX! "
newXX# &
ListXX' +
<XX+ ,
AccountXX, 3
>XX3 4
{XX4 5
newYY 
AccountYY  '
{YY( )
NameZZ$ (
=ZZ) *
$strZZ+ 4
,ZZ4 5
AccountType[[$ /
=[[0 1
AccountType[[2 =
.[[= >
Savings[[> E
,[[E F
Balance\\$ +
=\\, -
$num\\. 7
}]]  !
,]]" #
new^^ 
Account^^  '
{^^( )
Name__$ (
=__) *
$str__+ 5
,__5 6
AccountType``$ /
=``0 1
AccountType``2 =
.``= >
Checking``> F
,``F G
Balanceaa$ +
=aa, -
$numaa. 6
}bb  !
}cc 
,cc 
}dd 
;dd 
user2ee 
.ee 
PasswordHashee "
=ee# $
userManageree% 0
.ee0 1
PasswordHasheree1 ?
.ee? @
HashPasswordee@ L
(eeL M
user2eeM R
,eeR S
$streeS e
)eee f
;eef g
awaitff 
userManagerff !
.ff! "
CreateAsyncff" -
(ff- .
user2ff. 3
)ff3 4
;ff4 5
awaitgg 
userManagergg !
.gg! "
AddToRoleAsyncgg" 0
(gg0 1
user1gg1 6
,gg6 7
Rolegg7 ;
.gg; <
PendingCustomergg< K
)ggK L
;ggL M
}hh 
ifjj 
(jj 
user2jj 
==jj 
nulljj 
)jj 
{kk 
throwll 
newll 
	Exceptionll #
(ll# $
$strll$ Q
)llQ R
;llR S
}mm 
}oo 	
}pp 
}qq À
hD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\Role.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public 

class 
Role 
{ 
public 
const 
string 
Customer $
=% &
$str' 1
;1 2
public 
const 
string 
ActiveCustomer *
=+ ,
$str- =
;= >
public 
const 
string 
PendingCustomer +
=, -
$str. ?
;? @
public		 
const		 
string		 
SuspendedCustomer		 -
=		. /
$str		0 C
;		C D
}

 
} ã
{D:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\ReputableEmailAttribute.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public 

class #
ReputableEmailAttribute (
:) *
ValidationAttribute+ >
{ 
public		 
string		 
Email		 
{		 
get		 !
;		! "
}		# $
public 
string 
GetErrorMessage %
(% &
)& '
=>( *
$" 
$str 2
"2 3
;3 4
	protected 
override 
ValidationResult +
IsValid, 3
(3 4
object4 :
value; @
,@ A
ValidationContext 
validationContext /
)/ 0
{ 	
string 
email 
= 
value  
.  !
ToString! )
() *
)* +
;+ ,
string 
tld 
= 
email 
. 
	Substring (
(( )
email) .
.. /
LastIndexOf/ :
(: ;
$char; >
)> ?
+@ A
$numB C
)C D
;D E
string 
[ 
] 
	shadyTlds 
=  
{! "
$str# ,
,, -
$str. 3
,3 4
$str5 >
,> ?
$str@ D
,D E
$strF L
,L M
$strN U
,U V
$strW \
,\ ]
$str^ d
,d e
$strf m
,m n
$stro t
,t u
$strv ~
,~ 
$str
Ä â
,
â ä
$str
ã ê
,
ê ë
$str
í ô
,
ô ö
$str
õ ß
,
ß ®
$str
© ≤
,
≤ ≥
$str
¥ π
,
π ∫
$str
ª √
,
√ ƒ
$str
≈ –
,
– —
$str
“ ◊
,
◊ ÿ
$str
Ÿ ﬁ
,
ﬁ ﬂ
$str
‡ Â
,
Â Ê
$str
Á Ï
}
Ì Ó
;
Ó Ô
if 
( 
	shadyTlds 
. 
Any 
( 
tld  
.  !
Contains! )
)) *
)* +
{ 
return 
new 
ValidationResult +
(+ ,
GetErrorMessage, ;
(; <
)< =
)= >
;> ?
} 
return 
ValidationResult #
.# $
Success$ +
;+ ,
} 	
} 
} ’
wD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\PrincipalPermission.cs
	namespace 	
OnlineBankingApp
 
. 
Authorization (
{) *
public 
static 
class 
PrincipalPermission (
{) *
public

 
static

	 
List

 
<

 
Func

 
<

 '
AuthorizationHandlerContext

 5
,

5 6
bool

7 ;
>

< =
>

= >
Criteria 

= 
[ 	!
CanCreateFundTransfer !
,! "
CanViewFundTransfer 
] 
; 
public 
static	 
bool !
CanCreateFundTransfer *
(* +
this+ /'
AuthorizationHandlerContext0 K
ctxL O
)O P
{ 
return 	
ctx
 
. 
User 
. 
IsInRole 
( 
Role  
.  !
ActiveCustomer! /
./ 0
ToString0 8
(8 9
)9 :
): ;
;; <
} 
public 
static	 
bool 
CanViewFundTransfer (
(( )
this) -'
AuthorizationHandlerContext. I
ctxJ M
)M N
{ 
return 	
ctx
 
. 
User 
. 
IsInRole 
( 
Role  
.  !
Customer! )
.) *
ToString* 2
(2 3
)3 4
)4 5
;5 6
} 
} 
} Ω
mD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\Knowledge.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public 

class 
	Knowledge 
{		 
public

 
int

 
ID

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Topic 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Tags 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Sensitivity !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} €
pD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\FundTransfer.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public		 

class		 
FundTransfer		 
:		 
IValidatableObject		  2
{

 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
Customer 
Customer  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
int 
AccountFrom 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Display	 
( 
Name 
= 
$str $
)$ %
]% &
public 
int 
	AccountTo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
public 
DateTime 
TransactionDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
DataType	 
( 
DataType 
. 
MultilineText (
)( )
]) *
public 
string 
Note 
{ 
get !
;! "
set# &
;& '
}( )
public!! 
IEnumerable!! 
<!! 
ValidationResult!! +
>!!+ ,
Validate!!- 5
(!!5 6
ValidationContext!!6 G
validationContext!!H Y
)!!Y Z
{"" 	
if## 
(## 
AccountFrom## 
==## 
	AccountTo## (
)##( )
{$$ 
yield%% 
return%% 
new%%  
ValidationResult%%! 1
(%%1 2
$str%%2 s
)%%s t
;%%t u
}&& 
}'' 	
})) 
}** Ö
lD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\Customer.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public		 

class		 
Customer		 
:		 
IdentityUser		 (
{

 
[ 	
PersonalData	 
] 
[ 	
RegularExpression	 
( 
$str /
)/ 0
]0 1
[ 	
Display	 
( 
Name 
= 
$str $
)$ %
]% &
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
[ 	
Required	 
] 
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
PersonalData	 
] 
[ 	
RegularExpression	 
( 
$str /
)/ 0
]0 1
[ 	
Display	 
( 
Name 
= 
$str %
)% &
]& '
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
[ 	
Required	 
] 
public 
string 

MiddleName  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
PersonalData	 
] 
[ 	
RegularExpression	 
( 
$str /
)/ 0
]0 1
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
[ 	
Required	 
] 
public   
string   
LastName   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
["" 	
PersonalData""	 
]"" 
[## 	
DisplayFormat##	 
(## 
DataFormatString## '
=##( )
$str##* 8
)##8 9
]##9 :
[$$ 	
DataType$$	 
($$ 
DataType$$ 
.$$ 
Date$$ 
)$$  
]$$  !
public%% 
DateTime%% 
DateOfBirth%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public33 
List33 
<33 
Account33 
>33 
Accounts33 %
{33& '
get33( +
;33+ ,
set33- 0
;330 1
}332 3
public55 
List55 
<55 
FundTransfer55  
>55  !
FundTransfers55" /
{550 1
get552 5
;555 6
set557 :
;55: ;
}55< =
}77 
}88 ı
jD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\Backup.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public 

class 
Backup 
{		 
public

 
int

 
ID

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Display	 
( 
Name 
= 
$str %
)% &
]& '
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
public 
DateTime 

BackupDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Œ
kD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Models\Account.cs
	namespace 	
OnlineBankingApp
 
. 
Models !
{ 
public 

class 
Account 
{ 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
Customer 
Customer  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
AccountType 
AccountType &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
Balance 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

enum 
AccountType 
{ 
Savings 
, 
Checking 
} 
} ∞†
ÑD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Migrations\20210513000758_InitialCreate.cs
	namespace 	
OnlineBankingApp
 
. 

Migrations %
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 <
,< =
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ F
,F G
	maxLengthH Q
:Q R
$numS V
,V W
nullableX `
:` a
trueb f
)f g
,g h
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB H
,H I
nullableJ R
:R S
trueT X
)X Y
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
	FirstName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; A
,A B
	maxLengthC L
:L M
$numN P
,P Q
nullableR Z
:Z [
false\ a
)a b
,b c

MiddleName 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< B
,B C
	maxLengthD M
:M N
$numO Q
,Q R
nullableS [
:[ \
false] b
)b c
,c d
LastName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: @
,@ A
	maxLengthB K
:K L
$numM O
,O P
nullableQ Y
:Y Z
false[ `
)` a
,a b
DateOfBirth   
=    !
table  " '
.  ' (
Column  ( .
<  . /
DateTime  / 7
>  7 8
(  8 9
type  9 =
:  = >
$str  ? E
,  E F
nullable  G O
:  O P
false  Q V
)  V W
,  W X
UserName!! 
=!! 
table!! $
.!!$ %
Column!!% +
<!!+ ,
string!!, 2
>!!2 3
(!!3 4
type!!4 8
:!!8 9
$str!!: @
,!!@ A
	maxLength!!B K
:!!K L
$num!!M P
,!!P Q
nullable!!R Z
:!!Z [
true!!\ `
)!!` a
,!!a b
NormalizedUserName"" &
=""' (
table"") .
."". /
Column""/ 5
<""5 6
string""6 <
>""< =
(""= >
type""> B
:""B C
$str""D J
,""J K
	maxLength""L U
:""U V
$num""W Z
,""Z [
nullable""\ d
:""d e
true""f j
)""j k
,""k l
Email## 
=## 
table## !
.##! "
Column##" (
<##( )
string##) /
>##/ 0
(##0 1
type##1 5
:##5 6
$str##7 =
,##= >
	maxLength##? H
:##H I
$num##J M
,##M N
nullable##O W
:##W X
true##Y ]
)##] ^
,##^ _
NormalizedEmail$$ #
=$$$ %
table$$& +
.$$+ ,
Column$$, 2
<$$2 3
string$$3 9
>$$9 :
($$: ;
type$$; ?
:$$? @
$str$$A G
,$$G H
	maxLength$$I R
:$$R S
$num$$T W
,$$W X
nullable$$Y a
:$$a b
true$$c g
)$$g h
,$$h i
EmailConfirmed%% "
=%%# $
table%%% *
.%%* +
Column%%+ 1
<%%1 2
bool%%2 6
>%%6 7
(%%7 8
type%%8 <
:%%< =
$str%%> G
,%%G H
nullable%%I Q
:%%Q R
false%%S X
)%%X Y
,%%Y Z
PasswordHash&&  
=&&! "
table&&# (
.&&( )
Column&&) /
<&&/ 0
string&&0 6
>&&6 7
(&&7 8
type&&8 <
:&&< =
$str&&> D
,&&D E
nullable&&F N
:&&N O
true&&P T
)&&T U
,&&U V
SecurityStamp'' !
=''" #
table''$ )
.'') *
Column''* 0
<''0 1
string''1 7
>''7 8
(''8 9
type''9 =
:''= >
$str''? E
,''E F
nullable''G O
:''O P
true''Q U
)''U V
,''V W
ConcurrencyStamp(( $
=((% &
table((' ,
.((, -
Column((- 3
<((3 4
string((4 :
>((: ;
(((; <
type((< @
:((@ A
$str((B H
,((H I
nullable((J R
:((R S
true((T X
)((X Y
,((Y Z
PhoneNumber)) 
=))  !
table))" '
.))' (
Column))( .
<)). /
string))/ 5
>))5 6
())6 7
type))7 ;
:)); <
$str))= C
,))C D
nullable))E M
:))M N
true))O S
)))S T
,))T U 
PhoneNumberConfirmed** (
=**) *
table**+ 0
.**0 1
Column**1 7
<**7 8
bool**8 <
>**< =
(**= >
type**> B
:**B C
$str**D M
,**M N
nullable**O W
:**W X
false**Y ^
)**^ _
,**_ `
TwoFactorEnabled++ $
=++% &
table++' ,
.++, -
Column++- 3
<++3 4
bool++4 8
>++8 9
(++9 :
type++: >
:++> ?
$str++@ I
,++I J
nullable++K S
:++S T
false++U Z
)++Z [
,++[ \

LockoutEnd,, 
=,,  
table,,! &
.,,& '
Column,,' -
<,,- .
DateTimeOffset,,. <
>,,< =
(,,= >
type,,> B
:,,B C
$str,,D J
,,,J K
nullable,,L T
:,,T U
true,,V Z
),,Z [
,,,[ \
LockoutEnabled-- "
=--# $
table--% *
.--* +
Column--+ 1
<--1 2
bool--2 6
>--6 7
(--7 8
type--8 <
:--< =
$str--> G
,--G H
nullable--I Q
:--Q R
false--S X
)--X Y
,--Y Z
AccessFailedCount.. %
=..& '
table..( -
...- .
Column... 4
<..4 5
int..5 8
>..8 9
(..9 :
type..: >
:..> ?
$str..@ I
,..I J
nullable..K S
:..S T
false..U Z
)..Z [
}// 
,// 
constraints00 
:00 
table00 "
=>00# %
{11 
table22 
.22 

PrimaryKey22 $
(22$ %
$str22% 5
,225 6
x227 8
=>229 ;
x22< =
.22= >
Id22> @
)22@ A
;22A B
}33 
)33 
;33 
migrationBuilder55 
.55 
CreateTable55 (
(55( )
name66 
:66 
$str66 
,66 
columns77 
:77 
table77 
=>77 !
new77" %
{88 
ID99 
=99 
table99 
.99 
Column99 %
<99% &
int99& )
>99) *
(99* +
type99+ /
:99/ 0
$str991 :
,99: ;
nullable99< D
:99D E
false99F K
)99K L
.:: 

Annotation:: #
(::# $
$str::$ :
,::: ;
true::< @
)::@ A
,::A B
Name;; 
=;; 
table;;  
.;;  !
Column;;! '
<;;' (
string;;( .
>;;. /
(;;/ 0
type;;0 4
:;;4 5
$str;;6 <
,;;< =
	maxLength;;> G
:;;G H
$num;;I K
,;;K L
nullable;;M U
:;;U V
true;;W [
);;[ \
,;;\ ]

BackupDate<< 
=<<  
table<<! &
.<<& '
Column<<' -
<<<- .
DateTime<<. 6
><<6 7
(<<7 8
type<<8 <
:<<< =
$str<<> D
,<<D E
nullable<<F N
:<<N O
false<<P U
)<<U V
}== 
,== 
constraints>> 
:>> 
table>> "
=>>># %
{?? 
table@@ 
.@@ 

PrimaryKey@@ $
(@@$ %
$str@@% 0
,@@0 1
x@@2 3
=>@@4 6
x@@7 8
.@@8 9
ID@@9 ;
)@@; <
;@@< =
}AA 
)AA 
;AA 
migrationBuilderCC 
.CC 
CreateTableCC (
(CC( )
nameDD 
:DD 
$strDD (
,DD( )
columnsEE 
:EE 
tableEE 
=>EE !
newEE" %
{FF 
IdGG 
=GG 
tableGG 
.GG 
ColumnGG %
<GG% &
intGG& )
>GG) *
(GG* +
typeGG+ /
:GG/ 0
$strGG1 :
,GG: ;
nullableGG< D
:GGD E
falseGGF K
)GGK L
.HH 

AnnotationHH #
(HH# $
$strHH$ :
,HH: ;
trueHH< @
)HH@ A
,HHA B
RoleIdII 
=II 
tableII "
.II" #
ColumnII# )
<II) *
stringII* 0
>II0 1
(II1 2
typeII2 6
:II6 7
$strII8 >
,II> ?
nullableII@ H
:IIH I
falseIIJ O
)IIO P
,IIP Q
	ClaimTypeJJ 
=JJ 
tableJJ  %
.JJ% &
ColumnJJ& ,
<JJ, -
stringJJ- 3
>JJ3 4
(JJ4 5
typeJJ5 9
:JJ9 :
$strJJ; A
,JJA B
nullableJJC K
:JJK L
trueJJM Q
)JJQ R
,JJR S

ClaimValueKK 
=KK  
tableKK! &
.KK& '
ColumnKK' -
<KK- .
stringKK. 4
>KK4 5
(KK5 6
typeKK6 :
:KK: ;
$strKK< B
,KKB C
nullableKKD L
:KKL M
trueKKN R
)KKR S
}LL 
,LL 
constraintsMM 
:MM 
tableMM "
=>MM# %
{NN 
tableOO 
.OO 

PrimaryKeyOO $
(OO$ %
$strOO% :
,OO: ;
xOO< =
=>OO> @
xOOA B
.OOB C
IdOOC E
)OOE F
;OOF G
tablePP 
.PP 

ForeignKeyPP $
(PP$ %
nameQQ 
:QQ 
$strQQ F
,QQF G
columnRR 
:RR 
xRR  !
=>RR" $
xRR% &
.RR& '
RoleIdRR' -
,RR- .
principalTableSS &
:SS& '
$strSS( 5
,SS5 6
principalColumnTT '
:TT' (
$strTT) -
,TT- .
onDeleteUU  
:UU  !
ReferentialActionUU" 3
.UU3 4
CascadeUU4 ;
)UU; <
;UU< =
}VV 
)VV 
;VV 
migrationBuilderXX 
.XX 
CreateTableXX (
(XX( )
nameYY 
:YY 
$strYY 
,YY  
columnsZZ 
:ZZ 
tableZZ 
=>ZZ !
newZZ" %
{[[ 
ID\\ 
=\\ 
table\\ 
.\\ 
Column\\ %
<\\% &
int\\& )
>\\) *
(\\* +
type\\+ /
:\\/ 0
$str\\1 :
,\\: ;
nullable\\< D
:\\D E
false\\F K
)\\K L
.]] 

Annotation]] #
(]]# $
$str]]$ :
,]]: ;
true]]< @
)]]@ A
,]]A B

CustomerId^^ 
=^^  
table^^! &
.^^& '
Column^^' -
<^^- .
string^^. 4
>^^4 5
(^^5 6
type^^6 :
:^^: ;
$str^^< B
,^^B C
nullable^^D L
:^^L M
true^^N R
)^^R S
,^^S T
Name__ 
=__ 
table__  
.__  !
Column__! '
<__' (
string__( .
>__. /
(__/ 0
type__0 4
:__4 5
$str__6 <
,__< =
	maxLength__> G
:__G H
$num__I K
,__K L
nullable__M U
:__U V
true__W [
)__[ \
,__\ ]
AccountType`` 
=``  !
table``" '
.``' (
Column``( .
<``. /
int``/ 2
>``2 3
(``3 4
type``4 8
:``8 9
$str``: C
,``C D
nullable``E M
:``M N
false``O T
)``T U
,``U V
Balanceaa 
=aa 
tableaa #
.aa# $
Columnaa$ *
<aa* +
decimalaa+ 2
>aa2 3
(aa3 4
typeaa4 8
:aa8 9
$straa: J
,aaJ K
nullableaaL T
:aaT U
falseaaV [
)aa[ \
}bb 
,bb 
constraintscc 
:cc 
tablecc "
=>cc# %
{dd 
tableee 
.ee 

PrimaryKeyee $
(ee$ %
$stree% 1
,ee1 2
xee3 4
=>ee5 7
xee8 9
.ee9 :
IDee: <
)ee< =
;ee= >
tableff 
.ff 

ForeignKeyff $
(ff$ %
namegg 
:gg 
$strgg A
,ggA B
columnhh 
:hh 
xhh  !
=>hh" $
xhh% &
.hh& '

CustomerIdhh' 1
,hh1 2
principalTableii &
:ii& '
$strii( 5
,ii5 6
principalColumnjj '
:jj' (
$strjj) -
,jj- .
onDeletekk  
:kk  !
ReferentialActionkk" 3
.kk3 4
Restrictkk4 <
)kk< =
;kk= >
}ll 
)ll 
;ll 
migrationBuildernn 
.nn 
CreateTablenn (
(nn( )
nameoo 
:oo 
$stroo (
,oo( )
columnspp 
:pp 
tablepp 
=>pp !
newpp" %
{qq 
Idrr 
=rr 
tablerr 
.rr 
Columnrr %
<rr% &
intrr& )
>rr) *
(rr* +
typerr+ /
:rr/ 0
$strrr1 :
,rr: ;
nullablerr< D
:rrD E
falserrF K
)rrK L
.ss 

Annotationss #
(ss# $
$strss$ :
,ss: ;
truess< @
)ss@ A
,ssA B
UserIdtt 
=tt 
tablett "
.tt" #
Columntt# )
<tt) *
stringtt* 0
>tt0 1
(tt1 2
typett2 6
:tt6 7
$strtt8 >
,tt> ?
nullablett@ H
:ttH I
falsettJ O
)ttO P
,ttP Q
	ClaimTypeuu 
=uu 
tableuu  %
.uu% &
Columnuu& ,
<uu, -
stringuu- 3
>uu3 4
(uu4 5
typeuu5 9
:uu9 :
$struu; A
,uuA B
nullableuuC K
:uuK L
trueuuM Q
)uuQ R
,uuR S

ClaimValuevv 
=vv  
tablevv! &
.vv& '
Columnvv' -
<vv- .
stringvv. 4
>vv4 5
(vv5 6
typevv6 :
:vv: ;
$strvv< B
,vvB C
nullablevvD L
:vvL M
truevvN R
)vvR S
}ww 
,ww 
constraintsxx 
:xx 
tablexx "
=>xx# %
{yy 
tablezz 
.zz 

PrimaryKeyzz $
(zz$ %
$strzz% :
,zz: ;
xzz< =
=>zz> @
xzzA B
.zzB C
IdzzC E
)zzE F
;zzF G
table{{ 
.{{ 

ForeignKey{{ $
({{$ %
name|| 
:|| 
$str|| F
,||F G
column}} 
:}} 
x}}  !
=>}}" $
x}}% &
.}}& '
UserId}}' -
,}}- .
principalTable~~ &
:~~& '
$str~~( 5
,~~5 6
principalColumn '
:' (
$str) -
,- .
onDelete
ÄÄ  
:
ÄÄ  !
ReferentialAction
ÄÄ" 3
.
ÄÄ3 4
Cascade
ÄÄ4 ;
)
ÄÄ; <
;
ÄÄ< =
}
ÅÅ 
)
ÅÅ 
;
ÅÅ 
migrationBuilder
ÉÉ 
.
ÉÉ 
CreateTable
ÉÉ (
(
ÉÉ( )
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ (
,
ÑÑ( )
columns
ÖÖ 
:
ÖÖ 
table
ÖÖ 
=>
ÖÖ !
new
ÖÖ" %
{
ÜÜ 
LoginProvider
áá !
=
áá" #
table
áá$ )
.
áá) *
Column
áá* 0
<
áá0 1
string
áá1 7
>
áá7 8
(
áá8 9
type
áá9 =
:
áá= >
$str
áá? E
,
ááE F
nullable
ááG O
:
ááO P
false
ááQ V
)
ááV W
,
ááW X
ProviderKey
àà 
=
àà  !
table
àà" '
.
àà' (
Column
àà( .
<
àà. /
string
àà/ 5
>
àà5 6
(
àà6 7
type
àà7 ;
:
àà; <
$str
àà= C
,
ààC D
nullable
ààE M
:
ààM N
false
ààO T
)
ààT U
,
ààU V!
ProviderDisplayName
ââ '
=
ââ( )
table
ââ* /
.
ââ/ 0
Column
ââ0 6
<
ââ6 7
string
ââ7 =
>
ââ= >
(
ââ> ?
type
ââ? C
:
ââC D
$str
ââE K
,
ââK L
nullable
ââM U
:
ââU V
true
ââW [
)
ââ[ \
,
ââ\ ]
UserId
ää 
=
ää 
table
ää "
.
ää" #
Column
ää# )
<
ää) *
string
ää* 0
>
ää0 1
(
ää1 2
type
ää2 6
:
ää6 7
$str
ää8 >
,
ää> ?
nullable
ää@ H
:
ääH I
false
ääJ O
)
ääO P
}
ãã 
,
ãã 
constraints
åå 
:
åå 
table
åå "
=>
åå# %
{
çç 
table
éé 
.
éé 

PrimaryKey
éé $
(
éé$ %
$str
éé% :
,
éé: ;
x
éé< =
=>
éé> @
new
ééA D
{
ééE F
x
ééG H
.
ééH I
LoginProvider
ééI V
,
ééV W
x
ééX Y
.
ééY Z
ProviderKey
ééZ e
}
ééf g
)
éég h
;
ééh i
table
èè 
.
èè 

ForeignKey
èè $
(
èè$ %
name
êê 
:
êê 
$str
êê F
,
êêF G
column
ëë 
:
ëë 
x
ëë  !
=>
ëë" $
x
ëë% &
.
ëë& '
UserId
ëë' -
,
ëë- .
principalTable
íí &
:
íí& '
$str
íí( 5
,
íí5 6
principalColumn
ìì '
:
ìì' (
$str
ìì) -
,
ìì- .
onDelete
îî  
:
îî  !
ReferentialAction
îî" 3
.
îî3 4
Cascade
îî4 ;
)
îî; <
;
îî< =
}
ïï 
)
ïï 
;
ïï 
migrationBuilder
óó 
.
óó 
CreateTable
óó (
(
óó( )
name
òò 
:
òò 
$str
òò '
,
òò' (
columns
ôô 
:
ôô 
table
ôô 
=>
ôô !
new
ôô" %
{
öö 
UserId
õõ 
=
õõ 
table
õõ "
.
õõ" #
Column
õõ# )
<
õõ) *
string
õõ* 0
>
õõ0 1
(
õõ1 2
type
õõ2 6
:
õõ6 7
$str
õõ8 >
,
õõ> ?
nullable
õõ@ H
:
õõH I
false
õõJ O
)
õõO P
,
õõP Q
RoleId
úú 
=
úú 
table
úú "
.
úú" #
Column
úú# )
<
úú) *
string
úú* 0
>
úú0 1
(
úú1 2
type
úú2 6
:
úú6 7
$str
úú8 >
,
úú> ?
nullable
úú@ H
:
úúH I
false
úúJ O
)
úúO P
}
ùù 
,
ùù 
constraints
ûû 
:
ûû 
table
ûû "
=>
ûû# %
{
üü 
table
†† 
.
†† 

PrimaryKey
†† $
(
††$ %
$str
††% 9
,
††9 :
x
††; <
=>
††= ?
new
††@ C
{
††D E
x
††F G
.
††G H
UserId
††H N
,
††N O
x
††P Q
.
††Q R
RoleId
††R X
}
††Y Z
)
††Z [
;
††[ \
table
°° 
.
°° 

ForeignKey
°° $
(
°°$ %
name
¢¢ 
:
¢¢ 
$str
¢¢ E
,
¢¢E F
column
££ 
:
££ 
x
££  !
=>
££" $
x
££% &
.
££& '
RoleId
££' -
,
££- .
principalTable
§§ &
:
§§& '
$str
§§( 5
,
§§5 6
principalColumn
•• '
:
••' (
$str
••) -
,
••- .
onDelete
¶¶  
:
¶¶  !
ReferentialAction
¶¶" 3
.
¶¶3 4
Cascade
¶¶4 ;
)
¶¶; <
;
¶¶< =
table
ßß 
.
ßß 

ForeignKey
ßß $
(
ßß$ %
name
®® 
:
®® 
$str
®® E
,
®®E F
column
©© 
:
©© 
x
©©  !
=>
©©" $
x
©©% &
.
©©& '
UserId
©©' -
,
©©- .
principalTable
™™ &
:
™™& '
$str
™™( 5
,
™™5 6
principalColumn
´´ '
:
´´' (
$str
´´) -
,
´´- .
onDelete
¨¨  
:
¨¨  !
ReferentialAction
¨¨" 3
.
¨¨3 4
Cascade
¨¨4 ;
)
¨¨; <
;
¨¨< =
}
≠≠ 
)
≠≠ 
;
≠≠ 
migrationBuilder
ØØ 
.
ØØ 
CreateTable
ØØ (
(
ØØ( )
name
∞∞ 
:
∞∞ 
$str
∞∞ (
,
∞∞( )
columns
±± 
:
±± 
table
±± 
=>
±± !
new
±±" %
{
≤≤ 
UserId
≥≥ 
=
≥≥ 
table
≥≥ "
.
≥≥" #
Column
≥≥# )
<
≥≥) *
string
≥≥* 0
>
≥≥0 1
(
≥≥1 2
type
≥≥2 6
:
≥≥6 7
$str
≥≥8 >
,
≥≥> ?
nullable
≥≥@ H
:
≥≥H I
false
≥≥J O
)
≥≥O P
,
≥≥P Q
LoginProvider
¥¥ !
=
¥¥" #
table
¥¥$ )
.
¥¥) *
Column
¥¥* 0
<
¥¥0 1
string
¥¥1 7
>
¥¥7 8
(
¥¥8 9
type
¥¥9 =
:
¥¥= >
$str
¥¥? E
,
¥¥E F
nullable
¥¥G O
:
¥¥O P
false
¥¥Q V
)
¥¥V W
,
¥¥W X
Name
µµ 
=
µµ 
table
µµ  
.
µµ  !
Column
µµ! '
<
µµ' (
string
µµ( .
>
µµ. /
(
µµ/ 0
type
µµ0 4
:
µµ4 5
$str
µµ6 <
,
µµ< =
nullable
µµ> F
:
µµF G
false
µµH M
)
µµM N
,
µµN O
Value
∂∂ 
=
∂∂ 
table
∂∂ !
.
∂∂! "
Column
∂∂" (
<
∂∂( )
string
∂∂) /
>
∂∂/ 0
(
∂∂0 1
type
∂∂1 5
:
∂∂5 6
$str
∂∂7 =
,
∂∂= >
nullable
∂∂? G
:
∂∂G H
true
∂∂I M
)
∂∂M N
}
∑∑ 
,
∑∑ 
constraints
∏∏ 
:
∏∏ 
table
∏∏ "
=>
∏∏# %
{
ππ 
table
∫∫ 
.
∫∫ 

PrimaryKey
∫∫ $
(
∫∫$ %
$str
∫∫% :
,
∫∫: ;
x
∫∫< =
=>
∫∫> @
new
∫∫A D
{
∫∫E F
x
∫∫G H
.
∫∫H I
UserId
∫∫I O
,
∫∫O P
x
∫∫Q R
.
∫∫R S
LoginProvider
∫∫S `
,
∫∫` a
x
∫∫b c
.
∫∫c d
Name
∫∫d h
}
∫∫i j
)
∫∫j k
;
∫∫k l
table
ªª 
.
ªª 

ForeignKey
ªª $
(
ªª$ %
name
ºº 
:
ºº 
$str
ºº F
,
ººF G
column
ΩΩ 
:
ΩΩ 
x
ΩΩ  !
=>
ΩΩ" $
x
ΩΩ% &
.
ΩΩ& '
UserId
ΩΩ' -
,
ΩΩ- .
principalTable
ææ &
:
ææ& '
$str
ææ( 5
,
ææ5 6
principalColumn
øø '
:
øø' (
$str
øø) -
,
øø- .
onDelete
¿¿  
:
¿¿  !
ReferentialAction
¿¿" 3
.
¿¿3 4
Cascade
¿¿4 ;
)
¿¿; <
;
¿¿< =
}
¡¡ 
)
¡¡ 
;
¡¡ 
migrationBuilder
√√ 
.
√√ 
CreateTable
√√ (
(
√√( )
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ $
,
ƒƒ$ %
columns
≈≈ 
:
≈≈ 
table
≈≈ 
=>
≈≈ !
new
≈≈" %
{
∆∆ 
ID
«« 
=
«« 
table
«« 
.
«« 
Column
«« %
<
««% &
int
««& )
>
««) *
(
««* +
type
««+ /
:
««/ 0
$str
««1 :
,
««: ;
nullable
««< D
:
««D E
false
««F K
)
««K L
.
»» 

Annotation
»» #
(
»»# $
$str
»»$ :
,
»»: ;
true
»»< @
)
»»@ A
,
»»A B

CustomerId
…… 
=
……  
table
……! &
.
……& '
Column
……' -
<
……- .
string
……. 4
>
……4 5
(
……5 6
type
……6 :
:
……: ;
$str
……< B
,
……B C
nullable
……D L
:
……L M
true
……N R
)
……R S
,
……S T
AccountFrom
   
=
    !
table
  " '
.
  ' (
Column
  ( .
<
  . /
int
  / 2
>
  2 3
(
  3 4
type
  4 8
:
  8 9
$str
  : C
,
  C D
nullable
  E M
:
  M N
false
  O T
)
  T U
,
  U V
	AccountTo
ÀÀ 
=
ÀÀ 
table
ÀÀ  %
.
ÀÀ% &
Column
ÀÀ& ,
<
ÀÀ, -
int
ÀÀ- 0
>
ÀÀ0 1
(
ÀÀ1 2
type
ÀÀ2 6
:
ÀÀ6 7
$str
ÀÀ8 A
,
ÀÀA B
nullable
ÀÀC K
:
ÀÀK L
false
ÀÀM R
)
ÀÀR S
,
ÀÀS T
TransactionDate
ÃÃ #
=
ÃÃ$ %
table
ÃÃ& +
.
ÃÃ+ ,
Column
ÃÃ, 2
<
ÃÃ2 3
DateTime
ÃÃ3 ;
>
ÃÃ; <
(
ÃÃ< =
type
ÃÃ= A
:
ÃÃA B
$str
ÃÃC I
,
ÃÃI J
nullable
ÃÃK S
:
ÃÃS T
false
ÃÃU Z
)
ÃÃZ [
,
ÃÃ[ \
Amount
ÕÕ 
=
ÕÕ 
table
ÕÕ "
.
ÕÕ" #
Column
ÕÕ# )
<
ÕÕ) *
decimal
ÕÕ* 1
>
ÕÕ1 2
(
ÕÕ2 3
type
ÕÕ3 7
:
ÕÕ7 8
$str
ÕÕ9 I
,
ÕÕI J
nullable
ÕÕK S
:
ÕÕS T
false
ÕÕU Z
)
ÕÕZ [
,
ÕÕ[ \
Note
ŒŒ 
=
ŒŒ 
table
ŒŒ  
.
ŒŒ  !
Column
ŒŒ! '
<
ŒŒ' (
string
ŒŒ( .
>
ŒŒ. /
(
ŒŒ/ 0
type
ŒŒ0 4
:
ŒŒ4 5
$str
ŒŒ6 <
,
ŒŒ< =
	maxLength
ŒŒ> G
:
ŒŒG H
$num
ŒŒI K
,
ŒŒK L
nullable
ŒŒM U
:
ŒŒU V
true
ŒŒW [
)
ŒŒ[ \
}
œœ 
,
œœ 
constraints
–– 
:
–– 
table
–– "
=>
––# %
{
—— 
table
““ 
.
““ 

PrimaryKey
““ $
(
““$ %
$str
““% 6
,
““6 7
x
““8 9
=>
““: <
x
““= >
.
““> ?
ID
““? A
)
““A B
;
““B C
table
”” 
.
”” 

ForeignKey
”” $
(
””$ %
name
‘‘ 
:
‘‘ 
$str
‘‘ F
,
‘‘F G
column
’’ 
:
’’ 
x
’’  !
=>
’’" $
x
’’% &
.
’’& '

CustomerId
’’' 1
,
’’1 2
principalTable
÷÷ &
:
÷÷& '
$str
÷÷( 5
,
÷÷5 6
principalColumn
◊◊ '
:
◊◊' (
$str
◊◊) -
,
◊◊- .
onDelete
ÿÿ  
:
ÿÿ  !
ReferentialAction
ÿÿ" 3
.
ÿÿ3 4
Restrict
ÿÿ4 <
)
ÿÿ< =
;
ÿÿ= >
}
ŸŸ 
)
ŸŸ 
;
ŸŸ 
migrationBuilder
€€ 
.
€€ 
CreateIndex
€€ (
(
€€( )
name
‹‹ 
:
‹‹ 
$str
‹‹ -
,
‹‹- .
table
›› 
:
›› 
$str
››  
,
››  !
column
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ $
)
ﬁﬁ$ %
;
ﬁﬁ% &
migrationBuilder
‡‡ 
.
‡‡ 
CreateIndex
‡‡ (
(
‡‡( )
name
·· 
:
·· 
$str
·· 2
,
··2 3
table
‚‚ 
:
‚‚ 
$str
‚‚ )
,
‚‚) *
column
„„ 
:
„„ 
$str
„„  
)
„„  !
;
„„! "
migrationBuilder
ÂÂ 
.
ÂÂ 
CreateIndex
ÂÂ (
(
ÂÂ( )
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ %
,
ÊÊ% &
table
ÁÁ 
:
ÁÁ 
$str
ÁÁ $
,
ÁÁ$ %
column
ËË 
:
ËË 
$str
ËË (
,
ËË( )
unique
ÈÈ 
:
ÈÈ 
true
ÈÈ 
)
ÈÈ 
;
ÈÈ 
migrationBuilder
ÎÎ 
.
ÎÎ 
CreateIndex
ÎÎ (
(
ÎÎ( )
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ 2
,
ÏÏ2 3
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ )
,
ÌÌ) *
column
ÓÓ 
:
ÓÓ 
$str
ÓÓ  
)
ÓÓ  !
;
ÓÓ! "
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
ÒÒ 
:
ÒÒ 
$str
ÒÒ 2
,
ÒÒ2 3
table
ÚÚ 
:
ÚÚ 
$str
ÚÚ )
,
ÚÚ) *
column
ÛÛ 
:
ÛÛ 
$str
ÛÛ  
)
ÛÛ  !
;
ÛÛ! "
migrationBuilder
ıı 
.
ıı 
CreateIndex
ıı (
(
ıı( )
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ 1
,
ˆˆ1 2
table
˜˜ 
:
˜˜ 
$str
˜˜ (
,
˜˜( )
column
¯¯ 
:
¯¯ 
$str
¯¯  
)
¯¯  !
;
¯¯! "
migrationBuilder
˙˙ 
.
˙˙ 
CreateIndex
˙˙ (
(
˙˙( )
name
˚˚ 
:
˚˚ 
$str
˚˚ "
,
˚˚" #
table
¸¸ 
:
¸¸ 
$str
¸¸ $
,
¸¸$ %
column
˝˝ 
:
˝˝ 
$str
˝˝ )
)
˝˝) *
;
˝˝* +
migrationBuilder
ˇˇ 
.
ˇˇ 
CreateIndex
ˇˇ (
(
ˇˇ( )
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ %
,
ÄÄ% &
table
ÅÅ 
:
ÅÅ 
$str
ÅÅ $
,
ÅÅ$ %
column
ÇÇ 
:
ÇÇ 
$str
ÇÇ ,
,
ÇÇ, -
unique
ÉÉ 
:
ÉÉ 
true
ÉÉ 
)
ÉÉ 
;
ÉÉ 
migrationBuilder
ÖÖ 
.
ÖÖ 
CreateIndex
ÖÖ (
(
ÖÖ( )
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ 2
,
ÜÜ2 3
table
áá 
:
áá 
$str
áá %
,
áá% &
column
àà 
:
àà 
$str
àà $
)
àà$ %
;
àà% &
}
ââ 	
	protected
ãã 
override
ãã 
void
ãã 
Down
ãã  $
(
ãã$ %
MigrationBuilder
ãã% 5
migrationBuilder
ãã6 F
)
ããF G
{
åå 	
migrationBuilder
çç 
.
çç 
	DropTable
çç &
(
çç& '
name
éé 
:
éé 
$str
éé 
)
éé  
;
éé  !
migrationBuilder
êê 
.
êê 
	DropTable
êê &
(
êê& '
name
ëë 
:
ëë 
$str
ëë (
)
ëë( )
;
ëë) *
migrationBuilder
ìì 
.
ìì 
	DropTable
ìì &
(
ìì& '
name
îî 
:
îî 
$str
îî (
)
îî( )
;
îî) *
migrationBuilder
ññ 
.
ññ 
	DropTable
ññ &
(
ññ& '
name
óó 
:
óó 
$str
óó (
)
óó( )
;
óó) *
migrationBuilder
ôô 
.
ôô 
	DropTable
ôô &
(
ôô& '
name
öö 
:
öö 
$str
öö '
)
öö' (
;
öö( )
migrationBuilder
úú 
.
úú 
	DropTable
úú &
(
úú& '
name
ùù 
:
ùù 
$str
ùù (
)
ùù( )
;
ùù) *
migrationBuilder
üü 
.
üü 
	DropTable
üü &
(
üü& '
name
†† 
:
†† 
$str
†† 
)
†† 
;
††  
migrationBuilder
¢¢ 
.
¢¢ 
	DropTable
¢¢ &
(
¢¢& '
name
££ 
:
££ 
$str
££ $
)
££$ %
;
££% &
migrationBuilder
•• 
.
•• 
	DropTable
•• &
(
••& '
name
¶¶ 
:
¶¶ 
$str
¶¶ #
)
¶¶# $
;
¶¶$ %
migrationBuilder
®® 
.
®® 
	DropTable
®® &
(
®®& '
name
©© 
:
©© 
$str
©© #
)
©©# $
;
©©$ %
}
™™ 	
}
´´ 
}¨¨ Ú
yD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Data\OnlineBankingAppContext.cs
	namespace 	
OnlineBankingApp
 
. 
Data 
{ 
public 

class #
OnlineBankingAppContext (
:) *
IdentityDbContext+ <
<< =
Customer= E
>E F
{		 
public

 #
OnlineBankingAppContext

 &
(

' (
DbContextOptions 
< #
OnlineBankingAppContext 4
>4 5
options6 =
)= >
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
OnlineBankingApp %
.% &
Models& ,
., -
Customer- 5
>5 6
Customer7 ?
{@ A
getB E
;E F
setG J
;J K
}L M
public 
DbSet 
< 
OnlineBankingApp %
.% &
Models& ,
., -
Account- 4
>4 5
Account6 =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
DbSet 
< 
OnlineBankingApp %
.% &
Models& ,
., -
FundTransfer- 9
>9 :
FundTransfer; G
{H I
getJ M
;M N
setO R
;R S
}T U
public 
DbSet 
< 
OnlineBankingApp %
.% &
Models& ,
., -
Backup- 3
>3 4
Backup5 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
} ù$
ïD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
Customer% -
>- .
_userManager/ ;
;; <
private 
readonly 
IEmailSender %
_sender& -
;- .
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5
Customer5 =
>= >
userManager? J
,J K
IEmailSenderL X
senderY _
)_ `
{ 	
_userManager 
= 
userManager &
;& '
_sender 
= 
sender 
; 
} 	
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool %
DisplayConfirmAccountLink -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string  
EmailConfirmationUrl *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
email; @
,@ A
stringB H
	returnUrlI R
=S T
nullU Y
)Y Z
{   	
if!! 
(!! 
email!! 
==!! 
null!! 
)!! 
{"" 
return## 
RedirectToPage## %
(##% &
$str##& .
)##. /
;##/ 0
}$$ 
var&& 
user&& 
=&& 
await&& 
_userManager&& )
.&&) *
FindByEmailAsync&&* :
(&&: ;
email&&; @
)&&@ A
;&&A B
if'' 
('' 
user'' 
=='' 
null'' 
)'' 
{(( 
return)) 
NotFound)) 
())  
$"))  "
$str))" B
{))B C
email))C H
}))H I
$str))I K
"))K L
)))L M
;))M N
}** 
Email,, 
=,, 
email,, 
;,, %
DisplayConfirmAccountLink.. %
=..& '
true..( ,
;.., -
if// 
(// %
DisplayConfirmAccountLink// )
)//) *
{00 
var11 
userId11 
=11 
await11 "
_userManager11# /
.11/ 0
GetUserIdAsync110 >
(11> ?
user11? C
)11C D
;11D E
var22 
code22 
=22 
await22  
_userManager22! -
.22- ./
#GenerateEmailConfirmationTokenAsync22. Q
(22Q R
user22R V
)22V W
;22W X
code33 
=33 
WebEncoders33 "
.33" #
Base64UrlEncode33# 2
(332 3
Encoding333 ;
.33; <
UTF833< @
.33@ A
GetBytes33A I
(33I J
code33J N
)33N O
)33O P
;33P Q 
EmailConfirmationUrl44 $
=44% &
Url44' *
.44* +
Page44+ /
(44/ 0
$str55 +
,55+ ,
pageHandler66 
:66  
null66! %
,66% &
values77 
:77 
new77 
{77  !
area77" &
=77' (
$str77) 3
,773 4
userId775 ;
=77< =
userId77> D
,77D E
code77F J
=77K L
code77M Q
,77Q R
	returnUrl77S \
=77] ^
	returnUrl77_ h
}77i j
,77j k
protocol88 
:88 
Request88 %
.88% &
Scheme88& ,
)88, -
;88- .
}99 
return;; 
Page;; 
(;; 
);; 
;;; 
}<< 	
}== 
}>> ÚÄ
âD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
Customer' /
>/ 0
_signInManager1 ?
;? @
private 
readonly 
UserManager $
<$ %
Customer% -
>- .
_userManager/ ;
;; <
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly 
ICryptoService '
_cryptoService( 6
;6 7
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
public 
RegisterModel 
( 
UserManager   
<   
Customer    
>    !
userManager  " -
,  - .
SignInManager!! 
<!! 
Customer!! "
>!!" #
signInManager!!$ 1
,!!1 2
ILogger"" 
<"" 
RegisterModel"" !
>""! "
logger""# )
,"") *
IEmailSender## 
emailSender## $
,##$ %
ICryptoService$$ 
cryptoService$$ (
,$$( )
RoleManager%% 
<%% 
IdentityRole%% $
>%%$ %
roleManager%%& 1
)%%1 2
{&& 	
_userManager'' 
='' 
userManager'' &
;''& '
_signInManager(( 
=(( 
signInManager(( *
;((* +
_logger)) 
=)) 
logger)) 
;)) 
_emailSender** 
=** 
emailSender** &
;**& '
_cryptoService++ 
=++ 
cryptoService++ *
;++* +
_roleManager,, 
=,, 
roleManager,, &
;,,& '
}-- 	
[// 	
BindProperty//	 
]// 
public00 

InputModel00 
Input00 
{00  !
get00" %
;00% &
set00' *
;00* +
}00, -
public22 
string22 
	ReturnUrl22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
public44 
IList44 
<44  
AuthenticationScheme44 )
>44) *
ExternalLogins44+ 9
{44: ;
get44< ?
;44? @
set44A D
;44D E
}44F G
public66 
class66 

InputModel66 
{77 	
[88 
RegularExpression88 
(88 
$str88 3
)883 4
]884 5
[99 
Display99 
(99 
Name99 
=99 
$str99 (
)99( )
]99) *
[:: 
StringLength:: 
(:: 
$num:: 
,:: 
MinimumLength:: +
=::, -
$num::. /
)::/ 0
]::0 1
[;; 
Required;; 
];; 
public<< 
string<< 
	FirstName<< #
{<<$ %
get<<& )
;<<) *
set<<+ .
;<<. /
}<<0 1
[>> 
RegularExpression>> 
(>> 
$str>> 3
)>>3 4
]>>4 5
[?? 
Display?? 
(?? 
Name?? 
=?? 
$str?? )
)??) *
]??* +
[@@ 
StringLength@@ 
(@@ 
$num@@ 
,@@ 
MinimumLength@@ +
=@@, -
$num@@. /
)@@/ 0
]@@0 1
[AA 
RequiredAA 
]AA 
publicBB 
stringBB 

MiddleNameBB $
{BB% &
getBB' *
;BB* +
setBB, /
;BB/ 0
}BB1 2
[DD 
RegularExpressionDD 
(DD 
$strDD 3
)DD3 4
]DD4 5
[EE 
DisplayEE 
(EE 
NameEE 
=EE 
$strEE '
)EE' (
]EE( )
[FF 
StringLengthFF 
(FF 
$numFF 
,FF 
MinimumLengthFF +
=FF, -
$numFF. /
)FF/ 0
]FF0 1
[GG 
RequiredGG 
]GG 
publicHH 
stringHH 
LastNameHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
[JJ 
RequiredJJ 
]JJ 
[KK 
DisplayFormatKK 
(KK 
DataFormatStringKK +
=KK, -
$strKK. <
)KK< =
]KK= >
[LL 
DataTypeLL 
(LL 
DataTypeLL 
.LL 
DateLL #
)LL# $
]LL$ %
publicMM 
DateTimeMM 
DateOfBirthMM '
{MM( )
getMM* -
;MM- .
setMM/ 2
;MM2 3
}MM4 5
[OO 
RequiredOO 
]OO 
[PP 
EmailAddressPP 
]PP 
[QQ 
DisplayQQ 
(QQ 
NameQQ 
=QQ 
$strQQ #
)QQ# $
]QQ$ %
publicRR 
stringRR 
EmailRR 
{RR  !
getRR" %
;RR% &
setRR' *
;RR* +
}RR, -
[TT 
RequiredTT 
]TT 
[UU 
StringLengthUU 
(UU 
$numUU 
,UU 
ErrorMessageUU +
=UU, -
$strUU. l
,UUl m
MinimumLengthUUn {
=UU| }
$numUU~ 
)	UU Ä
]
UUÄ Å
[VV 
DataTypeVV 
(VV 
DataTypeVV 
.VV 
PasswordVV '
)VV' (
]VV( )
[WW 
DisplayWW 
(WW 
NameWW 
=WW 
$strWW &
)WW& '
]WW' (
publicXX 
stringXX 
PasswordXX "
{XX# $
getXX% (
;XX( )
setXX* -
;XX- .
}XX/ 0
[ZZ 
DataTypeZZ 
(ZZ 
DataTypeZZ 
.ZZ 
PasswordZZ '
)ZZ' (
]ZZ( )
[[[ 
Display[[ 
([[ 
Name[[ 
=[[ 
$str[[ .
)[[. /
][[/ 0
[\\ 
Compare\\ 
(\\ 
$str\\ 
,\\  
ErrorMessage\\! -
=\\. /
$str\\0 f
)\\f g
]\\g h
public]] 
string]] 
ConfirmPassword]] )
{]]* +
get]], /
;]]/ 0
set]]1 4
;]]4 5
}]]6 7
}^^ 	
public`` 
async`` 
Task`` 

OnGetAsync`` $
(``$ %
string``% +
	returnUrl``, 5
=``6 7
null``8 <
)``< =
{aa 	
	ReturnUrlbb 
=bb 
	returnUrlbb !
;bb! "
ExternalLoginscc 
=cc 
(cc 
awaitcc #
_signInManagercc$ 2
.cc2 31
%GetExternalAuthenticationSchemesAsynccc3 X
(ccX Y
)ccY Z
)ccZ [
.cc[ \
ToListcc\ b
(ccb c
)ccc d
;ccd e
}dd 	
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' (
OnPostAsyncff) 4
(ff4 5
stringff5 ;
	returnUrlff< E
=ffF G
nullffH L
)ffL M
{gg 	
	returnUrlhh 
??=hh 
Urlhh 
.hh 
Contenthh %
(hh% &
$strhh& *
)hh* +
;hh+ ,
ExternalLoginsii 
=ii 
(ii 
awaitii #
_signInManagerii$ 2
.ii2 31
%GetExternalAuthenticationSchemesAsyncii3 X
(iiX Y
)iiY Z
)iiZ [
.ii[ \
ToListii\ b
(iib c
)iic d
;iid e
ifjj 
(jj 

ModelStatejj 
.jj 
IsValidjj "
)jj" #
{kk 
varll 
userll 
=ll 
newll 
Customerll '
{ll( )
	FirstNamemm 
=mm 
Inputmm  %
.mm% &
	FirstNamemm& /
,mm/ 0

MiddleNamenn 
=nn  
Inputnn! &
.nn& '

MiddleNamenn' 1
,nn1 2
LastNameoo 
=oo 
Inputoo $
.oo$ %
LastNameoo% -
,oo- .
DateOfBirthpp 
=pp  !
Inputpp" '
.pp' (
DateOfBirthpp( 3
,pp3 4
UserNameqq 
=qq 
Inputqq $
.qq$ %
Emailqq% *
,qq* +
Emailrr 
=rr 
Inputrr !
.rr! "
Emailrr" '
}ss 
;ss 
vartt 
resulttt 
=tt 
awaittt "
_userManagertt# /
.tt/ 0
CreateAsynctt0 ;
(tt; <
usertt< @
,tt@ A
InputttB G
.ttG H
PasswordttH P
)ttP Q
;ttQ R
ifuu 
(uu 
resultuu 
.uu 
	Succeededuu $
)uu$ %
{vv 
ifww 
(ww 
!ww 
awaitww 
_roleManagerww +
.ww+ ,
RoleExistsAsyncww, ;
(ww; <
Roleww< @
.ww@ A
CustomerwwA I
)wwI J
)wwJ K
{xx 
awaityy 
_roleManageryy *
.yy* +
CreateAsyncyy+ 6
(yy6 7
newyy7 :
IdentityRoleyy; G
(yyG H
RoleyyH L
.yyL M
CustomeryyM U
)yyU V
)yyV W
;yyW X
}zz 
if|| 
(|| 
!|| 
await|| 
_roleManager|| +
.||+ ,
RoleExistsAsync||, ;
(||; <
Role||< @
.||@ A
ActiveCustomer||A O
)||O P
)||P Q
{}} 
await~~ 
_roleManager~~ *
.~~* +
CreateAsync~~+ 6
(~~6 7
new~~7 :
IdentityRole~~; G
(~~G H
Role~~H L
.~~L M
ActiveCustomer~~M [
)~~[ \
)~~\ ]
;~~] ^
} 
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
await
ÅÅ 
_roleManager
ÅÅ +
.
ÅÅ+ ,
RoleExistsAsync
ÅÅ, ;
(
ÅÅ; <
Role
ÅÅ< @
.
ÅÅ@ A
PendingCustomer
ÅÅA P
)
ÅÅP Q
)
ÅÅQ R
{
ÇÇ 
await
ÉÉ 
_roleManager
ÉÉ *
.
ÉÉ* +
CreateAsync
ÉÉ+ 6
(
ÉÉ6 7
new
ÉÉ7 :
IdentityRole
ÉÉ; G
(
ÉÉG H
Role
ÉÉH L
.
ÉÉL M
PendingCustomer
ÉÉM \
)
ÉÉ\ ]
)
ÉÉ] ^
;
ÉÉ^ _
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
await
ÜÜ 
_roleManager
ÜÜ +
.
ÜÜ+ ,
RoleExistsAsync
ÜÜ, ;
(
ÜÜ; <
Role
ÜÜ< @
.
ÜÜ@ A
SuspendedCustomer
ÜÜA R
)
ÜÜR S
)
ÜÜS T
{
áá 
await
àà 
_roleManager
àà *
.
àà* +
CreateAsync
àà+ 6
(
àà6 7
new
àà7 :
IdentityRole
àà; G
(
ààG H
Role
ààH L
.
ààL M
SuspendedCustomer
ààM ^
)
àà^ _
)
àà_ `
;
àà` a
}
ââ 
await
ãã 
_userManager
ãã &
.
ãã& '
AddToRoleAsync
ãã' 5
(
ãã5 6
user
ãã6 :
,
ãã: ;
Role
ãã; ?
.
ãã? @
Customer
ãã@ H
)
ããH I
;
ããI J
await
åå 
_userManager
åå &
.
åå& '
AddToRoleAsync
åå' 5
(
åå5 6
user
åå6 :
,
åå: ;
Role
åå; ?
.
åå? @
PendingCustomer
åå@ O
)
ååO P
;
ååP Q
_logger
éé 
.
éé 
LogInformation
éé *
(
éé* +
$str
éé+ V
)
ééV W
;
ééW X
if
êê 
(
êê 
_userManager
êê $
.
êê$ %
Options
êê% ,
.
êê, -
SignIn
êê- 3
.
êê3 4%
RequireConfirmedAccount
êê4 K
)
êêK L
{
ëë 
var
íí 
code
íí  
=
íí! "
await
íí# (
_userManager
íí) 5
.
íí5 61
#GenerateEmailConfirmationTokenAsync
íí6 Y
(
ííY Z
user
ííZ ^
)
íí^ _
;
íí_ `
code
ìì 
=
ìì 
WebEncoders
ìì *
.
ìì* +
Base64UrlEncode
ìì+ :
(
ìì: ;
Encoding
ìì; C
.
ììC D
UTF8
ììD H
.
ììH I
GetBytes
ììI Q
(
ììQ R
code
ììR V
)
ììV W
)
ììW X
;
ììX Y
var
îî 
callbackUrl
îî '
=
îî( )
Url
îî* -
.
îî- .
Page
îî. 2
(
îî2 3
$str
ïï 3
,
ïï3 4
pageHandler
ññ '
:
ññ' (
null
ññ) -
,
ññ- .
values
óó "
:
óó" #
new
óó$ '
{
óó( )
area
óó* .
=
óó/ 0
$str
óó1 ;
,
óó; <
userId
óó= C
=
óóD E
user
óóF J
.
óóJ K
Id
óóK M
,
óóM N
code
óóO S
=
óóT U
code
óóV Z
,
óóZ [
	returnUrl
óó\ e
=
óóf g
	returnUrl
óóh q
}
óór s
,
óós t
protocol
òò $
:
òò$ %
Request
òò& -
.
òò- .
Scheme
òò. 4
)
òò4 5
;
òò5 6
await
öö 
_emailSender
öö *
.
öö* +
SendEmailAsync
öö+ 9
(
öö9 :
Input
öö: ?
.
öö? @
Email
öö@ E
,
ööE F
$str
ööG [
,
öö[ \
$"
õõ 
$str
õõ B
{
õõB C
HtmlEncoder
õõC N
.
õõN O
Default
õõO V
.
õõV W
Encode
õõW ]
(
õõ] ^
callbackUrl
õõ^ i
)
õõi j
}
õõj k
$str
õõk 
"õõ Ä
)õõÄ Å
;õõÅ Ç
return
ùù 
RedirectToPage
ùù -
(
ùù- .
$str
ùù. D
,
ùùD E
new
ùùF I
{
ùùJ K
email
ùùL Q
=
ùùR S
Input
ùùT Y
.
ùùY Z
Email
ùùZ _
,
ùù_ `
	returnUrl
ùùa j
=
ùùk l
	returnUrl
ùùm v
}
ùùw x
)
ùùx y
;
ùùy z
}
ûû 
else
üü 
{
†† 
await
°° 
_signInManager
°° ,
.
°°, -
SignInAsync
°°- 8
(
°°8 9
user
°°9 =
,
°°= >
isPersistent
°°? K
:
°°K L
false
°°M R
)
°°R S
;
°°S T
return
¢¢ 
LocalRedirect
¢¢ ,
(
¢¢, -
	returnUrl
¢¢- 6
)
¢¢6 7
;
¢¢7 8
}
££ 
}
§§ 
foreach
•• 
(
•• 
var
•• 
error
•• "
in
••# %
result
••& ,
.
••, -
Errors
••- 3
)
••3 4
{
¶¶ 

ModelState
ßß 
.
ßß 
AddModelError
ßß ,
(
ßß, -
string
ßß- 3
.
ßß3 4
Empty
ßß4 9
,
ßß9 :
error
ßß; @
.
ßß@ A
Description
ßßA L
)
ßßL M
;
ßßM N
}
®® 
}
©© 
return
¨¨ 
Page
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
}
ÆÆ 
}ØØ ˘)
èD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{		 
public

 

static

 
class

 
ManageNavPages

 &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public 
static 
string 
ChangePassword +
=>, .
$str/ ?
;? @
public 
static 
string  
DownloadPersonalData 1
=>2 4
$str5 K
;K L
public 
static 
string 
DeletePersonalData /
=>0 2
$str3 G
;G H
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string 
PersonalData )
=>* ,
$str- ;
;; <
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string 
EmailNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Emaila f
)f g
;g h
public   
static   
string   "
ChangePasswordNavClass   3
(  3 4
ViewContext  4 ?
viewContext  @ K
)  K L
=>  M O
PageNavClass  P \
(  \ ]
viewContext  ] h
,  h i
ChangePassword  j x
)  x y
;  y z
public"" 
static"" 
string"" (
DownloadPersonalDataNavClass"" 9
(""9 :
ViewContext"": E
viewContext""F Q
)""Q R
=>""S U
PageNavClass""V b
(""b c
viewContext""c n
,""n o!
DownloadPersonalData	""p Ñ
)
""Ñ Ö
;
""Ö Ü
public$$ 
static$$ 
string$$ &
DeletePersonalDataNavClass$$ 7
($$7 8
ViewContext$$8 C
viewContext$$D O
)$$O P
=>$$Q S
PageNavClass$$T `
($$` a
viewContext$$a l
,$$l m
DeletePersonalData	$$n Ä
)
$$Ä Å
;
$$Å Ç
public&& 
static&& 
string&& "
ExternalLoginsNavClass&& 3
(&&3 4
ViewContext&&4 ?
viewContext&&@ K
)&&K L
=>&&M O
PageNavClass&&P \
(&&\ ]
viewContext&&] h
,&&h i
ExternalLogins&&j x
)&&x y
;&&y z
public(( 
static(( 
string((  
PersonalDataNavClass(( 1
(((1 2
ViewContext((2 =
viewContext((> I
)((I J
=>((K M
PageNavClass((N Z
(((Z [
viewContext(([ f
,((f g
PersonalData((h t
)((t u
;((u v
public** 
static** 
string** +
TwoFactorAuthenticationNavClass** <
(**< =
ViewContext**= H
viewContext**I T
)**T U
=>**V X
PageNavClass**Y e
(**e f
viewContext**f q
,**q r$
TwoFactorAuthentication	**s ä
)
**ä ã
;
**ã å
private,, 
static,, 
string,, 
PageNavClass,, *
(,,* +
ViewContext,,+ 6
viewContext,,7 B
,,,B C
string,,D J
page,,K O
),,O P
{-- 	
var.. 

activePage.. 
=.. 
viewContext.. (
...( )
ViewData..) 1
[..1 2
$str..2 >
]..> ?
as..@ B
string..C I
??// 
System// 
.// 
IO// 
.// 
Path// !
.//! "'
GetFileNameWithoutExtension//" =
(//= >
viewContext//> I
.//I J
ActionDescriptor//J Z
.//Z [
DisplayName//[ f
)//f g
;//g h
return00 
string00 
.00 
Equals00  
(00  !

activePage00! +
,00+ ,
page00- 1
,001 2
StringComparison003 C
.00C D
OrdinalIgnoreCase00D U
)00U V
?00W X
$str00Y a
:00b c
null00d h
;00h i
}11 	
}22 
}33 ≠W
çD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{ 
public 

partial 
class 

IndexModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
Customer% -
>- .
_userManager/ ;
;; <
private 
readonly 
SignInManager &
<& '
Customer' /
>/ 0
_signInManager1 ?
;? @
public 

IndexModel 
( 
UserManager 
< 
Customer  
>  !
userManager" -
,- .
SignInManager 
< 
Customer "
>" #
signInManager$ 1
)1 2
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
BindProperty	 
] 
public   

InputModel   
Input   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 
class"" 

InputModel"" 
{## 	
[$$ 
RegularExpression$$ 
($$ 
$str$$ 3
)$$3 4
]$$4 5
[%% 
Display%% 
(%% 
Name%% 
=%% 
$str%% (
)%%( )
]%%) *
[&& 
StringLength&& 
(&& 
$num&& 
,&& 
MinimumLength&& +
=&&, -
$num&&. /
)&&/ 0
]&&0 1
['' 
Required'' 
]'' 
public(( 
string(( 
	FirstName(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
[** 
RegularExpression** 
(** 
$str** 3
)**3 4
]**4 5
[++ 
Display++ 
(++ 
Name++ 
=++ 
$str++ )
)++) *
]++* +
[,, 
StringLength,, 
(,, 
$num,, 
,,, 
MinimumLength,, +
=,,, -
$num,,. /
),,/ 0
],,0 1
[-- 
Required-- 
]-- 
public.. 
string.. 

MiddleName.. $
{..% &
get..' *
;..* +
set.., /
;../ 0
}..1 2
[00 
RegularExpression00 
(00 
$str00 3
)003 4
]004 5
[11 
Display11 
(11 
Name11 
=11 
$str11 '
)11' (
]11( )
[22 
StringLength22 
(22 
$num22 
,22 
MinimumLength22 +
=22, -
$num22. /
)22/ 0
]220 1
[33 
Required33 
]33 
public44 
string44 
LastName44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
[66 
DisplayFormat66 
(66 
DataFormatString66 +
=66, -
$str66. <
)66< =
]66= >
[77 
DataType77 
(77 
DataType77 
.77 
Date77 #
)77# $
]77$ %
public88 
DateTime88 
DateOfBirth88 '
{88( )
get88* -
;88- .
set88/ 2
;882 3
}884 5
[:: 
Phone:: 
]:: 
[;; 
Display;; 
(;; 
Name;; 
=;; 
$str;; *
);;* +
];;+ ,
public<< 
string<< 
PhoneNumber<< %
{<<& '
get<<( +
;<<+ ,
set<<- 0
;<<0 1
}<<2 3
}== 	
private?? 
async?? 
Task?? 
	LoadAsync?? $
(??$ %
Customer??% -
user??. 2
)??2 3
{@@ 	
varAA 
userNameAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- .
GetUserNameAsyncAA. >
(AA> ?
userAA? C
)AAC D
;AAD E
varBB 
phoneNumberBB 
=BB 
awaitBB #
_userManagerBB$ 0
.BB0 1
GetPhoneNumberAsyncBB1 D
(BBD E
userBBE I
)BBI J
;BBJ K
UsernameDD 
=DD 
userNameDD 
;DD  
InputFF 
=FF 
newFF 

InputModelFF "
{GG 
	FirstNameHH 
=HH 
userHH  
.HH  !
	FirstNameHH! *
,HH* +

MiddleNameII 
=II 
userII !
.II! "

MiddleNameII" ,
,II, -
LastNameJJ 
=JJ 
userJJ 
.JJ  
LastNameJJ  (
,JJ( )
DateOfBirthKK 
=KK 
userKK "
.KK" #
DateOfBirthKK# .
,KK. /
PhoneNumberLL 
=LL 
phoneNumberLL )
}MM 
;MM 
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (

OnGetAsyncPP) 3
(PP3 4
)PP4 5
{QQ 	
varRR 
userRR 
=RR 
awaitRR 
_userManagerRR )
.RR) *
GetUserAsyncRR* 6
(RR6 7
UserRR7 ;
)RR; <
;RR< =
ifSS 
(SS 
userSS 
==SS 
nullSS 
)SS 
{TT 
returnUU 
NotFoundUU 
(UU  
$"UU  "
$strUU" ?
{UU? @
_userManagerUU@ L
.UUL M
	GetUserIdUUM V
(UUV W
UserUUW [
)UU[ \
}UU\ ]
$strUU] _
"UU_ `
)UU` a
;UUa b
}VV 
awaitXX 
	LoadAsyncXX 
(XX 
userXX  
)XX  !
;XX! "
returnYY 
PageYY 
(YY 
)YY 
;YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
IActionResult\\ '
>\\' (
OnPostAsync\\) 4
(\\4 5
)\\5 6
{]] 	
var^^ 
user^^ 
=^^ 
await^^ 
_userManager^^ )
.^^) *
GetUserAsync^^* 6
(^^6 7
User^^7 ;
)^^; <
;^^< =
if__ 
(__ 
user__ 
==__ 
null__ 
)__ 
{`` 
returnaa 
NotFoundaa 
(aa  
$"aa  "
$straa" ?
{aa? @
_userManageraa@ L
.aaL M
	GetUserIdaaM V
(aaV W
UseraaW [
)aa[ \
}aa\ ]
$straa] _
"aa_ `
)aa` a
;aaa b
}bb 
ifdd 
(dd 
!dd 

ModelStatedd 
.dd 
IsValiddd #
)dd# $
{ee 
awaitff 
	LoadAsyncff 
(ff  
userff  $
)ff$ %
;ff% &
returngg 
Pagegg 
(gg 
)gg 
;gg 
}hh 
varjj 
phoneNumberjj 
=jj 
awaitjj #
_userManagerjj$ 0
.jj0 1
GetPhoneNumberAsyncjj1 D
(jjD E
userjjE I
)jjI J
;jjJ K
ifkk 
(kk 
Inputkk 
.kk 
PhoneNumberkk !
!=kk" $
phoneNumberkk% 0
)kk0 1
{ll 
varmm 
setPhoneResultmm "
=mm# $
awaitmm% *
_userManagermm+ 7
.mm7 8
SetPhoneNumberAsyncmm8 K
(mmK L
usermmL P
,mmP Q
InputmmR W
.mmW X
PhoneNumbermmX c
)mmc d
;mmd e
ifnn 
(nn 
!nn 
setPhoneResultnn #
.nn# $
	Succeedednn$ -
)nn- .
{oo 
StatusMessagepp !
=pp" #
$strpp$ W
;ppW X
returnqq 
RedirectToPageqq )
(qq) *
)qq* +
;qq+ ,
}rr 
}ss 
ifuu 
(uu 
Inputuu 
.uu 
	FirstNameuu 
!=uu  "
useruu# '
.uu' (
	FirstNameuu( 1
)uu1 2
{vv 
userww 
.ww 
	FirstNameww 
=ww  
Inputww! &
.ww& '
	FirstNameww' 0
;ww0 1
}xx 
ifzz 
(zz 
Inputzz 
.zz 

MiddleNamezz  
!=zz! #
userzz$ (
.zz( )

MiddleNamezz) 3
)zz3 4
{{{ 
user|| 
.|| 

MiddleName|| 
=||  !
Input||" '
.||' (

MiddleName||( 2
;||2 3
}}} 
if 
( 
Input 
. 
LastName 
!= !
user" &
.& '
LastName' /
)/ 0
{
ÄÄ 
user
ÅÅ 
.
ÅÅ 
LastName
ÅÅ 
=
ÅÅ 
Input
ÅÅ  %
.
ÅÅ% &
LastName
ÅÅ& .
;
ÅÅ. /
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
Input
ÑÑ 
.
ÑÑ 
DateOfBirth
ÑÑ !
!=
ÑÑ" $
user
ÑÑ% )
.
ÑÑ) *
DateOfBirth
ÑÑ* 5
)
ÑÑ5 6
{
ÖÖ 
user
ÜÜ 
.
ÜÜ 
DateOfBirth
ÜÜ  
=
ÜÜ! "
Input
ÜÜ# (
.
ÜÜ( )
DateOfBirth
ÜÜ) 4
;
ÜÜ4 5
}
áá 
await
ââ 
_userManager
ââ 
.
ââ 
UpdateAsync
ââ *
(
ââ* +
user
ââ+ /
)
ââ/ 0
;
ââ0 1
await
ãã 
_signInManager
ãã  
.
ãã  ! 
RefreshSignInAsync
ãã! 3
(
ãã3 4
user
ãã4 8
)
ãã8 9
;
ãã9 :
StatusMessage
åå 
=
åå 
$str
åå ;
;
åå; <
return
çç 
RedirectToPage
çç !
(
çç! "
)
çç" #
;
çç# $
}
éé 	
}
èè 
}êê —
áD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
Customer' /
>/ 0
_signInManager1 ?
;? @
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
Customer) 1
>1 2
signInManager3 @
,@ A
ILoggerB I
<I J
LogoutModelJ U
>U V
loggerW ]
)] ^
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await   
_signInManager    
.    !
SignOutAsync  ! -
(  - .
)  . /
;  / 0
_logger!! 
.!! 
LogInformation!! "
(!!" #
$str!!# 5
)!!5 6
;!!6 7
if"" 
("" 
	returnUrl"" 
!="" 
null"" !
)""! "
{## 
if$$ 
($$ 
Url$$ 
.$$ 

IsLocalUrl$$ "
($$" #
	returnUrl$$# ,
)$$, -
)$$- .
return%% 
Redirect%% #
(%%# $
	returnUrl%%$ -
)%%- .
;%%. /
else&& 
return'' 
RedirectToPage'' )
('') *
)''* +
;''+ ,
}(( 
else)) 
{** 
return++ 
RedirectToPage++ %
(++% &
)++& '
;++' (
},, 
}-- 	
}.. 
}// ‚B
ÜD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
Customer% -
>- .
_userManager/ ;
;; <
private 
readonly 
SignInManager &
<& '
Customer' /
>/ 0
_signInManager1 ?
;? @
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 
const 
string 
SessionKeyName *
=+ ,
$str- 5
;5 6
public 

LoginModel 
( 
SignInManager '
<' (
Customer( 0
>0 1
signInManager2 ?
,? @
ILogger 
< 

LoginModel 
> 
logger  &
,& '
UserManager 
< 
Customer  
>  !
userManager" -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_signInManager   
=   
signInManager   *
;  * +
_logger!! 
=!! 
logger!! 
;!! 
}"" 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public'' 
IList'' 
<''  
AuthenticationScheme'' )
>'') *
ExternalLogins''+ 9
{'': ;
get''< ?
;''? @
set''A D
;''D E
}''F G
public)) 
string)) 
	ReturnUrl)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
[++ 	
TempData++	 
]++ 
public,, 
string,, 
ErrorMessage,, "
{,,# $
get,,% (
;,,( )
set,,* -
;,,- .
},,/ 0
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
public22 
string22 
Email22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
[44 
Required44 
]44 
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
public66 
string66 
Password66 "
{66# $
get66% (
;66( )
set66* -
;66- .
}66/ 0
[88 
Display88 
(88 
Name88 
=88 
$str88 *
)88* +
]88+ ,
public99 
bool99 

RememberMe99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
}:: 	
public<< 
async<< 
Task<< 

OnGetAsync<< $
(<<$ %
string<<% +
	returnUrl<<, 5
=<<6 7
null<<8 <
)<<< =
{== 	
if>> 
(>> 
!>> 
string>> 
.>> 
IsNullOrEmpty>> %
(>>% &
ErrorMessage>>& 2
)>>2 3
)>>3 4
{?? 

ModelState@@ 
.@@ 
AddModelError@@ (
(@@( )
string@@) /
.@@/ 0
Empty@@0 5
,@@5 6
ErrorMessage@@7 C
)@@C D
;@@D E
}AA 
	returnUrlCC 
??=CC 
UrlCC 
.CC 
ContentCC %
(CC% &
$strCC& *
)CC* +
;CC+ ,
awaitFF 
HttpContextFF 
.FF 
SignOutAsyncFF *
(FF* +
IdentityConstantsFF+ <
.FF< =
ExternalSchemeFF= K
)FFK L
;FFL M
ExternalLoginsHH 
=HH 
(HH 
awaitHH #
_signInManagerHH$ 2
.HH2 31
%GetExternalAuthenticationSchemesAsyncHH3 X
(HHX Y
)HHY Z
)HHZ [
.HH[ \
ToListHH\ b
(HHb c
)HHc d
;HHd e
	ReturnUrlJJ 
=JJ 
	returnUrlJJ !
;JJ! "
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
OnPostAsyncMM) 4
(MM4 5
stringMM5 ;
	returnUrlMM< E
=MMF G
nullMMH L
)MML M
{NN 	
	returnUrlOO 
??=OO 
UrlOO 
.OO 
ContentOO %
(OO% &
$strOO& *
)OO* +
;OO+ ,
ExternalLoginsQQ 
=QQ 
(QQ 
awaitQQ #
_signInManagerQQ$ 2
.QQ2 31
%GetExternalAuthenticationSchemesAsyncQQ3 X
(QQX Y
)QQY Z
)QQZ [
.QQ[ \
ToListQQ\ b
(QQb c
)QQc d
;QQd e
ifSS 
(SS 

ModelStateSS 
.SS 
IsValidSS "
)SS" #
{TT 
varWW 
resultWW 
=WW 
awaitWW "
_signInManagerWW# 1
.WW1 2
PasswordSignInAsyncWW2 E
(WWE F
InputWWF K
.WWK L
EmailWWL Q
,WWQ R
InputWWS X
.WWX Y
PasswordWWY a
,WWa b
InputWWc h
.WWh i

RememberMeWWi s
,WWs t
lockoutOnFailure	WWu Ö
:
WWÖ Ü
false
WWá å
)
WWå ç
;
WWç é
ifXX 
(XX 
resultXX 
.XX 
	SucceededXX $
)XX$ %
{YY 
_loggerZZ 
.ZZ 
LogInformationZZ *
(ZZ* +
$strZZ+ <
)ZZ< =
;ZZ= >
if\\ 
(\\ 
string\\ 
.\\ 
IsNullOrEmpty\\ ,
(\\, -
HttpContext\\- 8
.\\8 9
Session\\9 @
.\\@ A
	GetString\\A J
(\\J K
SessionKeyName\\K Y
)\\Y Z
)\\Z [
)\\[ \
{]] 
HttpContext^^ #
.^^# $
Session^^$ +
.^^+ ,
	SetString^^, 5
(^^5 6
SessionKeyName^^6 D
,^^D E
Input^^F K
.^^K L
Email^^L Q
)^^Q R
;^^R S
}__ 
returnaa 
LocalRedirectaa (
(aa( )
	returnUrlaa) 2
)aa2 3
;aa3 4
}bb 
ifcc 
(cc 
resultcc 
.cc 
RequiresTwoFactorcc ,
)cc, -
{dd 
returnee 
RedirectToPageee )
(ee) *
$stree* :
,ee: ;
newee< ?
{ee@ A
	ReturnUrleeB K
=eeL M
	returnUrleeN W
,eeW X

RememberMeeeY c
=eed e
Inputeef k
.eek l

RememberMeeel v
}eew x
)eex y
;eey z
}ff 
ifgg 
(gg 
resultgg 
.gg 
IsLockedOutgg &
)gg& '
{hh 
_loggerii 
.ii 

LogWarningii &
(ii& '
$strii' A
)iiA B
;iiB C
returnjj 
RedirectToPagejj )
(jj) *
$strjj* 5
)jj5 6
;jj6 7
}kk 
elsell 
{mm 

ModelStatenn 
.nn 
AddModelErrornn ,
(nn, -
stringnn- 3
.nn3 4
Emptynn4 9
,nn9 :
$strnn; S
)nnS T
;nnT U
returnoo 
Pageoo 
(oo  
)oo  !
;oo! "
}pp 
}qq 
returntt 
Pagett 
(tt 
)tt 
;tt 
}uu 	
}vv 
}ww œ
çD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
Customer% -
>- .
_userManager/ ;
;; <
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
Customer- 5
>5 6
userManager7 B
)B C
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
codeJ N
)N O
{ 	
if 
( 
userId 
== 
null 
|| !
code" &
==' )
null* .
). /
{ 
return   
RedirectToPage   %
(  % &
$str  & .
)  . /
;  / 0
}!! 
var## 
user## 
=## 
await## 
_userManager## )
.##) *
FindByIdAsync##* 7
(##7 8
userId##8 >
)##> ?
;##? @
if$$ 
($$ 
user$$ 
==$$ 
null$$ 
)$$ 
{%% 
return&& 
NotFound&& 
(&&  
$"&&  "
$str&&" ?
{&&? @
userId&&@ F
}&&F G
$str&&G I
"&&I J
)&&J K
;&&K L
}'' 
code)) 
=)) 
Encoding)) 
.)) 
UTF8))  
.))  !
	GetString))! *
())* +
WebEncoders))+ 6
.))6 7
Base64UrlDecode))7 F
())F G
code))G K
)))K L
)))L M
;))M N
var** 
result** 
=** 
await** 
_userManager** +
.**+ ,
ConfirmEmailAsync**, =
(**= >
user**> B
,**B C
code**D H
)**H I
;**I J
StatusMessage++ 
=++ 
result++ "
.++" #
	Succeeded++# ,
?++- .
$str++/ U
:++V W
$str++X v
;++v w
return,, 
Page,, 
(,, 
),, 
;,, 
}-- 	
}.. 
}// È
çD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
public		 

class		 
AccessDeniedModel		 "
:		# $
	PageModel		% .
{

 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} î	
ÇD:\Source\dotnetcore\secure-coding-samples\missing-access-control\before\OnlineBankingApp\Areas\Identity\IdentityHostingStartup.cs
[

 
assembly

 	
:

	 

HostingStartup

 
(

 
typeof

  
(

  !
OnlineBankingApp

! 1
.

1 2
Areas

2 7
.

7 8
Identity

8 @
.

@ A"
IdentityHostingStartup

A W
)

W X
)

X Y
]

Y Z
	namespace 	
OnlineBankingApp
 
. 
Areas  
.  !
Identity! )
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
context' .
,. /
services0 8
)8 9
=>: <
{= >
} 
) 
; 
} 	
} 
} 