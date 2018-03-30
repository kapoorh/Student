�
AD:\Harsh\Shared\StudentCRUD\StudentCRUD\App_Start\BundleConfig.cs
	namespace 	
StudentCRUD
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} �
AD:\Harsh\Shared\StudentCRUD\StudentCRUD\App_Start\FilterConfig.cs
	namespace 	
StudentCRUD
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} �:
CD:\Harsh\Shared\StudentCRUD\StudentCRUD\App_Start\IdentityConfig.cs
	namespace 	
StudentCRUD
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public 

class 

SmsService 
: #
IIdentityMessageService 5
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
}   	
}!! 
public$$ 

class$$ "
ApplicationUserManager$$ '
:$$( )
UserManager$$* 5
<$$5 6
ApplicationUser$$6 E
>$$E F
{%% 
public&& "
ApplicationUserManager&& %
(&&% &

IUserStore&&& 0
<&&0 1
ApplicationUser&&1 @
>&&@ A
store&&B G
)&&G H
:'' 
base'' 
('' 
store'' 
)'' 
{(( 	
})) 	
public++ 
static++ "
ApplicationUserManager++ ,
Create++- 3
(++3 4"
IdentityFactoryOptions++4 J
<++J K"
ApplicationUserManager++K a
>++a b
options++c j
,++j k
IOwinContext++l x
context	++y �
)
++� �
{,, 	
var-- 
manager-- 
=-- 
new-- "
ApplicationUserManager-- 4
(--4 5
new--5 8
	UserStore--9 B
<--B C
ApplicationUser--C R
>--R S
(--S T
context--T [
.--[ \
Get--\ _
<--_ ` 
ApplicationDbContext--` t
>--t u
(--u v
)--v w
)--w x
)--x y
;--y z
manager// 
.// 
UserValidator// !
=//" #
new//$ '
UserValidator//( 5
<//5 6
ApplicationUser//6 E
>//E F
(//F G
manager//G N
)//N O
{00 *
AllowOnlyAlphanumericUserNames11 .
=11/ 0
false111 6
,116 7
RequireUniqueEmail22 "
=22# $
true22% )
}33 
;33 
manager66 
.66 
PasswordValidator66 %
=66& '
new66( +
PasswordValidator66, =
{77 
RequiredLength88 
=88  
$num88! "
,88" ##
RequireNonLetterOrDigit99 '
=99( )
true99* .
,99. /
RequireDigit:: 
=:: 
true:: #
,::# $
RequireLowercase;;  
=;;! "
true;;# '
,;;' (
RequireUppercase<<  
=<<! "
true<<# '
,<<' (
}== 
;== 
manager@@ 
.@@ '
UserLockoutEnabledByDefault@@ /
=@@0 1
true@@2 6
;@@6 7
managerAA 
.AA )
DefaultAccountLockoutTimeSpanAA 1
=AA2 3
TimeSpanAA4 <
.AA< =
FromMinutesAA= H
(AAH I
$numAAI J
)AAJ K
;AAK L
managerBB 
.BB 0
$MaxFailedAccessAttemptsBeforeLockoutBB 8
=BB9 :
$numBB; <
;BB< =
managerFF 
.FF %
RegisterTwoFactorProviderFF -
(FF- .
$strFF. :
,FF: ;
newFF< ?$
PhoneNumberTokenProviderFF@ X
<FFX Y
ApplicationUserFFY h
>FFh i
{GG 
MessageFormatHH 
=HH 
$strHH  ;
}II 
)II 
;II 
managerJJ 
.JJ %
RegisterTwoFactorProviderJJ -
(JJ- .
$strJJ. :
,JJ: ;
newJJ< ?
EmailTokenProviderJJ@ R
<JJR S
ApplicationUserJJS b
>JJb c
{KK 
SubjectLL 
=LL 
$strLL )
,LL) *

BodyFormatMM 
=MM 
$strMM 8
}NN 
)NN 
;NN 
managerOO 
.OO 
EmailServiceOO  
=OO! "
newOO# &
EmailServiceOO' 3
(OO3 4
)OO4 5
;OO5 6
managerPP 
.PP 

SmsServicePP 
=PP  
newPP! $

SmsServicePP% /
(PP/ 0
)PP0 1
;PP1 2
varQQ "
dataProtectionProviderQQ &
=QQ' (
optionsQQ) 0
.QQ0 1"
DataProtectionProviderQQ1 G
;QQG H
ifRR 
(RR "
dataProtectionProviderRR &
!=RR' )
nullRR* .
)RR. /
{SS 
managerTT 
.TT 
UserTokenProviderTT )
=TT* +
newUU &
DataProtectorTokenProviderUU 2
<UU2 3
ApplicationUserUU3 B
>UUB C
(UUC D"
dataProtectionProviderUUD Z
.UUZ [
CreateUU[ a
(UUa b
$strUUb t
)UUt u
)UUu v
;UUv w
}VV 
returnWW 
managerWW 
;WW 
}XX 	
}YY 
public\\ 

class\\ $
ApplicationSignInManager\\ )
:\\* +
SignInManager\\, 9
<\\9 :
ApplicationUser\\: I
,\\I J
string\\K Q
>\\Q R
{]] 
public^^ $
ApplicationSignInManager^^ '
(^^' ("
ApplicationUserManager^^( >
userManager^^? J
,^^J K"
IAuthenticationManager^^L b!
authenticationManager^^c x
)^^x y
:__ 
base__ 
(__ 
userManager__ 
,__ !
authenticationManager__  5
)__5 6
{`` 	
}aa 	
publiccc 
overridecc 
Taskcc 
<cc 
ClaimsIdentitycc +
>cc+ ,#
CreateUserIdentityAsynccc- D
(ccD E
ApplicationUserccE T
userccU Y
)ccY Z
{dd 	
returnee 
useree 
.ee %
GenerateUserIdentityAsyncee 1
(ee1 2
(ee2 3"
ApplicationUserManageree3 I
)eeI J
UserManagereeJ U
)eeU V
;eeV W
}ff 	
publichh 
statichh $
ApplicationSignInManagerhh .
Createhh/ 5
(hh5 6"
IdentityFactoryOptionshh6 L
<hhL M$
ApplicationSignInManagerhhM e
>hhe f
optionshhg n
,hhn o
IOwinContexthhp |
context	hh} �
)
hh� �
{ii 	
returnjj 
newjj $
ApplicationSignInManagerjj /
(jj/ 0
contextjj0 7
.jj7 8
GetUserManagerjj8 F
<jjF G"
ApplicationUserManagerjjG ]
>jj] ^
(jj^ _
)jj_ `
,jj` a
contextjjb i
.jji j
Authenticationjjj x
)jjx y
;jjy z
}kk 	
}ll 
}mm �
@D:\Harsh\Shared\StudentCRUD\StudentCRUD\App_Start\RouteConfig.cs
	namespace 	
StudentCRUD
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} �
AD:\Harsh\Shared\StudentCRUD\StudentCRUD\App_Start\Startup.Auth.cs
	namespace

 	
StudentCRUD


 
{ 
public 

partial 
class 
Startup  
{ 
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{ 
OnValidateIdentity!! &
=!!' ("
SecurityStampValidator!!) ?
.!!? @
OnValidateIdentity!!@ R
<!!R S"
ApplicationUserManager!!S i
,!!i j
ApplicationUser!!k z
>!!z {
(!!{ |
validateInterval"" (
:""( )
TimeSpan""* 2
.""2 3
FromMinutes""3 >
(""> ?
$num""? A
)""A B
,""B C
regenerateIdentity## *
:##* +
(##, -
manager##- 4
,##4 5
user##6 :
)##: ;
=>##< >
user##? C
.##C D%
GenerateUserIdentityAsync##D ]
(##] ^
manager##^ e
)##e f
)##f g
}$$ 
}%% 
)%% 
;%% 
app&& 
.&& #
UseExternalSignInCookie&& '
(&&' (&
DefaultAuthenticationTypes&&( B
.&&B C
ExternalCookie&&C Q
)&&Q R
;&&R S
app)) 
.)) $
UseTwoFactorSignInCookie)) (
())( )&
DefaultAuthenticationTypes))) C
.))C D
TwoFactorCookie))D S
,))S T
TimeSpan))U ]
.))] ^
FromMinutes))^ i
())i j
$num))j k
)))k l
)))l m
;))m n
app.. 
... -
!UseTwoFactorRememberBrowserCookie.. 1
(..1 2&
DefaultAuthenticationTypes..2 L
...L M*
TwoFactorRememberBrowserCookie..M k
)..k l
;..l m
}BB 	
}CC 
}DD ��
HD:\Harsh\Shared\StudentCRUD\StudentCRUD\Controllers\AccountController.cs
	namespace 	
StudentCRUD
 
. 
Controllers !
{ 
[ 
	Authorize 
] 
public 

class 
AccountController "
:# $

Controller% /
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
AccountController  
(  !
)! "
{ 	
} 	
public 
AccountController  
(  !"
ApplicationUserManager! 7
userManager8 C
,C D$
ApplicationSignInManagerE ]
signInManager^ k
)l m
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{   	
get!! 
{"" 
return## 
_signInManager## %
??##& (
HttpContext##) 4
.##4 5
GetOwinContext##5 C
(##C D
)##D E
.##E F
Get##F I
<##I J$
ApplicationSignInManager##J b
>##b c
(##c d
)##d e
;##e f
}$$ 
private%% 
set%% 
{&& 
_signInManager'' 
=''  
value''! &
;''& '
}(( 
})) 	
public++ "
ApplicationUserManager++ %
UserManager++& 1
{,, 	
get-- 
{.. 
return// 
_userManager// #
??//$ &
HttpContext//' 2
.//2 3
GetOwinContext//3 A
(//A B
)//B C
.//C D
GetUserManager//D R
<//R S"
ApplicationUserManager//S i
>//i j
(//j k
)//k l
;//l m
}00 
private11 
set11 
{22 
_userManager33 
=33 
value33 $
;33$ %
}44 
}55 	
[99 	
AllowAnonymous99	 
]99 
public:: 
ActionResult:: 
Login:: !
(::! "
string::" (
	returnUrl::) 2
)::2 3
{;; 	
ViewBag<< 
.<< 
	ReturnUrl<< 
=<< 
	returnUrl<<  )
;<<) *
return== 
View== 
(== 
)== 
;== 
}>> 	
[BB 	
HttpPostBB	 
]BB 
[CC 	
AllowAnonymousCC	 
]CC 
[DD 	$
ValidateAntiForgeryTokenDD	 !
]DD! "
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
>EE& '
LoginEE( -
(EE- .
LoginViewModelEE. <
modelEE= B
,EEB C
stringEED J
	returnUrlEEK T
)EET U
{FF 	
ifGG 
(GG 
!GG 

ModelStateGG 
.GG 
IsValidGG #
)GG# $
{HH 
returnII 
ViewII 
(II 
modelII !
)II! "
;II" #
}JJ 
varNN 
resultNN 
=NN 
awaitNN 
SignInManagerNN ,
.NN, -
PasswordSignInAsyncNN- @
(NN@ A
modelNNA F
.NNF G
EmailNNG L
,NNL M
modelNNN S
.NNS T
PasswordNNT \
,NN\ ]
modelNN^ c
.NNc d

RememberMeNNd n
,NNn o
shouldLockoutNNp }
:NN} ~
false	NN �
)
NN� �
;
NN� �
switchOO 
(OO 
resultOO 
)OO 
{PP 
caseQQ 
SignInStatusQQ !
.QQ! "
SuccessQQ" )
:QQ) *
returnRR 
RedirectToLocalRR *
(RR* +
	returnUrlRR+ 4
)RR4 5
;RR5 6
caseSS 
SignInStatusSS !
.SS! "
	LockedOutSS" +
:SS+ ,
returnTT 
ViewTT 
(TT  
$strTT  )
)TT) *
;TT* +
caseUU 
SignInStatusUU !
.UU! " 
RequiresVerificationUU" 6
:UU6 7
returnVV 
RedirectToActionVV +
(VV+ ,
$strVV, 6
,VV6 7
newVV8 ;
{VV< =
	ReturnUrlVV> G
=VVH I
	returnUrlVVJ S
,VVS T

RememberMeVVU _
=VV` a
modelVVb g
.VVg h

RememberMeVVh r
}VVs t
)VVt u
;VVu v
caseWW 
SignInStatusWW !
.WW! "
FailureWW" )
:WW) *
defaultXX 
:XX 

ModelStateYY 
.YY 
AddModelErrorYY ,
(YY, -
$strYY- /
,YY/ 0
$strYY1 I
)YYI J
;YYJ K
returnZZ 
ViewZZ 
(ZZ  
modelZZ  %
)ZZ% &
;ZZ& '
}[[ 
}\\ 	
[`` 	
AllowAnonymous``	 
]`` 
publicaa 
asyncaa 
Taskaa 
<aa 
ActionResultaa &
>aa& '

VerifyCodeaa( 2
(aa2 3
stringaa3 9
provideraa: B
,aaB C
stringaaD J
	returnUrlaaK T
,aaT U
boolaaV Z

rememberMeaa[ e
)aae f
{bb 	
ifdd 
(dd 
!dd 
awaitdd 
SignInManagerdd $
.dd$ % 
HasBeenVerifiedAsyncdd% 9
(dd9 :
)dd: ;
)dd; <
{ee 
returnff 
Viewff 
(ff 
$strff #
)ff# $
;ff$ %
}gg 
returnhh 
Viewhh 
(hh 
newhh 
VerifyCodeViewModelhh /
{hh0 1
Providerhh2 :
=hh; <
providerhh= E
,hhE F
	ReturnUrlhhG P
=hhQ R
	returnUrlhhS \
,hh\ ]

RememberMehh^ h
=hhi j

rememberMehhk u
}hhv w
)hhw x
;hhx y
}ii 	
[mm 	
HttpPostmm	 
]mm 
[nn 	
AllowAnonymousnn	 
]nn 
[oo 	$
ValidateAntiForgeryTokenoo	 !
]oo! "
publicpp 
asyncpp 
Taskpp 
<pp 
ActionResultpp &
>pp& '

VerifyCodepp( 2
(pp2 3
VerifyCodeViewModelpp3 F
modelppG L
)ppL M
{qq 	
ifrr 
(rr 
!rr 

ModelStaterr 
.rr 
IsValidrr #
)rr# $
{ss 
returntt 
Viewtt 
(tt 
modeltt !
)tt! "
;tt" #
}uu 
var{{ 
result{{ 
={{ 
await{{ 
SignInManager{{ ,
.{{, - 
TwoFactorSignInAsync{{- A
({{A B
model{{B G
.{{G H
Provider{{H P
,{{P Q
model{{R W
.{{W X
Code{{X \
,{{\ ]
isPersistent{{^ j
:{{j k
model{{m r
.{{r s

RememberMe{{s }
,{{} ~
rememberBrowser	{{ �
:
{{� �
model
{{� �
.
{{� �
RememberBrowser
{{� �
)
{{� �
;
{{� �
switch|| 
(|| 
result|| 
)|| 
{}} 
case~~ 
SignInStatus~~ !
.~~! "
Success~~" )
:~~) *
return 
RedirectToLocal *
(* +
model+ 0
.0 1
	ReturnUrl1 :
): ;
;; <
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
$str
��- /
,
��/ 0
$str
��1 @
)
��@ A
;
��A B
return
�� 
View
�� 
(
��  
model
��  %
)
��% &
;
��& '
}
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
Register
�� $
(
��$ %
)
��% &
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Register
��( 0
(
��0 1
RegisterViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
,
��? @
model
��A F
.
��F G
Password
��G O
)
��O P
;
��P Q
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��G L
,
��L M
rememberBrowser
��N ]
:
��] ^
false
��^ c
)
��c d
;
��d e
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 ;
)
��; <
;
��< =
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ConfirmEmail
��( 4
(
��4 5
string
��5 ;
userId
��< B
,
��B C
string
��D J
code
��K O
)
��O P
{
�� 	
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
||
�� !
code
��" &
==
��' )
null
��* .
)
��. /
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
ConfirmEmailAsync
��+ <
(
��< =
userId
��= C
,
��C D
code
��E I
)
��I J
;
��J K
return
�� 
View
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
?
��) *
$str
��+ 9
:
��: ;
$str
��< C
)
��C D
;
��D E
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ForgotPassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ForgotPassword
��( 6
(
��6 7%
ForgotPasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByNameAsync
��- <
(
��< =
model
��= B
.
��B C
Email
��C H
)
��H I
;
��I J
if
�� 
(
�� 
user
�� 
==
�� 
null
��  
||
��! #
!
��$ %
(
��% &
await
��& +
UserManager
��, 7
.
��7 8#
IsEmailConfirmedAsync
��8 M
(
��M N
user
��N R
.
��R S
Id
��S U
)
��U V
)
��V W
)
��W X
{
�� 
return
�� 
View
�� 
(
��  
$str
��  <
)
��< =
;
��= >
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� (
ForgotPasswordConfirmation
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ResetPassword
�� )
(
��) *
string
��* 0
code
��1 5
)
��5 6
{
�� 	
return
�� 
code
�� 
==
�� 
null
�� 
?
��  !
View
��" &
(
��& '
$str
��' .
)
��. /
:
��0 1
View
��2 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ResetPassword
��( 5
(
��5 6$
ResetPasswordViewModel
��6 L
model
��M R
)
��R S
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByNameAsync
��) 8
(
��8 9
model
��9 >
.
��> ?
Email
��? D
)
��D E
;
��E F
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* + 
ResetPasswordAsync
��+ =
(
��= >
user
��> B
.
��B C
Id
��C E
,
��E F
model
��G L
.
��L M
Code
��M Q
,
��Q R
model
��S X
.
��X Y
Password
��Y a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� '
ResetPasswordConfirmation
�� 5
(
��5 6
)
��6 7
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
ExternalLogin
�� )
(
��) *
string
��* 0
provider
��1 9
,
��9 :
string
��; A
	returnUrl
��B K
)
��K L
{
�� 	
return
�� 
new
�� 
ChallengeResult
�� &
(
��& '
provider
��' /
,
��/ 0
Url
��1 4
.
��4 5
Action
��5 ;
(
��; <
$str
��< S
,
��S T
$str
��U ^
,
��^ _
new
��` c
{
��d e
	ReturnUrl
��f o
=
��p q
	returnUrl
��r {
}
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
string
��1 7
	returnUrl
��8 A
,
��A B
bool
��C G

rememberMe
��H R
)
��R S
{
�� 	
var
�� 
userId
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -$
GetVerifiedUserIdAsync
��- C
(
��C D
)
��D E
;
��E F
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
userFactors
�� 
=
�� 
await
�� #
UserManager
��$ /
.
��/ 0-
GetValidTwoFactorProvidersAsync
��0 O
(
��O P
userId
��P V
)
��V W
;
��W X
var
�� 
factorOptions
�� 
=
�� 
userFactors
��  +
.
��+ ,
Select
��, 2
(
��2 3
purpose
��3 :
=>
��; =
new
��> A
SelectListItem
��B P
{
��Q R
Text
��S W
=
��X Y
purpose
��Z a
,
��a b
Value
��c h
=
��i j
purpose
��k r
}
��s t
)
��t u
.
��u v
ToList
��v |
(
��| }
)
��} ~
;
��~ 
return
�� 
View
�� 
(
�� 
new
�� 
SendCodeViewModel
�� -
{
��. /
	Providers
��0 9
=
��: ;
factorOptions
��< I
,
��I J
	ReturnUrl
��K T
=
��U V
	returnUrl
��W `
,
��` a

RememberMe
��b l
=
��m n

rememberMe
��o y
}
��z {
)
��{ |
;
��| }
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
SendCodeViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
await
�� 
SignInManager
�� $
.
��$ %$
SendTwoFactorCodeAsync
��% ;
(
��; <
model
��< A
.
��A B
SelectedProvider
��B R
)
��R S
)
��S T
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 0
,
��0 1
new
��2 5
{
��6 7
Provider
��8 @
=
��A B
model
��C H
.
��H I
SelectedProvider
��I Y
,
��Y Z
	ReturnUrl
��[ d
=
��e f
model
��g l
.
��l m
	ReturnUrl
��m v
,
��v w

RememberMe��x �
=��� �
model��� �
.��� �

RememberMe��� �
}��� �
)��� �
;��� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '#
ExternalLoginCallback
��( =
(
��= >
string
��> D
	returnUrl
��E N
)
��N O
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
)
��R S
;
��S T
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -!
ExternalSignInAsync
��- @
(
��@ A
	loginInfo
��A J
,
��J K
isPersistent
��L X
:
��X Y
false
��Z _
)
��_ `
;
��` a
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
case
�� 
SignInStatus
�� !
.
��! "
Success
��" )
:
��) *
return
�� 
RedirectToLocal
�� *
(
��* +
	returnUrl
��+ 4
)
��4 5
;
��5 6
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! ""
RequiresVerification
��" 6
:
��6 7
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 6
,
��6 7
new
��8 ;
{
��< =
	ReturnUrl
��> G
=
��H I
	returnUrl
��J S
,
��S T

RememberMe
��U _
=
��` a
false
��b g
}
��h i
)
��i j
;
��j k
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� %
=
��& '
	returnUrl
��( 1
;
��1 2
ViewBag
�� 
.
�� 
LoginProvider
�� )
=
��* +
	loginInfo
��, 5
.
��5 6
Login
��6 ;
.
��; <
LoginProvider
��< I
;
��I J
return
�� 
View
�� 
(
��  
$str
��  ;
,
��; <
new
��= @0
"ExternalLoginConfirmationViewModel
��A c
{
��d e
Email
��f k
=
��l m
	loginInfo
��n w
.
��w x
Email
��x }
}
��~ 
)�� �
;��� �
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ''
ExternalLoginConfirmation
��( A
(
��A B0
"ExternalLoginConfirmationViewModel
��B d
model
��e j
,
��j k
string
��l r
	returnUrl
��s |
)
��| }
{
�� 	
if
�� 
(
�� 
User
�� 
.
�� 
Identity
�� 
.
�� 
IsAuthenticated
�� -
)
��- .
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
info
�� 
=
�� 
await
��  #
AuthenticationManager
��! 6
.
��6 7'
GetExternalLoginInfoAsync
��7 P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
info
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
View
�� 
(
��  
$str
��  6
)
��6 7
;
��7 8
}
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddLoginAsync
��/ <
(
��< =
user
��= A
.
��A B
Id
��B D
,
��D E
info
��F J
.
��J K
Login
��K P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
return
�� 
RedirectToLocal
�� .
(
��. /
	returnUrl
��/ 8
)
��8 9
;
��9 :
}
�� 
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
;
��) *
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
LogOff
�� "
(
��" #
)
��# $
{
�� 	#
AuthenticationManager
�� !
.
��! "
SignOut
��" )
(
��) *(
DefaultAuthenticationTypes
��* D
.
��D E
ApplicationCookie
��E V
)
��V W
;
��W X
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� "
ExternalLoginFailure
�� 0
(
��0 1
)
��1 2
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_userManager
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
_userManager
��  
.
��  !
Dispose
��! (
(
��( )
)
��) *
;
��* +
_userManager
��  
=
��! "
null
��# '
;
��' (
}
�� 
if
�� 
(
�� 
_signInManager
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
_signInManager
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
_signInManager
�� "
=
��# $
null
��% )
;
��) *
}
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
ActionResult
�� 
RedirectToLocal
�� ,
(
��, -
string
��- 3
	returnUrl
��4 =
)
��= >
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
class
�� 
ChallengeResult
�� &
:
��' ($
HttpUnauthorizedResult
��) ?
{
�� 	
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
)
��F G
:
�� 
this
�� 
(
�� 
provider
�� 
,
��  
redirectUri
��! ,
,
��, -
null
��. 2
)
��2 3
{
�� 
}
�� 
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
,
��F G
string
��H N
userId
��O U
)
��U V
{
�� 
LoginProvider
�� 
=
�� 
provider
��  (
;
��( )
RedirectUri
�� 
=
�� 
redirectUri
�� )
;
��) *
UserId
�� 
=
�� 
userId
�� 
;
��  
}
�� 
public
�� 
string
�� 
LoginProvider
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
RedirectUri
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
UserId
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
override
�� 
void
��  
ExecuteResult
��! .
(
��. /
ControllerContext
��/ @
context
��A H
)
��H I
{
�� 
var
�� 

properties
�� 
=
��  
new
��! $&
AuthenticationProperties
��% =
{
��> ?
RedirectUri
��@ K
=
��L M
RedirectUri
��N Y
}
��Z [
;
��[ \
if
�� 
(
�� 
UserId
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

properties
�� 
.
�� 

Dictionary
�� )
[
��) *
XsrfKey
��* 1
]
��1 2
=
��3 4
UserId
��5 ;
;
��; <
}
�� 
context
�� 
.
�� 
HttpContext
�� #
.
��# $
GetOwinContext
��$ 2
(
��2 3
)
��3 4
.
��4 5
Authentication
��5 C
.
��C D
	Challenge
��D M
(
��M N

properties
��N X
,
��X Y
LoginProvider
��Z g
)
��g h
;
��h i
}
�� 
}
�� 	
}
�� 
}�� �k
ED:\Harsh\Shared\StudentCRUD\StudentCRUD\Controllers\HomeController.cs
	namespace 	
StudentCRUD
 
. 
Controllers !
{		 
public

 

class

 
HomeController

 
:

  !

Controller

" ,
{ 
private 

unitofwork 

unitofWork %
=& '
null( ,
;, -
public 
HomeController 
( 
) 
:  !
this" &
(& '
new' *

unitofwork+ 5
(5 6
)6 7
)7 8
{ 	
} 	
public 
HomeController 
( 

unitofwork (
uow) ,
), -
{ 	
this 
. 

unitofWork 
= 
uow !
;! "
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
StudentRepository 
studentrepository /
=0 1
new2 5
StudentRepository6 G
(G H
)H I
;I J
List 
< 
StudentsModel 
>  
allstudents! ,
=- .
studentrepository/ @
.@ A
GetStudentsA L
(L M
)M N
;N O
return 
View 
( 
allstudents #
)# $
;$ %
} 	
public   
ActionResult   
Details   #
(  # $
int  $ '
id  ( *
=  * +
$num  + ,
)  , -
{!! 	
StudentRepository"" 
studentrepository"" /
=""0 1
new""2 5
StudentRepository""6 G
(""G H
)""H I
;""I J
List## 
<## 
StudentsModel## 
>## 
allstudents##  +
=##, -
studentrepository##. ?
.##? @
GetStudents##@ K
(##K L
)##L M
;##M N
StudentsModel$$ 
studentmodeldet$$ )
=$$* +
allstudents$$, 7
.$$7 8
SingleOrDefault$$8 G
($$G H
x$$H I
=>$$I K
x$$K L
.$$L M
ID$$M O
==$$O Q
id$$Q S
)$$S T
;$$T U
if%% 
(%% 
studentmodeldet%% 
==%%  "
null%%# '
)%%' (
{&& 
return'' 
HttpNotFound'' #
(''# $
)''$ %
;''% &
}(( 
return)) 
View)) 
()) 
studentmodeldet)) '
)))' (
;))( )
}** 	
[++ 	
HttpGet++	 
]++ 
public,, 
ActionResult,, 
Create,, "
(,," #
),,# $
{-- 	
return.. 
View.. 
(.. 
).. 
;.. 
}// 	
[44 	
HttpPost44	 
]44 
public55 
ActionResult55 
Create55 "
(55" #
FormCollection55# 1

collection552 <
)55< =
{66 	
try77 
{88 
StudentsModel:: 
studentmodel:: *
=::+ ,
new::- 0
StudentsModel::1 >
(::> ?
)::? @
;::@ A
studentmodel<< 
.<< 

First_Name<< '
=<<( )

collection<<* 4
[<<4 5
$str<<5 A
]<<A B
.<<B C
ToString<<C K
(<<K L
)<<L M
;<<M N
studentmodel== 
.== 
	Last_Name== &
===' (

collection==) 3
[==3 4
$str==4 ?
]==? @
.==@ A
ToString==A I
(==I J
)==J K
;==K L
studentmodel>> 
.>> 
Email>> "
=>># $

collection>>% /
[>>/ 0
$str>>0 7
]>>7 8
.>>8 9
ToString>>9 A
(>>A B
)>>B C
;>>C D
studentmodel?? 
.?? 
Dob??  
=??! "
Convert??# *
.??* +

ToDateTime??+ 5
(??5 6

collection??6 @
[??@ A
$str??A F
]??F G
.??G H
ToString??H P
(??P Q
)??Q R
)??R S
;??S T
studentmodel@@ 
.@@ 
Gender@@ #
=@@$ %

collection@@& 0
[@@0 1
$str@@1 9
]@@9 :
.@@: ;
ToString@@; C
(@@C D
)@@D E
;@@E F
studentmodelAA 
.AA 
AddressAA $
=AA% &

collectionAA' 1
[AA1 2
$strAA2 ;
]AA; <
.AA< =
ToStringAA= E
(AAE F
)AAF G
;AAG H
studentmodelBB 
.BB 
CityBB !
=BB" #

collectionBB$ .
[BB. /
$strBB/ 5
]BB5 6
.BB6 7
ToStringBB7 ?
(BB? @
)BB@ A
;BBA B
studentmodelCC 
.CC 
StateCC "
=CC# $

collectionCC% /
[CC/ 0
$strCC0 7
]CC7 8
.CC8 9
ToStringCC9 A
(CCA B
)CCB C
;CCC D
studentmodelDD 
.DD 
PinDD  
=DD! "

collectionDD# -
[DD- .
$strDD. 3
]DD3 4
.DD4 5
ToStringDD5 =
(DD= >
)DD> ?
;DD? @
StudentRepositoryFF !
studentrepositoryFF" 3
=FF4 5
newFF6 9
StudentRepositoryFF: K
(FFK L
)FFL M
;FFM N
studentrepositoryGG !
.GG! "
InsertStudentsModelGG" 5
(GG5 6
studentmodelGG6 B
)GGB C
;GGC D
returnHH 
RedirectToActionHH '
(HH' (
$strHH( /
)HH/ 0
;HH0 1
}II 
catchJJ 
{KK 
returnLL 
ViewLL 
(LL 
)LL 
;LL 
}MM 
}NN 	
[RR 	
HttpGetRR	 
]RR 
publicSS 
ActionResultSS 
EditSS  
(SS  !
intSS! $
idSS% '
)SS' (
{TT 	
StudentRepositoryUU 
studentrepositoryUU /
=UU0 1
newUU2 5
StudentRepositoryUU6 G
(UUG H
)UUH I
;UUI J
ListVV 
<VV 
StudentsModelVV 
>VV 
allstudentsVV  +
=VV, -
studentrepositoryVV. ?
.VV? @
GetStudentsVV@ K
(VVK L
)VVL M
;VVM N
StudentsModelWW 
studentmodeldetWW )
=WW* +
allstudentsWW, 7
.WW7 8
SingleOrDefaultWW8 G
(WWG H
xWWH I
=>WWJ L
xWWM N
.WWN O
IDWWO Q
==WWR T
idWWU W
)WWW X
;WWX Y
returnXX 
ViewXX 
(XX 
studentmodeldetXX '
)XX' (
;XX( )
}YY 	
[[[ 	
HttpPost[[	 
][[ 
public\\ 
ActionResult\\ 
Edit\\  
(\\  !
int\\! $
id\\% '
,\\' (
FormCollection\\) 7
frmcollection\\8 E
)\\E F
{]] 	
if^^ 
(^^ 

ModelState^^ 
.^^ 
IsValid^^ "
)^^" #
{__ 
StudentRepository`` !
studentrepository``" 3
=``4 5
new``6 9
StudentRepository``: K
(``K L
)``L M
;``M N
Listaa 
<aa 
StudentsModelaa "
>aa" #
allstudentsaa$ /
=aa0 1
studentrepositoryaa2 C
.aaC D
GetStudentsaaD O
(aaO P
)aaP Q
;aaQ R
StudentsModelbb 
studentmodeleditbb .
=bb/ 0
allstudentsbb1 <
.bb< =
FirstOrDefaultbb= K
(bbK L
xbbL M
=>bbN P
xbbQ R
.bbR S
IDbbS U
==bbV X
idbbY [
)bb[ \
;bb\ ]
studentmodeleditcc  
.cc  !
IDcc! #
=cc$ %
idcc& (
;cc( )
studentmodeleditee  
.ee  !

First_Nameee! +
=ee, -
frmcollectionee. ;
[ee; <
$stree< H
]eeH I
.eeI J
ToStringeeJ R
(eeR S
)eeS T
;eeT U
studentmodeleditff  
.ff  !
	Last_Nameff! *
=ff+ ,
frmcollectionff- :
[ff: ;
$strff; F
]ffF G
.ffG H
ToStringffH P
(ffP Q
)ffQ R
;ffR S
studentmodeleditgg  
.gg  !
Emailgg! &
=gg' (
frmcollectiongg) 6
[gg6 7
$strgg7 >
]gg> ?
.gg? @
ToStringgg@ H
(ggH I
)ggI J
;ggJ K
studentmodeledithh  
.hh  !
Dobhh! $
=hh% &
Converthh' .
.hh. /

ToDateTimehh/ 9
(hh9 :
frmcollectionhh: G
[hhG H
$strhhH M
]hhM N
.hhN O
ToStringhhO W
(hhW X
)hhX Y
)hhY Z
;hhZ [
studentmodeleditii  
.ii  !
Genderii! '
=ii( )
frmcollectionii* 7
[ii7 8
$strii8 @
]ii@ A
.iiA B
ToStringiiB J
(iiJ K
)iiK L
;iiL M
studentmodeleditjj  
.jj  !
Addressjj! (
=jj) *
frmcollectionjj+ 8
[jj8 9
$strjj9 B
]jjB C
.jjC D
ToStringjjD L
(jjL M
)jjM N
;jjN O
studentmodeleditkk  
.kk  !
Citykk! %
=kk& '
frmcollectionkk( 5
[kk5 6
$strkk6 <
]kk< =
.kk= >
ToStringkk> F
(kkF G
)kkG H
;kkH I
studentmodeleditll  
.ll  !
Statell! &
=ll' (
frmcollectionll) 6
[ll6 7
$strll7 >
]ll> ?
.ll? @
ToStringll@ H
(llH I
)llI J
;llJ K
studentmodeleditmm  
.mm  !
Pinmm! $
=mm% &
frmcollectionmm' 4
[mm4 5
$strmm5 :
]mm: ;
.mm; <
ToStringmm< D
(mmD E
)mmE F
;mmF G
studentrepositoryoo !
.oo! "
EditStudentsModeloo" 3
(oo3 4
studentmodeleditoo4 D
)ooD E
;ooE F
returnpp 
RedirectToActionpp '
(pp' (
$strpp( /
)pp/ 0
;pp0 1
}qq 
returnss 
Viewss 
(ss 
)ss 
;ss 
}tt 	
[vv 	
HttpGetvv	 
]vv 
publicww 
ActionResultww 
Deleteww "
(ww" #
intww# &
idww' )
)ww) *
{xx 	
StudentRepositoryyy 
studentrepositoryyy /
=yy0 1
newyy2 5
StudentRepositoryyy6 G
(yyG H
)yyH I
;yyI J
Listzz 
<zz 
StudentsModelzz 
>zz 
allstudentszz  +
=zz, -
studentrepositoryzz. ?
.zz? @
GetStudentszz@ K
(zzK L
)zzL M
;zzM N
StudentsModel{{ 
studentmodeldet{{ )
={{* +
allstudents{{, 7
.{{7 8
SingleOrDefault{{8 G
({{G H
x{{H I
=>{{J L
x{{M N
.{{N O
ID{{O Q
=={{R T
id{{U W
){{W X
;{{X Y
return|| 
View|| 
(|| 
studentmodeldet|| '
)||' (
;||( )
}}} 	
[ 	
HttpPost	 
] 
public
�� 
ActionResult
�� 
Delete
�� "
(
��" #
int
��# &
id
��' )
,
��) *
FormCollection
��* 8
formcollection
��9 G
)
��G H
{
�� 	
try
�� 
{
�� 
StudentRepository
�� !
studentrepository
��" 3
=
��4 5
new
��6 9
StudentRepository
��: K
(
��K L
)
��L M
;
��M N
studentrepository
�� !
.
��! "!
DeleteStudentsModel
��" 5
(
��5 6
id
��6 8
)
��8 9
;
��9 :
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� 
exp
�� 
)
��  
{
�� 
throw
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
ActionResult
�� 
About
�� !
(
��! "
)
��" #
{
�� 	
ViewBag
�� 
.
�� 
Message
�� 
=
�� 
$str
�� B
;
��B C
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
Contact
�� #
(
��# $
)
��$ %
{
�� 	
ViewBag
�� 
.
�� 
Message
�� 
=
�� 
$str
�� 2
;
��2 3
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
GD:\Harsh\Shared\StudentCRUD\StudentCRUD\Controllers\ManageController.cs
	namespace 	
StudentCRUD
 
. 
Controllers !
{ 
[ 
	Authorize 
] 
public 

class 
ManageController !
:" #

Controller$ .
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
ManageController 
(  
)  !
{ 	
} 	
public 
ManageController 
(  "
ApplicationUserManager  6
userManager7 B
,B C$
ApplicationSignInManagerD \
signInManager] j
)j k
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{ 	
get 
{   
return!! 
_signInManager!! %
??!!& (
HttpContext!!) 4
.!!4 5
GetOwinContext!!5 C
(!!C D
)!!D E
.!!E F
Get!!F I
<!!I J$
ApplicationSignInManager!!J b
>!!b c
(!!c d
)!!d e
;!!e f
}"" 
private## 
set## 
{$$ 
_signInManager%% 
=%%  
value%%! &
;%%& '
}&& 
}'' 	
public)) "
ApplicationUserManager)) %
UserManager))& 1
{** 	
get++ 
{,, 
return-- 
_userManager-- #
??--$ &
HttpContext--' 2
.--2 3
GetOwinContext--3 A
(--A B
)--B C
.--C D
GetUserManager--D R
<--R S"
ApplicationUserManager--S i
>--i j
(--j k
)--k l
;--l m
}.. 
private// 
set// 
{00 
_userManager11 
=11 
value11 $
;11$ %
}22 
}33 	
public77 
async77 
Task77 
<77 
ActionResult77 &
>77& '
Index77( -
(77- .
ManageMessageId77. =
?77= >
message77? F
)77F G
{88 	
ViewBag99 
.99 
StatusMessage99 !
=99" #
message:: 
==:: 
ManageMessageId:: *
.::* +!
ChangePasswordSuccess::+ @
?::A B
$str::C d
:;; 
message;; 
==;; 
ManageMessageId;; ,
.;;, -
SetPasswordSuccess;;- ?
?;;@ A
$str;;B _
:<< 
message<< 
==<< 
ManageMessageId<< ,
.<<, -
SetTwoFactorSuccess<<- @
?<<A B
$str<<C z
:== 
message== 
==== 
ManageMessageId== ,
.==, -
Error==- 2
?==3 4
$str==5 M
:>> 
message>> 
==>> 
ManageMessageId>> ,
.>>, -
AddPhoneSuccess>>- <
?>>= >
$str>>? ]
:?? 
message?? 
==?? 
ManageMessageId?? ,
.??, -
RemovePhoneSuccess??- ?
???@ A
$str??B b
:@@ 
$str@@ 
;@@ 
varBB 
userIdBB 
=BB 
UserBB 
.BB 
IdentityBB &
.BB& '
	GetUserIdBB' 0
(BB0 1
)BB1 2
;BB2 3
varCC 
modelCC 
=CC 
newCC 
IndexViewModelCC *
{DD 
HasPasswordEE 
=EE 
HasPasswordEE )
(EE) *
)EE* +
,EE+ ,
PhoneNumberFF 
=FF 
awaitFF #
UserManagerFF$ /
.FF/ 0
GetPhoneNumberAsyncFF0 C
(FFC D
userIdFFD J
)FFJ K
,FFK L
	TwoFactorGG 
=GG 
awaitGG !
UserManagerGG" -
.GG- .$
GetTwoFactorEnabledAsyncGG. F
(GGF G
userIdGGG M
)GGM N
,GGN O
LoginsHH 
=HH 
awaitHH 
UserManagerHH *
.HH* +
GetLoginsAsyncHH+ 9
(HH9 :
userIdHH: @
)HH@ A
,HHA B
BrowserRememberedII !
=II" #
awaitII$ )!
AuthenticationManagerII* ?
.II? @+
TwoFactorBrowserRememberedAsyncII@ _
(II_ `
userIdII` f
)IIf g
}JJ 
;JJ 
returnKK 
ViewKK 
(KK 
modelKK 
)KK 
;KK 
}LL 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
asyncRR 
TaskRR 
<RR 
ActionResultRR &
>RR& '
RemoveLoginRR( 3
(RR3 4
stringRR4 :
loginProviderRR; H
,RRH I
stringRRJ P
providerKeyRRQ \
)RR\ ]
{SS 	
ManageMessageIdTT 
?TT 
messageTT $
;TT$ %
varUU 
resultUU 
=UU 
awaitUU 
UserManagerUU *
.UU* +
RemoveLoginAsyncUU+ ;
(UU; <
UserUU< @
.UU@ A
IdentityUUA I
.UUI J
	GetUserIdUUJ S
(UUS T
)UUT U
,UUU V
newUUW Z
UserLoginInfoUU[ h
(UUh i
loginProviderUUi v
,UUv w
providerKey	UUx �
)
UU� �
)
UU� �
;
UU� �
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV  
)VV  !
{WW 
varXX 
userXX 
=XX 
awaitXX  
UserManagerXX! ,
.XX, -
FindByIdAsyncXX- :
(XX: ;
UserXX; ?
.XX? @
IdentityXX@ H
.XXH I
	GetUserIdXXI R
(XXR S
)XXS T
)XXT U
;XXU V
ifYY 
(YY 
userYY 
!=YY 
nullYY  
)YY  !
{ZZ 
await[[ 
SignInManager[[ '
.[[' (
SignInAsync[[( 3
([[3 4
user[[4 8
,[[8 9
isPersistent[[: F
:[[F G
false[[H M
,[[M N
rememberBrowser[[O ^
:[[^ _
false[[` e
)[[e f
;[[f g
}\\ 
message]] 
=]] 
ManageMessageId]] )
.]]) *
RemoveLoginSuccess]]* <
;]]< =
}^^ 
else__ 
{`` 
messageaa 
=aa 
ManageMessageIdaa )
.aa) *
Erroraa* /
;aa/ 0
}bb 
returncc 
RedirectToActioncc #
(cc# $
$strcc$ 2
,cc2 3
newcc4 7
{cc8 9
Messagecc: A
=ccB C
messageccD K
}ccL M
)ccM N
;ccN O
}dd 	
publichh 
ActionResulthh 
AddPhoneNumberhh *
(hh* +
)hh+ ,
{ii 	
returnjj 
Viewjj 
(jj 
)jj 
;jj 
}kk 	
[oo 	
HttpPostoo	 
]oo 
[pp 	$
ValidateAntiForgeryTokenpp	 !
]pp! "
publicqq 
asyncqq 
Taskqq 
<qq 
ActionResultqq &
>qq& '
AddPhoneNumberqq( 6
(qq6 7#
AddPhoneNumberViewModelqq7 N
modelqqO T
)qqT U
{rr 	
ifss 
(ss 
!ss 

ModelStatess 
.ss 
IsValidss #
)ss# $
{tt 
returnuu 
Viewuu 
(uu 
modeluu !
)uu! "
;uu" #
}vv 
varxx 
codexx 
=xx 
awaitxx 
UserManagerxx (
.xx( )/
#GenerateChangePhoneNumberTokenAsyncxx) L
(xxL M
UserxxM Q
.xxQ R
IdentityxxR Z
.xxZ [
	GetUserIdxx[ d
(xxd e
)xxe f
,xxf g
modelxxh m
.xxm n
Numberxxn t
)xxt u
;xxu v
ifyy 
(yy 
UserManageryy 
.yy 

SmsServiceyy &
!=yy' )
nullyy* .
)yy. /
{zz 
var{{ 
message{{ 
={{ 
new{{ !
IdentityMessage{{" 1
{|| 
Destination}} 
=}}  !
model}}" '
.}}' (
Number}}( .
,}}. /
Body~~ 
=~~ 
$str~~ 4
+~~5 6
code~~7 ;
} 
; 
await
�� 
UserManager
�� !
.
��! "

SmsService
��" ,
.
��, -
	SendAsync
��- 6
(
��6 7
message
��7 >
)
��> ?
;
��? @
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 7
,
��7 8
new
��9 <
{
��= >
PhoneNumber
��? J
=
��K L
model
��M R
.
��R S
Number
��S Y
}
��Z [
)
��[ \
;
��\ ]
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '+
EnableTwoFactorAuthentication
��( E
(
��E F
)
��F G
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
true
��R V
)
��V W
;
��W X
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ',
DisableTwoFactorAuthentication
��( F
(
��F G
)
��G H
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
false
��R W
)
��W X
;
��X Y
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :
string
��: @
phoneNumber
��A L
)
��L M
{
�� 	
var
�� 
code
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )1
#GenerateChangePhoneNumberTokenAsync
��) L
(
��L M
User
��M Q
.
��Q R
Identity
��R Z
.
��Z [
	GetUserId
��[ d
(
��d e
)
��e f
,
��f g
phoneNumber
��h s
)
��s t
;
��t u
return
�� 
phoneNumber
�� 
==
�� !
null
��" &
?
��' (
View
��) -
(
��- .
$str
��. 5
)
��5 6
:
��7 8
View
��9 =
(
��= >
new
��> A(
VerifyPhoneNumberViewModel
��B \
{
��] ^
PhoneNumber
��_ j
=
��k l
phoneNumber
��m x
}
��y z
)
��z {
;
��{ |
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :(
VerifyPhoneNumberViewModel
��: T
model
��U Z
)
��Z [
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +$
ChangePhoneNumberAsync
��+ A
(
��A B
User
��B F
.
��F G
Identity
��G O
.
��O P
	GetUserId
��P Y
(
��Y Z
)
��Z [
,
��[ \
model
��] b
.
��b c
PhoneNumber
��c n
,
��n o
model
��p u
.
��u v
Code
��v z
)
��z {
;
��{ |
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
AddPhoneSuccess
��Q `
}
��a b
)
��b c
;
��c d
}
�� 

ModelState
�� 
.
�� 
AddModelError
�� $
(
��$ %
$str
��% '
,
��' (
$str
��) A
)
��A B
;
��B C
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
RemovePhoneNumber
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
SetPhoneNumberAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
null
��Z ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
Error
��Q V
}
��W X
)
��X Y
;
��Y Z
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0
{
��1 2
Message
��3 :
=
��; <
ManageMessageId
��= L
.
��L M 
RemovePhoneSuccess
��M _
}
��` a
)
��a b
;
��b c
}
�� 	
public
�� 
ActionResult
�� 
ChangePassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ChangePassword
��( 6
(
��6 7%
ChangePasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
ChangePasswordAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
model
��Z _
.
��_ `
OldPassword
��` k
,
��k l
model
��m r
.
��r s
NewPassword
��s ~
)
��~ 
;�� �
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q#
ChangePasswordSuccess
��Q f
}
��g h
)
��h i
;
��i j
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
SetPassword
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SetPassword
��( 3
(
��3 4"
SetPasswordViewModel
��4 H
model
��I N
)
��N O
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddPasswordAsync
��/ ?
(
��? @
User
��@ D
.
��D E
Identity
��E M
.
��M N
	GetUserId
��N W
(
��W X
)
��X Y
,
��Y Z
model
��[ `
.
��` a
NewPassword
��a l
)
��l m
;
��m n
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
var
�� 
user
�� 
=
�� 
await
�� $
UserManager
��% 0
.
��0 1
FindByIdAsync
��1 >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
)
��X Y
;
��Y Z
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
}
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
new
��5 8
{
��9 :
Message
��; B
=
��C D
ManageMessageId
��E T
.
��T U 
SetPasswordSuccess
��U g
}
��h i
)
��i j
;
��j k
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ManageLogins
��( 4
(
��4 5
ManageMessageId
��5 D
?
��D E
message
��F M
)
��M N
{
�� 	
ViewBag
�� 
.
�� 
StatusMessage
�� !
=
��" #
message
�� 
==
�� 
ManageMessageId
�� *
.
��* + 
RemoveLoginSuccess
��+ =
?
��> ?
$str
��@ a
:
�� 
message
�� 
==
�� 
ManageMessageId
�� ,
.
��, -
Error
��- 2
?
��3 4
$str
��5 M
:
�� 
$str
�� 
;
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 

userLogins
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
GetLoginsAsync
��/ =
(
��= >
User
��> B
.
��B C
Identity
��C K
.
��K L
	GetUserId
��L U
(
��U V
)
��V W
)
��W X
;
��X Y
var
�� 
otherLogins
�� 
=
�� #
AuthenticationManager
�� 3
.
��3 4,
GetExternalAuthenticationTypes
��4 R
(
��R S
)
��S T
.
��T U
Where
��U Z
(
��Z [
auth
��[ _
=>
��` b

userLogins
��c m
.
��m n
All
��n q
(
��q r
ul
��r t
=>
��u w
auth
��x |
.
��| }!
AuthenticationType��} �
!=��� �
ul��� �
.��� �
LoginProvider��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ShowRemoveButton
�� $
=
��% &
user
��' +
.
��+ ,
PasswordHash
��, 8
!=
��9 ;
null
��< @
||
��A C

userLogins
��D N
.
��N O
Count
��O T
>
��U V
$num
��W X
;
��X Y
return
�� 
View
�� 
(
�� 
new
�� #
ManageLoginsViewModel
�� 1
{
�� 
CurrentLogins
�� 
=
�� 

userLogins
��  *
,
��* +
OtherLogins
�� 
=
�� 
otherLogins
�� )
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
	LinkLogin
�� %
(
��% &
string
��& ,
provider
��- 5
)
��5 6
{
�� 	
return
�� 
new
�� 
AccountController
�� (
.
��( )
ChallengeResult
��) 8
(
��8 9
provider
��9 A
,
��A B
Url
��C F
.
��F G
Action
��G M
(
��M N
$str
��N a
,
��a b
$str
��c k
)
��k l
,
��l m
User
��n r
.
��r s
Identity
��s {
.
��{ |
	GetUserId��| �
(��� �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
LinkLoginCallback
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
XsrfKey
��R Y
,
��Y Z
User
��[ _
.
��_ `
Identity
��` h
.
��h i
	GetUserId
��i r
(
��r s
)
��s t
)
��t u
;
��u v
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 6
,
��6 7
new
��8 ;
{
��< =
Message
��> E
=
��F G
ManageMessageId
��H W
.
��W X
Error
��X ]
}
��^ _
)
��_ `
;
��` a
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
AddLoginAsync
��+ 8
(
��8 9
User
��9 =
.
��= >
Identity
��> F
.
��F G
	GetUserId
��G P
(
��P Q
)
��Q R
,
��R S
	loginInfo
��T ]
.
��] ^
Login
��^ c
)
��c d
;
��d e
return
�� 
result
�� 
.
�� 
	Succeeded
�� #
?
��$ %
RedirectToAction
��& 6
(
��6 7
$str
��7 E
)
��E F
:
��G H
RedirectToAction
��I Y
(
��Y Z
$str
��Z h
,
��h i
new
��j m
{
��n o
Message
��p w
=
��x y
ManageMessageId��z �
.��� �
Error��� �
}��� �
)��� �
;��� �
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
&&
�� 
_userManager
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
_userManager
�� 
.
�� 
Dispose
�� $
(
��$ %
)
��% &
;
��& '
_userManager
�� 
=
�� 
null
�� #
;
��# $
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
bool
�� 
HasPassword
��  
(
��  !
)
��! "
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PasswordHash
�� (
!=
��) +
null
��, 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
HasPhoneNumber
�� #
(
��# $
)
��$ %
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PhoneNumber
�� '
!=
��( *
null
��+ /
;
��/ 0
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
enum
�� 
ManageMessageId
�� #
{
�� 	
AddPhoneSuccess
�� 
,
�� #
ChangePasswordSuccess
�� !
,
��! "!
SetTwoFactorSuccess
�� 
,
��   
SetPasswordSuccess
�� 
,
��  
RemoveLoginSuccess
�� 
,
��  
RemovePhoneSuccess
�� 
,
�� 
Error
�� 
}
�� 	
}
�� 
}�� �`
HD:\Harsh\Shared\StudentCRUD\StudentCRUD\Controllers\StudentController.cs
	namespace 	
StudentCRUD
 
. 
Controllers !
{		 
public

 

class

 
StudentController

 "
:

# $

Controller

% /
{ 
private 

unitofwork 

unitofWork %
=& '
null( ,
;, -
public 
StudentController  
(  !
)! "
:# $
this% )
() *
new* -

unitofwork. 8
(8 9
)9 :
): ;
{ 	
} 	
public 
StudentController  
(  !

unitofwork! +
uow, /
)/ 0
{ 	
this 
. 

unitofWork 
= 
uow !
;! "
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
List 
< 
StudentsModel 
> 
allstudents  +
=, -

unitofWork. 8
.8 9
studentrepository9 J
.J K
GetStudentsK V
(V W
)W X
;X Y
return 
View 
( 
allstudents #
)# $
;$ %
} 	
public 
ActionResult 
Details #
(# $
int$ '
id( *
=+ ,
$num- .
). /
{   	
List"" 
<"" 
StudentsModel"" 
>"" 
allstudents""  +
="", -

unitofWork"". 8
.""8 9
studentrepository""9 J
.""J K
GetStudents""K V
(""V W
)""W X
;""X Y
StudentsModel## 
studentmodeldet## )
=##* +
allstudents##, 7
.##7 8
SingleOrDefault##8 G
(##G H
x##H I
=>##J L
x##M N
.##N O
ID##O Q
==##R T
id##U W
)##W X
;##X Y
if$$ 
($$ 
studentmodeldet$$ 
==$$  "
null$$# '
)$$' (
{%% 
return&& 
HttpNotFound&& #
(&&# $
)&&$ %
;&&% &
}'' 
return(( 
View(( 
((( 
studentmodeldet(( '
)((' (
;((( )
})) 	
[** 	
HttpGet**	 
]** 
public++ 
ActionResult++ 
Create++ "
(++" #
)++# $
{,, 	
return-- 
View-- 
(-- 
)-- 
;-- 
}.. 	
[33 	
HttpPost33	 
]33 
public44 
void44 
Create44 
(44 
StudentsModel44 (

newstudent44) 3
)443 4
{55 	
try66 
{77 
StudentsModel99 
studentmodel99 *
=99+ ,
new99- 0
StudentsModel991 >
(99> ?
)99? @
;99@ A
studentmodel;; 
.;; 

First_Name;; '
=;;( )

newstudent;;* 4
.;;4 5

First_Name;;5 ?
.;;? @
ToString;;@ H
(;;H I
);;I J
;;;J K
studentmodel<< 
.<< 
	Last_Name<< &
=<<' (

newstudent<<) 3
.<<3 4
	Last_Name<<4 =
.<<= >
ToString<<> F
(<<F G
)<<G H
;<<H I
studentmodel== 
.== 
Email== "
===# $

newstudent==% /
.==/ 0
Email==0 5
.==5 6
ToString==6 >
(==> ?
)==? @
;==@ A
studentmodel>> 
.>> 
Dob>>  
=>>! "
Convert>># *
.>>* +

ToDateTime>>+ 5
(>>5 6

newstudent>>6 @
.>>@ A
Dob>>A D
.>>D E
ToString>>E M
(>>M N
)>>N O
)>>O P
;>>P Q
studentmodel?? 
.?? 
Gender?? #
=??$ %

newstudent??& 0
.??0 1
Gender??1 7
.??7 8
ToString??8 @
(??@ A
)??A B
;??B C
studentmodel@@ 
.@@ 
Address@@ $
=@@% &

newstudent@@' 1
.@@2 3
Address@@3 :
.@@: ;
ToString@@; C
(@@C D
)@@D E
;@@E F
studentmodelAA 
.AA 
CityAA !
=AA" #

newstudentAA$ .
.AA. /
CityAA/ 3
.AA3 4
ToStringAA4 <
(AA< =
)AA= >
;AA> ?
studentmodelBB 
.BB 
StateBB "
=BB# $

newstudentBB% /
.BB/ 0
StateBB0 5
.BB5 6
ToStringBB6 >
(BB> ?
)BB? @
;BB@ A
studentmodelCC 
.CC 
PinCC  
=CC! "

newstudentCC# -
.CC- .
PinCC. 1
.CC1 2
ToStringCC2 :
(CC: ;
)CC; <
;CC< =

unitofWorkFF 
.FF 
studentrepositoryFF ,
.FF, -
InsertStudentsModelFF- @
(FF@ A
studentmodelFFA M
)FFM N
;FFN O
}HH 
catchII 
{JJ 
throwKK 
;KK 
}LL 
}MM 	
[QQ 	
HttpGetQQ	 
]QQ 
publicRR 
ActionResultRR 
EditRR  
(RR  !
intRR! $
idRR% '
)RR' (
{SS 	
ListUU 
<UU 
StudentsModelUU 
>UU 
allstudentsUU  +
=UU, -

unitofWorkUU. 8
.UU8 9
studentrepositoryUU9 J
.UUJ K
GetStudentsUUK V
(UUV W
)UUW X
;UUX Y
StudentsModelVV 
studentmodeldetVV )
=VV* +
allstudentsVV, 7
.VV7 8
SingleOrDefaultVV8 G
(VVG H
xVVH I
=>VVJ L
xVVM N
.VVN O
IDVVO Q
==VVR T
idVVU W
)VVW X
;VVX Y
returnWW 
ViewWW 
(WW 
studentmodeldetWW '
)WW' (
;WW( )
}XX 	
[ZZ 	
HttpPostZZ	 
]ZZ 
public[[ 
ActionResult[[ 
Edit[[  
([[  !
int[[! $
id[[% '
,[[' (
StudentsModel[[) 6
editstudent[[7 B
)[[B C
{\\ 	
if]] 
(]] 

ModelState]] 
.]] 
IsValid]] "
)]]" #
{^^ 
List`` 
<`` 
StudentsModel`` "
>``" #
allstudents``$ /
=``0 1

unitofWork``2 <
.``< =
studentrepository``= N
.``N O
GetStudents``O Z
(``Z [
)``[ \
;``\ ]
StudentsModelaa 
studentmodeleditaa .
=aa/ 0
allstudentsaa1 <
.aa< =
FirstOrDefaultaa= K
(aaK L
xaaL M
=>aaN P
xaaQ R
.aaR S
IDaaS U
==aaV X
idaaY [
)aa[ \
;aa\ ]
studentmodeleditbb  
.bb  !
IDbb! #
=bb$ %
idbb& (
;bb( )
studentmodeleditdd  
.dd  !

First_Namedd! +
=dd, -
editstudentdd. 9
.dd9 :

First_Namedd: D
.ddD E
ToStringddE M
(ddM N
)ddN O
;ddO P
studentmodeleditee  
.ee  !
	Last_Nameee! *
=ee+ ,
editstudentee- 8
.ee8 9
	Last_Nameee9 B
.eeB C
ToStringeeC K
(eeK L
)eeL M
;eeM N
studentmodeleditff  
.ff  !
Emailff! &
=ff' (
editstudentff) 4
.ff4 5
Emailff5 :
.ff: ;
ToStringff; C
(ffC D
)ffD E
;ffE F
studentmodeleditgg  
.gg  !
Dobgg! $
=gg% &
Convertgg' .
.gg. /

ToDateTimegg/ 9
(gg9 :
editstudentgg: E
.ggE F
DobggF I
.ggI J
ToStringggJ R
(ggR S
)ggS T
)ggT U
;ggU V
studentmodeledithh  
.hh  !
Genderhh! '
=hh( )
editstudenthh* 5
.hh5 6
Genderhh6 <
.hh< =
ToStringhh= E
(hhE F
)hhF G
;hhG H
studentmodeleditii  
.ii  !
Addressii! (
=ii) *
editstudentii+ 6
.ii6 7
Addressii7 >
.ii> ?
ToStringii? G
(iiG H
)iiH I
;iiI J
studentmodeleditjj  
.jj  !
Cityjj! %
=jj& '
editstudentjj( 3
.jj3 4
Cityjj4 8
.jj8 9
ToStringjj9 A
(jjA B
)jjB C
;jjC D
studentmodeleditkk  
.kk  !
Statekk! &
=kk' (
editstudentkk) 4
.kk4 5
Statekk5 :
.kk: ;
ToStringkk; C
(kkC D
)kkD E
;kkE F
studentmodeleditll  
.ll  !
Pinll! $
=ll% &
editstudentll' 2
.ll2 3
Pinll3 6
.ll6 7
ToStringll7 ?
(ll? @
)ll@ A
;llA B

unitofWorknn 
.nn 
studentrepositorynn ,
.nn, -
EditStudentsModelnn- >
(nn> ?
studentmodeleditnn? O
)nnO P
;nnP Q
}pp 
returnrr 
Viewrr 
(rr 
)rr 
;rr 
}ss 	
[uu 	
HttpGetuu	 
]uu 
publicvv 
ActionResultvv 
Deletevv "
(vv" #
intvv# &
idvv' )
)vv) *
{ww 	
Listyy 
<yy 
StudentsModelyy 
>yy 
allstudentsyy  +
=yy, -

unitofWorkyy. 8
.yy8 9
studentrepositoryyy9 J
.yyJ K
GetStudentsyyK V
(yyV W
)yyW X
;yyX Y
StudentsModelzz 
studentmodeldetzz )
=zz* +
allstudentszz, 7
.zz7 8
SingleOrDefaultzz8 G
(zzG H
xzzH I
=>zzJ L
xzzM N
.zzN O
IDzzO Q
==zzR T
idzzU W
)zzW X
;zzX Y
return{{ 
View{{ 
({{ 
studentmodeldet{{ '
){{' (
;{{( )
}|| 	
[~~ 	
HttpPost~~	 
]~~ 
public 
void 
Delete 
( 
int 
id !
,! "
FormCollection# 1
formcollection2 @
)@ A
{
�� 	
try
�� 
{
�� 
StudentRepository
�� !
studentrepository
��" 3
=
��4 5
new
��6 9
StudentRepository
��: K
(
��K L
)
��L M
;
��M N

unitofWork
�� 
.
�� 
studentrepository
�� ,
.
��, -!
DeleteStudentsModel
��- @
(
��@ A
id
��A C
)
��C D
;
��D E
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
throw
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
ActionResult
�� 
About
�� !
(
��! "
)
��" #
{
�� 	
ViewBag
�� 
.
�� 
Message
�� 
=
�� 
$str
�� B
;
��B C
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
Contact
�� #
(
��# $
)
��$ %
{
�� 	
ViewBag
�� 
.
�� 
Message
�� 
=
�� 
$str
�� 2
;
��2 3
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
6D:\Harsh\Shared\StudentCRUD\StudentCRUD\Global.asax.cs
	namespace		 	
StudentCRUD		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} �F
CD:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\AccountViewModels.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public 

class .
"ExternalLoginConfirmationViewModel 3
{ 
[ 	
Required	 
] 
[		 	
Display			 
(		 
Name		 
=		 
$str		 
)		  
]		  !
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
public 

class &
ExternalLoginListViewModel +
{ 
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class 
SendCodeViewModel "
{ 
public 
string 
SelectedProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ICollection 
< 
System !
.! "
Web" %
.% &
Mvc& )
.) *
SelectListItem* 8
>8 9
	Providers: C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
VerifyCodeViewModel $
{ 
[ 	
Required	 
] 
public 
string 
Provider 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[   	
Display  	 
(   
Name   
=   
$str   
)   
]    
public!! 
string!! 
Code!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public"" 
string"" 
	ReturnUrl"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
Display$$	 
($$ 
Name$$ 
=$$ 
$str$$ 0
)$$0 1
]$$1 2
public%% 
bool%% 
RememberBrowser%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
bool'' 

RememberMe'' 
{''  
get''! $
;''$ %
set''& )
;'') *
}''+ ,
}(( 
public** 

class** 
ForgotViewModel**  
{++ 
[,, 	
Required,,	 
],, 
[-- 	
Display--	 
(-- 
Name-- 
=-- 
$str-- 
)--  
]--  !
public.. 
string.. 
Email.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
}// 
public11 

class11 
LoginViewModel11 
{22 
[33 	
Required33	 
]33 
[44 	
Display44	 
(44 
Name44 
=44 
$str44 
)44  
]44  !
[55 	
EmailAddress55	 
]55 
public66 
string66 
Email66 
{66 
get66 !
;66! "
set66# &
;66& '
}66( )
[88 	
Required88	 
]88 
[99 	
DataType99	 
(99 
DataType99 
.99 
Password99 #
)99# $
]99$ %
[:: 	
Display::	 
(:: 
Name:: 
=:: 
$str:: "
)::" #
]::# $
public;; 
string;; 
Password;; 
{;;  
get;;! $
;;;$ %
set;;& )
;;;) *
};;+ ,
[== 	
Display==	 
(== 
Name== 
=== 
$str== &
)==& '
]==' (
public>> 
bool>> 

RememberMe>> 
{>>  
get>>! $
;>>$ %
set>>& )
;>>) *
}>>+ ,
}?? 
publicAA 

classAA 
RegisterViewModelAA "
{BB 
[CC 	
RequiredCC	 
]CC 
[DD 	
EmailAddressDD	 
]DD 
[EE 	
DisplayEE	 
(EE 
NameEE 
=EE 
$strEE 
)EE  
]EE  !
publicFF 
stringFF 
EmailFF 
{FF 
getFF !
;FF! "
setFF# &
;FF& '
}FF( )
[HH 	
RequiredHH	 
]HH 
[II 	
StringLengthII	 
(II 
$numII 
,II 
ErrorMessageII '
=II( )
$strII* Y
,IIY Z
MinimumLengthII[ h
=IIi j
$numIIk l
)IIl m
]IIm n
[JJ 	
DataTypeJJ	 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ #
)JJ# $
]JJ$ %
[KK 	
DisplayKK	 
(KK 
NameKK 
=KK 
$strKK "
)KK" #
]KK# $
publicLL 
stringLL 
PasswordLL 
{LL  
getLL! $
;LL$ %
setLL& )
;LL) *
}LL+ ,
[NN 	
DataTypeNN	 
(NN 
DataTypeNN 
.NN 
PasswordNN #
)NN# $
]NN$ %
[OO 	
DisplayOO	 
(OO 
NameOO 
=OO 
$strOO *
)OO* +
]OO+ ,
[PP 	
ComparePP	 
(PP 
$strPP 
,PP 
ErrorMessagePP )
=PP* +
$strPP, b
)PPb c
]PPc d
publicQQ 
stringQQ 
ConfirmPasswordQQ %
{QQ& '
getQQ( +
;QQ+ ,
setQQ- 0
;QQ0 1
}QQ2 3
}RR 
publicTT 

classTT "
ResetPasswordViewModelTT '
{UU 
[VV 	
RequiredVV	 
]VV 
[WW 	
EmailAddressWW	 
]WW 
[XX 	
DisplayXX	 
(XX 
NameXX 
=XX 
$strXX 
)XX  
]XX  !
publicYY 
stringYY 
EmailYY 
{YY 
getYY !
;YY! "
setYY# &
;YY& '
}YY( )
[[[ 	
Required[[	 
][[ 
[\\ 	
StringLength\\	 
(\\ 
$num\\ 
,\\ 
ErrorMessage\\ '
=\\( )
$str\\* Y
,\\Y Z
MinimumLength\\[ h
=\\i j
$num\\k l
)\\l m
]\\m n
[]] 	
DataType]]	 
(]] 
DataType]] 
.]] 
Password]] #
)]]# $
]]]$ %
[^^ 	
Display^^	 
(^^ 
Name^^ 
=^^ 
$str^^ "
)^^" #
]^^# $
public__ 
string__ 
Password__ 
{__  
get__! $
;__$ %
set__& )
;__) *
}__+ ,
[aa 	
DataTypeaa	 
(aa 
DataTypeaa 
.aa 
Passwordaa #
)aa# $
]aa$ %
[bb 	
Displaybb	 
(bb 
Namebb 
=bb 
$strbb *
)bb* +
]bb+ ,
[cc 	
Comparecc	 
(cc 
$strcc 
,cc 
ErrorMessagecc )
=cc* +
$strcc, b
)ccb c
]ccc d
publicdd 
stringdd 
ConfirmPassworddd %
{dd& '
getdd( +
;dd+ ,
setdd- 0
;dd0 1
}dd2 3
publicff 
stringff 
Codeff 
{ff 
getff  
;ff  !
setff" %
;ff% &
}ff' (
}gg 
publicii 

classii #
ForgotPasswordViewModelii (
{jj 
[kk 	
Requiredkk	 
]kk 
[ll 	
EmailAddressll	 
]ll 
[mm 	
Displaymm	 
(mm 
Namemm 
=mm 
$strmm 
)mm  
]mm  !
publicnn 
stringnn 
Emailnn 
{nn 
getnn !
;nn! "
setnn# &
;nn& '
}nn( )
}oo 
}pp �
HD:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\DummyStudentRepository.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public 

class "
DummyStudentRepository '
:( )
IStudentRepository* <
{		 
List

 
<

 
StudentsModel

 
>

 
studentmodellist

 ,
=

- .
null

/ 3
;

3 4
public "
DummyStudentRepository %
(% &
List& *
<* +
StudentsModel+ 8
>8 9
student: A
)A B
{ 	
this 
. 
studentmodellist !
=" #
student$ +
;+ ,
} 	
public 
List 
< 
StudentsModel !
>! "
GetStudents# .
(. /
)/ 0
{ 	
return 
studentmodellist #
;# $
} 	
public 
void 
InsertStudentsModel '
(' (
StudentsModel( 5
student6 =
)= >
{ 	
studentmodellist 
. 
Add  
(  !
student! (
)( )
;) *
} 	
public 
void 
EditStudentsModel %
(% &
StudentsModel& 3
studentedit4 ?
)? @
{ 	
int 
id 
= 
studentedit  
.  !
ID! #
;# $
StudentsModel 
studenttotupdate *
=+ ,
studentmodellist- =
.= >
SingleOrDefault> M
(M N
xN O
=>P R
xS T
.T U
IDU W
==X Z
id[ ]
)] ^
;^ _
DeleteStudentsModel 
(  
id  "
)" #
;# $
studentmodellist   
.   
Add    
(    !
studentedit  ! ,
)  , -
;  - .
}!! 	
public## 
void## 
DeleteStudentsModel## '
(##' (
int##( +
id##, .
)##. /
{$$ 	
StudentsModel%% 
studenttoDel%% &
=%%' (
studentmodellist%%) 9
.%%9 :
SingleOrDefault%%: I
(%%I J
x%%J K
=>%%L N
x%%O P
.%%P Q
ID%%Q S
==%%T V
id%%W Y
)%%Y Z
;%%Z [
studentmodellist&& 
.&& 
Remove&& #
(&&# $
studenttoDel&&$ 0
)&&0 1
;&&1 2
}'' 	
}(( 
})) �
DD:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\IStudentRepository.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public 	
	interface
 
IStudentRepository &
{		 
List

 
<

 
StudentsModel

 
>

 
GetStudents

 '
(

' (
)

( )
;

) *
void 
InsertStudentsModel  
(  !
StudentsModel! .
Student/ 6
)6 7
;7 8
void 
EditStudentsModel 
( 
StudentsModel ,
Student- 4
)4 5
;5 6
void 
DeleteStudentsModel  
(  !
int! $
id% '
)' (
;( )
} 
} �
@D:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\IdentityModels.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public

 

class

 
ApplicationUser

  
:

! "
IdentityUser

# /
{ 
public 
async 
Task 
< 
ClaimsIdentity (
>( )%
GenerateUserIdentityAsync* C
(C D
UserManagerD O
<O P
ApplicationUserP _
>_ `
managera h
)h i
{ 	
var 
userIdentity 
= 
await $
manager% ,
., -
CreateIdentityAsync- @
(@ A
thisA E
,E F&
DefaultAuthenticationTypesG a
.a b
ApplicationCookieb s
)s t
;t u
return 
userIdentity 
;  
} 	
} 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 :
ApplicationUser: I
>I J
{ 
public  
ApplicationDbContext #
(# $
)$ %
: 
base 
( 
$str &
,& '
throwIfV1Schema( 7
:7 8
false9 >
)> ?
{ 	
} 	
public 
static  
ApplicationDbContext *
Create+ 1
(1 2
)2 3
{ 	
return 
new  
ApplicationDbContext +
(+ ,
), -
;- .
} 	
public!! 
System!! 
.!! 
Data!! 
.!! 
Entity!! !
.!!! "
DbSet!!" '
<!!' (
StudentCRUD!!( 3
.!!3 4
Models!!4 :
.!!: ;
StudentsModel!!; H
>!!H I
StudentsModels!!J X
{!!Y Z
get!![ ^
;!!^ _
set!!` c
;!!c d
}!!e f
}"" 
}## �8
BD:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\ManageViewModels.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public 

class 
IndexViewModel 
{		 
public

 
bool

 
HasPassword

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
IList 
< 
UserLoginInfo "
>" #
Logins$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	TwoFactor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
BrowserRemembered %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* Y
,Y Z
MinimumLength[ h
=i j
$numk l
)l m
]m n
[   	
DataType  	 
(   
DataType   
.   
Password   #
)  # $
]  $ %
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! &
)!!& '
]!!' (
public"" 
string"" 
NewPassword"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
[$$ 	
DataType$$	 
($$ 
DataType$$ 
.$$ 
Password$$ #
)$$# $
]$$$ %
[%% 	
Display%%	 
(%% 
Name%% 
=%% 
$str%% .
)%%. /
]%%/ 0
[&& 	
Compare&&	 
(&& 
$str&& 
,&& 
ErrorMessage&&  ,
=&&- .
$str&&/ i
)&&i j
]&&j k
public'' 
string'' 
ConfirmPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
}(( 
public** 

class** #
ChangePasswordViewModel** (
{++ 
[,, 	
Required,,	 
],, 
[-- 	
DataType--	 
(-- 
DataType-- 
.-- 
Password-- #
)--# $
]--$ %
[.. 	
Display..	 
(.. 
Name.. 
=.. 
$str.. *
)..* +
]..+ ,
public// 
string// 
OldPassword// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
[11 	
Required11	 
]11 
[22 	
StringLength22	 
(22 
$num22 
,22 
ErrorMessage22 '
=22( )
$str22* Y
,22Y Z
MinimumLength22[ h
=22i j
$num22k l
)22l m
]22m n
[33 	
DataType33	 
(33 
DataType33 
.33 
Password33 #
)33# $
]33$ %
[44 	
Display44	 
(44 
Name44 
=44 
$str44 &
)44& '
]44' (
public55 
string55 
NewPassword55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
[77 	
DataType77	 
(77 
DataType77 
.77 
Password77 #
)77# $
]77$ %
[88 	
Display88	 
(88 
Name88 
=88 
$str88 .
)88. /
]88/ 0
[99 	
Compare99	 
(99 
$str99 
,99 
ErrorMessage99  ,
=99- .
$str99/ i
)99i j
]99j k
public:: 
string:: 
ConfirmPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
};; 
public== 

class== #
AddPhoneNumberViewModel== (
{>> 
[?? 	
Required??	 
]?? 
[@@ 	
Phone@@	 
]@@ 
[AA 	
DisplayAA	 
(AA 
NameAA 
=AA 
$strAA &
)AA& '
]AA' (
publicBB 
stringBB 
NumberBB 
{BB 
getBB "
;BB" #
setBB$ '
;BB' (
}BB) *
}CC 
publicEE 

classEE &
VerifyPhoneNumberViewModelEE +
{FF 
[GG 	
RequiredGG	 
]GG 
[HH 	
DisplayHH	 
(HH 
NameHH 
=HH 
$strHH 
)HH 
]HH  
publicII 
stringII 
CodeII 
{II 
getII  
;II  !
setII" %
;II% &
}II' (
[KK 	
RequiredKK	 
]KK 
[LL 	
PhoneLL	 
]LL 
[MM 	
DisplayMM	 
(MM 
NameMM 
=MM 
$strMM &
)MM& '
]MM' (
publicNN 
stringNN 
PhoneNumberNN !
{NN" #
getNN$ '
;NN' (
setNN) ,
;NN, -
}NN. /
}OO 
publicQQ 

classQQ '
ConfigureTwoFactorViewModelQQ ,
{RR 
publicSS 
stringSS 
SelectedProviderSS &
{SS' (
getSS) ,
;SS, -
setSS. 1
;SS1 2
}SS3 4
publicTT 
ICollectionTT 
<TT 
SystemTT !
.TT! "
WebTT" %
.TT% &
MvcTT& )
.TT) *
SelectListItemTT* 8
>TT8 9
	ProvidersTT: C
{TTD E
getTTF I
;TTI J
setTTK N
;TTN O
}TTP Q
}UU 
}VV �X
CD:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\StudentRepository.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public		 

class		 
StudentRepository		 "
:		# $
IStudentRepository		$ 6
{

 
public 
List 
< 
StudentsModel !
>! "
allStudents# .
;. /
public 
	XDocument 
StudentsData %
;% &
public 
StudentRepository  
(  !
)! "
{ 	
try 
{ 
allStudents 
= 
new !
List" &
<& '
StudentsModel' 4
>4 5
(5 6
)6 7
;7 8
StudentsData 
= 
	XDocument (
.( )
Load) -
(- .
HttpContext. 9
.9 :
Current: A
.A B
ServerB H
.H I
MapPathI P
(P Q
$strQ m
)m n
)n o
;o p
var 
Students 
= 
from #
t$ %
in& (
StudentsData) 5
.5 6
Descendants6 A
(A B
$strB K
)K L
select %
new& )
StudentsModel* 7
(7 8
(# $
int$ '
)' (
t( )
.) *
Element* 1
(1 2
$str2 6
)6 7
,7 8
t# $
.$ %
Element% ,
(, -
$str- 9
)9 :
.: ;
Value; @
,@ A
t  
.  !
Element! (
(( )
$str) 4
)4 5
.5 6
Value6 ;
,; <
t  
.  !
Element! (
(( )
$str) 0
)0 1
.1 2
Value2 7
,7 8
(  
DateTime  (
)( )
t) *
.* +
Element+ 2
(2 3
$str3 8
)8 9
,9 :
t  
.  !
Element! (
(( )
$str) 1
)1 2
.2 3
Value3 8
,8 9
t  
.  !
Element! (
(( )
$str) 2
)2 3
.3 4
Value4 9
,9 :
t  
.  !
Element! (
(( )
$str) /
)/ 0
.0 1
Value1 6
,6 7
t  
.  !
Element! (
(( )
$str) 0
)0 1
.1 2
Value2 7
,7 8
t    
.    !
Element  ! (
(  ( )
$str  ) .
)  . /
.  / 0
Value  0 5
)  5 6
;  6 7
allStudents"" 
."" 
AddRange"" $
(""$ %
Students""% -
.""- .
ToList"". 4
<""4 5
StudentsModel""5 B
>""B C
(""C D
)""D E
)""E F
;""F G
}## 
catch$$ 
($$ 
	Exception$$ 
exp$$  
)$$  !
{%% 
}(( 
})) 	
public++ 
List++ 
<++ 
StudentsModel++ !
>++! "
GetStudents++# .
(++. /
)++/ 0
{,, 	
return-- 
allStudents-- 
;-- 
}.. 	
public55 
void55 
InsertStudentsModel55 '
(55' (
StudentsModel55( 5
Student556 =
)55= >
{66 	
Student77 
.77 
ID77 
=77 
(77 
int77 
)77 
(77 
from77 #
S77$ %
in77& (
StudentsData77) 5
.775 6
Descendants776 A
(77A B
$str77B K
)77K L
orderby77M T
(77U V
int77V Y
)77Y Z
S77Z [
.77[ \
Element77\ c
(77c d
$str77d h
)77h i

descending77j t
select77u {
(77| }
int	77} �
)
77� �
S
77� �
.
77� �
Element
77� �
(
77� �
$str
77� �
)
77� �
)
77� �
.
77� �
FirstOrDefault
77� �
(
77� �
)
77� �
+
77� �
$num
77� �
;
77� �
StudentsData99 
.99 
Root99 
.99 
Add99 !
(99! "
new99" %
XElement99& .
(99. /
$str99/ 8
,998 9
new99: =
XElement99> F
(99F G
$str99G K
,99K L
Student99M T
.99T U
ID99U W
)99W X
,99X Y
new:: 
XElement:: 
(:: 
$str:: )
,::) *
Student::+ 2
.::2 3

First_Name::3 =
)::= >
,::> ?
new;; 
XElement;; 
(;; 
$str;; (
,;;( )
Student;;* 1
.;;1 2
	Last_Name;;2 ;
);;; <
,;;< =
new<< 
XElement<< 
(<< 
$str<< $
,<<$ %
Student<<& -
.<<- .
Email<<. 3
)<<3 4
,<<4 5
new== 
XElement== 
(== 
$str== "
,==" #
Student==$ +
.==+ ,
Dob==, /
.==/ 0
Date==0 4
.==4 5
ToShortDateString==5 F
(==F G
)==G H
)==H I
,==I J
new>> 
XElement>> 
(>> 
$str>> %
,>>% &
Student>>' .
.>>. /
Gender>>/ 5
)>>5 6
,>>6 7
new?? 
XElement?? 
(?? 
$str?? &
,??& '
Student??( /
.??/ 0
Address??0 7
)??7 8
,??8 9
new@@ 
XElement@@ 
(@@ 
$str@@ #
,@@# $
Student@@% ,
.@@, -
City@@- 1
)@@1 2
,@@2 3
newAA 
XElementAA 
(AA 
$strAA $
,AA$ %
StudentAA& -
.AA- .
StateAA. 3
)AA3 4
,AA4 5
newBB 
XElementBB 
(BB 
$strBB "
,BB" #
StudentBB$ +
.BB+ ,
PinBB, /
)BB/ 0
)BB0 1
)BB1 2
;BB2 3
StudentsDataDD 
.DD 
SaveDD 
(DD 
HttpContextDD )
.DD) *
CurrentDD* 1
.DD1 2
ServerDD2 8
.DD8 9
MapPathDD9 @
(DD@ A
$strDDA ]
)DD] ^
)DD^ _
;DD_ `
}EE 	
publicGG 
voidGG 
EditStudentsModelGG %
(GG% &
StudentsModelGG& 3
StudentGG4 ;
)GG; <
{HH 	
tryII 
{JJ 
XElementKK 
nodeKK 
=KK 
StudentsDataKK  ,
.KK, -
RootKK- 1
.KK1 2
ElementsKK2 :
(KK: ;
$strKK; D
)KKD E
.KKE F
WhereKKF K
(KKK L
iKKL M
=>KKN P
(KKQ R
intKKR U
)KKU V
iKKV W
.KKW X
ElementKKX _
(KK_ `
$strKK` d
)KKd e
==KKf h
StudentKKi p
.KKp q
IDKKq s
)KKs t
.KKt u
FirstOrDefault	KKu �
(
KK� �
)
KK� �
;
KK� �
nodeMM 
.MM 
SetElementValueMM $
(MM$ %
$strMM% 1
,MM1 2
StudentMM3 :
.MM: ;

First_NameMM; E
)MME F
;MMF G
nodeNN 
.NN 
SetElementValueNN $
(NN$ %
$strNN% 0
,NN0 1
StudentNN2 9
.NN9 :
	Last_NameNN: C
)NNC D
;NND E
nodeOO 
.OO 
SetElementValueOO $
(OO$ %
$strOO% ,
,OO, -
StudentOO. 5
.OO5 6
EmailOO6 ;
)OO; <
;OO< =
nodePP 
.PP 
SetElementValuePP $
(PP$ %
$strPP% *
,PP* +
StudentPP, 3
.PP3 4
DobPP4 7
.PP7 8
ToShortDateStringPP8 I
(PPI J
)PPJ K
)PPK L
;PPL M
nodeQQ 
.QQ 
SetElementValueQQ $
(QQ$ %
$strQQ% -
,QQ- .
StudentQQ/ 6
.QQ6 7
GenderQQ7 =
)QQ= >
;QQ> ?
nodeSS 
.SS 
SetElementValueSS $
(SS$ %
$strSS% .
,SS. /
StudentSS0 7
.SS7 8
AddressSS8 ?
)SS? @
;SS@ A
nodeTT 
.TT 
SetElementValueTT $
(TT$ %
$strTT% +
,TT+ ,
StudentTT- 4
.TT4 5
CityTT5 9
)TT9 :
;TT: ;
nodeUU 
.UU 
SetElementValueUU $
(UU$ %
$strUU% ,
,UU, -
StudentUU. 5
.UU5 6
StateUU6 ;
)UU; <
;UU< =
nodeVV 
.VV 
SetElementValueVV $
(VV$ %
$strVV% *
,VV* +
StudentVV, 3
.VV3 4
PinVV4 7
)VV7 8
;VV8 9
StudentsDataWW 
.WW 
SaveWW !
(WW! "
HttpContextWW" -
.WW- .
CurrentWW. 5
.WW5 6
ServerWW6 <
.WW< =
MapPathWW= D
(WWD E
$strWWE a
)WWa b
)WWb c
;WWc d
}XX 
catchYY 
(YY 
	ExceptionYY 
)YY 
{ZZ 
throw\\ 
new\\ #
NotImplementedException\\ 1
(\\1 2
)\\2 3
;\\3 4
}]] 
}^^ 	
publicaa 
voidaa 
DeleteStudentsModelaa '
(aa' (
intaa( +
idaa, .
)aa. /
{bb 	
trycc 
{dd 
StudentsDataee 
.ee 
Rootee !
.ee! "
Elementsee" *
(ee* +
$stree+ 4
)ee4 5
.ee5 6
Whereee6 ;
(ee; <
iee< =
=>ee> @
(eeA B
inteeB E
)eeE F
ieeF G
.eeG H
ElementeeH O
(eeO P
$streeP T
)eeT U
==eeV X
ideeY [
)ee[ \
.ee\ ]
Removeee] c
(eec d
)eed e
;eee f
StudentsDatagg 
.gg 
Savegg !
(gg! "
HttpContextgg" -
.gg- .
Currentgg. 5
.gg5 6
Servergg6 <
.gg< =
MapPathgg= D
(ggD E
$strggE a
)gga b
)ggb c
;ggc d
}ii 
catchjj 
(jj 
	Exceptionjj 
)jj 
{kk 
throwmm 
newmm #
NotImplementedExceptionmm 1
(mm1 2
)mm2 3
;mm3 4
}nn 
}oo 	
}ss 
}tt �3
?D:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\StudentsModel.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public		 

class		 
StudentsModel		 
{

 
public 
StudentsModel 
( 
) 
{ 	
this 
. 
ID 
= 
$num 
; 
this 
. 

First_Name 
= 
null "
;" #
this 
. 
	Last_Name 
= 
null !
;! "
this 
. 
Email 
= 
null 
; 
this 
. 
Dob 
= 
DateTime 
.  
Now  #
;# $
this 
. 
Gender 
= 
null 
; 
this 
. 
Address 
= 
null 
;  
this 
. 
City 
= 
null 
; 
this 
. 
State 
= 
null 
; 
this 
. 
Pin 
= 
null 
; 
} 	
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
public 
string 

First_Name  
{! "
get# &
;& '
set( +
;+ ,
}- .
[   
Required   
(   
ErrorMessage   
=   
$str    7
)  7 8
]  8 9
[!! 
Display!! 
(!! 
Name!! 
=!! 
$str!! !
)!!! "
]!!" #
public"" 
string"" 
	Last_Name"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[## 
Required## 
(## 
ErrorMessage## 
=## 
$str##  8
)##8 9
]##9 :
public%% 
string%% 
Email%% 
{%% 
get%% !
;%%! "
set%%# &
;%%& '
}%%( )
['' 
Required'' 
('' 
ErrorMessage'' 
='' 
$str''  ;
)''; <
]''< =
[)) 	
Display))	 
()) 
Name)) 
=)) 
$str)) &
)))& '
]))' (
public** 
DateTime** 
Dob** 
{** 
get** !
;**! "
set**# &
;**& '
}**( )
[++ 
Required++ 
(++ 
ErrorMessage++ 
=++ 
$str++  8
)++8 9
]++9 :
public,, 
string,, 
Gender,, 
{,, 
get,, "
;,," #
set,,$ '
;,,' (
},,) *
[-- 
Required-- 
(-- 
ErrorMessage-- 
=-- 
$str--  =
)--= >
]--> ?
public.. 
string.. 
Address.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
[// 
Required// 
(// 
ErrorMessage// 
=// 
$str//  7
)//7 8
]//8 9
public00 
string00 
City00 
{00 
get00  
;00  !
set00" %
;00% &
}00' (
[11 	
Required11	 
(11 
ErrorMessage11 
=11  
$str11! 8
)118 9
]119 :
public22 
string22 
State22 
{22 
get22 !
;22! "
set22# &
;22& '
}22( )
[33 	
Required33	 
(33 
ErrorMessage33 
=33  
$str33! :
)33: ;
]33; <
[44 	
Range44	 
(44 
$num44 
,44 
$num44 
)44 
]44 
[55 	
Display55	 
(55 
Name55 
=55 
$str55 !
,55! "
Description55# .
=55/ 0
$str550 X
)55X Y
]55Y Z
public66 
string66 
Pin66 
{66 
get66 
;66  
set66! $
;66$ %
}66& '
public88 
StudentsModel88 
(88 
int88  
id88! #
,88# $
string88% +

first_Name88, 6
,886 7
string888 >
	last_Name88? H
,88H I
string88J P
email_id88Q Y
,88Y Z
DateTime88[ c
dob88d g
,88g h
string88i o
gender88p v
,88v w
string88x ~
address	88 �
,
88� �
string
88� �
city
88� �
,
88� �
string
88� �
state
88� �
,
88� �
string
88� �
pin
88� �
)
88� �
{99 	
this:: 
.:: 
ID:: 
=:: 
id:: 
;:: 
this;; 
.;; 

First_Name;; 
=;; 

first_Name;; (
;;;( )
this<< 
.<< 
	Last_Name<< 
=<< 
	last_Name<< &
;<<& '
this== 
.== 
Email== 
=== 
email_id== !
;==! "
this>> 
.>> 
Dob>> 
=>> 
dob>> 
;>> 
this?? 
.?? 
Gender?? 
=?? 
gender??  
;??  !
this@@ 
.@@ 
Address@@ 
=@@ 
address@@ "
;@@" #
thisAA 
.AA 
CityAA 
=AA 
cityAA 
;AA 
thisBB 
.BB 
StateBB 
=BB 
stateBB 
;BB 
thisCC 
.CC 
PinCC 
=CC 
pinCC 
;CC 
}EE 	
}HH 
}II �
<D:\Harsh\Shared\StudentCRUD\StudentCRUD\Models\unitofwork.cs
	namespace 	
StudentCRUD
 
. 
Models 
{ 
public 

class 

unitofwork 
{		 
public

 

unitofwork

 
(

 
)

 
{ 	
StudentRepository 
studentrepository /
=0 1
new2 5
StudentRepository6 G
(G H
)H I
;I J
} 	
public 

unitofwork 
( 
IStudentRepository ,
studentRepo- 8
)8 9
{ 	
studentrepository 
= 
studentRepo  +
;+ ,
} 	
public 
IStudentRepository !
studentrepository" 3
{ 	
get 
; 
private 
set 
; 
} 	
} 
} �
BD:\Harsh\Shared\StudentCRUD\StudentCRUD\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 4
)4 5
]5 6
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str G
)G H
]H I
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *�
2D:\Harsh\Shared\StudentCRUD\StudentCRUD\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
StudentCRUD' 2
.2 3
Startup3 :
): ;
); <
]< =
	namespace 	
StudentCRUD
 
{ 
public 

partial 
class 
Startup  
{ 
public		 
void		 
Configuration		 !
(		! "
IAppBuilder		" -
app		. 1
)		1 2
{

 	
ConfigureAuth 
( 
app 
) 
; 
} 	
} 
} r
pD:\Harsh\Shared\StudentCRUD\StudentCRUD\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csr
pD:\Harsh\Shared\StudentCRUD\StudentCRUD\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csr
pD:\Harsh\Shared\StudentCRUD\StudentCRUD\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs