??+
?(?(
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Elu
features"T
activations"T"
Ttype:
2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.22v2.8.2-0-g2ea19cbb5758??(
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*%
shared_nameembedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*!
_output_shapes
:???*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	? *
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
: *
dtype0
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
: *
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
: *
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
: *
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
: *
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:  *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
?
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0
?
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

: *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2028*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*!
_output_shapes
:???*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	? *
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
: *
dtype0
?
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/batch_normalization/gamma/m
?
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
: *
dtype0
?
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/batch_normalization/beta/m
?
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
: *
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_1/gamma/m
?
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_1/beta/m
?
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*!
_output_shapes
:???*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	? *
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
: *
dtype0
?
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/batch_normalization/gamma/v
?
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
: *
dtype0
?
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/batch_normalization/beta/v
?
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
: *
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_1/gamma/v
?
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_1/beta/v
?
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??

Const_4Const*
_output_shapes

:??*
dtype0*??

value??
B??
??BbulliBschoolBfuckBntBsBlikeBniggerBjokeBuBgirlBdumbBhighBmuslimBpeoplBrapeBgayBcallBoneBgetBidiotBwomanBmakeBsayBblackBampBasBmBgoBknowBbitchBthinkBislamBrightBwouldBwhiteB	christianBwantBuseBgotBseeBtimeBhateBevenBlookBsuppoBshitBreB	terroristBurBneverBthingBrealliBneedByearBtriBstillBfirstBloveBmeanBtalkBterrorBsaidBkillBgoodBobamaBmanBalsoBkidBfriendBguyBfemalBstopBradicBwayBanythBdayBracistBbackBtakeBlolBcaBmenBtellBsexistBsomeonBwordBpersonBmadeBhumanBbadBnameBletBeveriBcomeBfunniBliveBfeelBrBmuchBnaBpaBlifeBmiddlBworldBracismBmaniBcountriBshowBpastBgiveBalwayBveBworkBgodBohBwellBtwitterBhinduBcouldBbelievBstupidBeverBisiBtweetBstaBwatchBeveryonBaskBboyBdisgustBimBnBbetterBcolorBtrumpBhappenByeBkeepBreligionBreadBoldBchildBnegroBsomethBlotBactualBnothBfollowBquranBedBpplBniggaBjihadBrealBfindBwrongBkatBgroupBhelpBllBactBcareBfaceBpostBltBputBignorBthoughtBcausBanothBplayBindiaBdontByeahBtodayBthankBmadBanyonBsureBpleaBhopeBtoldBnewBpointBokBfightBdifferBremembBugliBproblemBprettiBlittlBaroundBwentBlieBstandBgonBfactBchangBamericanB
understandBmurderBliterBabusBantiBhBwBreasonBbigBshutBgtBendBattackBsincBbcBdoneBbestBhellBwholeBtwoBmustBmatterBclassBcommunBsorriBdudeBvideoBspeakBkindBheadBbBdateByallBlmaoBcommentBetcBwoBeBlaughBlastBstateBleftBgameBfeminaziBingBdBhomeBvictimBelBhardBdieBfatBfamiliBokayBgreatBawayBwearByetBbecomBeverythBrunBvoteBnonBbeatBseenBprisonBstoriBseemBmomBfunBsoundBraceBlearnBharassBturnBwanBthoughBgradeBdamnBotherBalreadiBpresidBhousBnextBmaleBissuBguessBmediumBenoughBindianBfarBclaimBteacherBmoneyBwithoutBbookBniceBhairBstayBideaBtrueBpickBlongBjewBleavBwarBwaitBmindBlawBhearBsexBsawBnationBforcBprobablBmaybBinsultBheyBpolicBpowerBlistenBjobBshameBquestionBamericaBselfBpakistanBdogBhoeBdefendBhappiBwishBweirdBmightBagoBdeathByoBsocialBskinBleBhistoriBrepoBplaceBagreBsuckBsexualBmentalBfakeBpublicBcriBeitherBthBpolitBfoundByaBcreatBacceptBcoolBrespectBsickBmayBhuBdickBpeacBerBfeministBpicBblockBbabiBandrBaccountBwowBhitBgenerBculturBteachBparentBomgBmajorBhandBexistBallowBreligiBablBopenBbrotherBresponsBpayBweekBtypeBstuffBcameBstudentBslaveBseriousBfanBmentionBwonderBfullBdefinitBteamBhahaBgrowBsendBnightBhomophobBheardBgoeBfreeBtermBcookBcantBnewsBliberBblameBworstBstraightBsmhBjesuBcaseBmonthBcuzBbroBtaBsideBmoveBwalkBkBbasicBeyeBeducBdealBtreatBruleBbringBmoviBinsteadBwriteBleastBwhatevBmissBequalBdeservBcompletBevilBcomBpopularBforgetBcollegBsitBopinionBsaveB
elementariBsadBmileyBeatBcuntBcontinuBmohamBheaBgaveBdeBcloseBxBtruthBmotherBdaughterBvoicBlineBthoBremindBentirBcrimeBwtfBwinBtotalBlaterBalBviaBsonBknewBexactliBtogethBsoonBrestBprotectBpoorBionBfireBexpectBdiBtargetBprophetBsinglBpussiBcyruBbitBbehindBassholByoungBthrowBspreadBexperiBexamplBdestroyBreferBpositBminorBimaginBbunchByardBworsBviolencBrealizBinnocBcheckBalmostBvBquitBdriveBcopBwashBspoBsenBsecondBmillionBdemocratBfreedomBanimBabsolutBtranBslurBpasBdeadBcraziBbreakBhaBgovernBapologBallahBabtBtookBconsidBthreatBsetBmarriBholdBhatrBfearBcutBanswerBsuicidBsisterBfolkBpushBhonestliBfuckinBclearliBalonBageBsometimBpicturBladiBexcusBtrashBqueBnobodiBchinaBannoyBaiBtonightBthatBshoBnursBlostBexplainBdecidBcoverByrBisraelBinterestBfacebookBexceptBroundBratherBpissBfBchoosBafricanBviewBtowardBproveBofficBlandBdadBclothBceBassaultBarabBthreatenBshareBoffensBgoneBslaveriBorganBoffendBmouthBlilBjihadiBillBhotBclearBcharactBawBpiecBsuperBsmaBsafeBhalfBgivenBfrontBfoodBfinalBchurchBcBbusiBfineBfatherBbullshitBactionBsmallBrepliBonlinBlowBincludBbodiBbiggestBimpoBhorriblBgangBscareBraisBcomparBbetBbanBkickBdropBchoicBbaseBtvBjudgBenjoyBanymorBworriBspeechBprotestBgunBespeciBbecamBamazBlistBlevelBlesbianBfundBattentBsignBnumberBndBstBproudBemBbiBanywayBaboBswearBretardBproBmusicBmemberBfootbalBfoolBdarkBburnBangriBtireBsongBminutBdaBcoursBcomedianBtopBstrongBpracticBdreamBbornBsentBholiBcontrolBbuyBblmBsurprisBrefusBphoneBmeetBjoinBwifeBusualBunlessBshootBseriouBpromotBoutsidBmrBleaderB
disrespectBloseBgenocidBexpoBcorrectBactivBroomBkashmirBfalsBsleepBsellB
republicanBprayBpoBterriblBsystemBsocietiBseBiclBeaBdrinkBconversBbeautiBtallBproofBincidBhideBgamergBfailBcuteBcriminBapparBorderBnormalBmessagBidkBhourB
throughoutBsupposBshotBpullBmornBinvolvBgladBfeltBdressBdemBarmiBstreetB
propagandaBhypocritBfitBfallB	everybodiBconservBcomplainBboutBadultBstepBpunchBnoneBmostliBliarBlegalBjustifiBhealthBfeminBearliBcouplBcoBblondBantBviolentBtrustB	statementBscoreBrapistBlateBjewishBhadithBgenderBelectBclubBbuildBaccusBweightBthreeBriotBpBoppressBmetBhuhBconvBbloodiBawarBadBspecialBmomentBmodelBmockBjuniorBislamistBhahahaBcrushBconcernBcatBbrainBtechBracialBlmfaoBkindaBinternetBfaithBdmBcarBbombBpretendB	pakistaniBmainBharmBcommitBbrownBshiBplanBoftenBmineBlondonBfigurBfaggotBextremBexBdangerBdaeshBcitiBbotherBbeliefBstatuBruinBrateBpopulBpoliciBperfectBnoticBdueBcyberBcrapBbrutalBbelongBassumBagendaBtrainBtfBtakenBsufferBseverBrestaurBplBleadBformBcelebrBbuBadmitBstickBrelatBpresentBoriginBobviousBfuBcommonBbeyondBappreciBuhBtrollBservBrepresBrealitiBmarriagBgrewBdearBcondemnBbtwBwitBspecifBshittiBpainBeuBdiscusBcolinBbullBballBarguBappearBvaluBteenBsomebodiBshockBshariaBrelationshipBrandomBpedophilBnastiBhangBeverydayBwakeBredBknownBinstantBfairBbigotBargumentBaintBwingBtaughtBstandardBselectBrichBprovidBpageBlunchBjumpBhilariB	extremistBdrugBcriticB
constantliBcongressBunatBtomorrowBslutBsecularBreadiBcrackBtextBnerdBlightBhowevBhiBhandlBggBforgotBdisagreBdirectBdeclarBcrackerBconfusBchineBcancelBannouncBafByeaBureBupsetBtroublBstoneBrecentBreceivBprivilegBnegBideologBhugeBheroBemailBdidntBcompaniBchancBbroughtBbiblBbehaviorBareaBahBafraidBweakBwaynBumBsuggestBsituatBremovBquotBprojectBpossiblBlinkBlgbtBlanguagBlaBkissBjusticBiveBintentB
girlfriendBfuturBevidBthousandBsirBprivatBpreferBolderBneitherBmultiplBmosquBmeantBlordBkashmiriBjailBfavoritBdoctorBdevilBdailiBwhoreBunfoBsourcBservicBnaziBmanagBhindutvaBgBenglishBdrunkBdoubtBdebatBcurrentBchargBcastBcampBbyeBblowBaddBtrendBtalibanBsimplBperiodBenemiBeasiBcomediBcleanBawesomBattemptBwrittenBversBuniversBtbhB	stereotypBstealBscreamBpeBmoronBmonkeyBmaskBgrownBgraduatBforevBemotBarmBapaBzeroBunitBtypicBtownBteenagBstudiBsikhBretweetBreturnBrecordBprimariBnaturB
misogynistBkatiBimpressBdepressBcouBcarriBbloodBbillBbidenByupBsexismBseasonBrespondBproducBphotoBnikkiBmoralBlogicB	instagramBfixBdesignBdareBcolleaguBwroteBwhoseBtruliBtearBspaceBsoftBremainBreachBpreachBpluBplayerBpathetBnahBmodiBmobBleftistBkarmaBhumorBbrotherhoodBasianBanniBworshipBstfuBstanBsouthBsimpliBpaidBouttaBnopeBlongerBlBinvadBillegBfellowBcontextBcodeBbrokeB	boyfriendBblindBblessBwelcomBvileBtlBprogressBpressBmistakBkeptBhusbandBhonestBencouragBeastBdeniBdancBcowardBbuttBbritishBblueBauthorBamountBalivBaffectBtillBstrugglBsilentBsiBrideBlocalBlipBkitchenB	hypocrisiBfoBfliB	communistBboreBarrestBafricaBwestBuserBthreadBsecurBridiculBpunishBobviouBlessonBimagBgooglBfocuBfilmBepisodBeffectBdriverBdrawBdeletBcaughtBbashBavoidBacrossBwontBunlikBukBtriggerBstoreBspentBspendBsatanBrockBranBpregnantBpalestinianBobBmilitariBimaBforwardBdatBcozBcountBcheatBatheistBalongBaddressB	yesterdayBwhetherBuponBtestBtastBsuccessBsubjectBsizeBphysicBpeteBofficiBnoteBlargBknowledgBjrBforgivBfinishBexpressB	everywherBcenturiBcardBcampaignBbarrBbarbarByoutubByellBwadhwaBtopicBthugBstarBsensitBresearchBparkBmixB
journalistBjBinsidBgrossBeuropBdramaBdragBdescribBcovidBcoonBcivilBbeheadByourBwokeBversionBughBtoxicBsmileBsinBsilencBseparB
regardlessBqueenBprogramBplzBopposBlackBinspirBinsanBfbBdoesntBchallengBblogBbjpBbfBashamBwithinBtolerBsyriaBstyleBresultBrequirBquietBopenliBmagicBloserBledBhvBglassBfreshmanBfillBethnicBdefinBdecadBcolourBchristBchickB	brainwashBbosBattendBusaBtaxBshiaBroleBrepeatBregardBquickBpalestinBmentBindividuBhorsBhireBgutBgovtBfulliBfootBdevelopBdeepBdecentBwastBspellBsoulBsjwBshoutBseriBsaudiBoutragBoptionBofferBmovementBmateBluckBkingBinsecurBholeBhaterBhaiBgroundBfreakBfoughtBfiveB	embarrassBdisablBconvincB	contributBcareerBbioBbiggerBbeginBbagBaccordBworkerBturkeyBthirdBsomehowBsadliBrussiaBrejectBqBprofilBproductBpcBmassBkeyBinformBinfoBidB
homophobiaBgainBflagBfeedBexcitBentBenB	discriminBconfidBclassmatBcitizenBchriBchillBchickenBappBadvocBviruBtrynaBtablBsentencBrudeBputinBpopBpmBoppositBmatchBinventBgenuinBdaddiBaidBxdBwesternBtoughBthrewBsurvivBseniorB
playgroundBorganisBnearBmfBmexicanBmessBlaziBknockBjuBisntBiranBhamaBfaultBdoublBdependBcrossBcatholBcatchBcancerBbarBattitudBappliBunitiBunBthtBteaBspokeBseekBridBrevengBpreventBpackBownBonstagBnoseBlabelB	interviewBheBhashtagBfraudBdoorBdespitBdeconstructBdataBbillionBbattlBbathroomBadvicBtiktokBsweetBsmokeBslapBscumBsceneBpurposBpigBpersecutB
pedophiliaBotherwisBorgBoilBmisogyniBlynchBlockBlimitBlemonBissoBironBiraqBinternBidentifiBhomosexuBgrabBeliminB
disappointBdamagBcruelBcorruptBconfrontBclassicBcivilianBbuiltBattractByoungerBwaterBviolatBtheoriBsoldierBsemitBscreenBschemeBrumorBreleasBpureBpornBpinkBmumBmasculinBmarkBjealouBindustriBimmediBfieldBexactBdividBdestructB	democraciBcousinB	breakfastBbottomBbotBbigotriBapprovBangerBairBaggressBwhenevBwageBvalidBupdatBtwBtouchBtieBstabBsiteBsciencBqueerB
politicianBnonsensBinvitBhundrBhonorBhahahahaBgopBexterminBenterBeasiliBdonaldBdecisBcurBcockBboardBbedBappropriBalliBactivistBworeBweaponB	transphobBskinniBreviewBpromisB	problematBpraisBperBnigerBmichaelBmemeBjerkBimmigrBhostBhinduismBhindBgymBgreenBgoldenBgoalBformerBfastBexecutBdntBdislikBdefensBcostBcomicBbtBbruhBbandBachievBwedBuneducBtemplBswitchBsuddenliBsuddenBstalkBsimilarBshoeBpredatBpocBplatformBpanditBnearliBnarrBmosulBminBmemoriBloudBlgbtqBkhanBjoeBinteractBhoBglobalBevangelBenginBcultBcoworkBcopiBcontactBconsequBchoseBboughtBbeatenBwipeBviBunfollowBuncomfoBunclBtwiceBtranslatBthruBtaylorBstreamBstoodBskillBsingBsecretBsearchBriskBreplacB
professionBperhapBpeakBpakBownerBnicknamBnativBluckiBlegBkillerBisraBidcBiBharamBguiltiBforeignBfascistBfagBeventBengagBehBdishBcenterBbrandBanxietiBantifaBalbumBwallBtripBtagBsunniBstuckBstoleBsoldBshopBscariBroadBripBrequestBremarkBrelentlessliBrayBpropeBperformBpandemBnutBmeatBmakeupBkoBkkkBkafirBintelligBimmaBhigherBhelloBgfBeuropeanBenforcBdumbassBdraskoBdirectliBcontentBcoffeBclownBchannelBcameraB	blasphemiBbastardBamongBaheadBwebsitBwatBspanishBsolutB	socialistB	secondariBromneyBrageBnyBnakeBmasterBloBjihadistBimpliBicipBfuckerBfreebsdBflatBfavBdomestBdollarBdevBcompetitBcandidBbesidBbegBarentBanybodiBwillBwhoeverBvibeBurselfBsupremacistBsuperiorBroyalBrootBrollBrobBreactionBpyramidBpressurBpedoBpaperBoppoBnerBmootB
microbrainBlooBlloydBkneeBinstaBilliterBharriBgaterBgarbagBfourBfilipinoBeverytimBeventuBethicBeraBdominBdesBdemandBdalitBcuriouB
conspiraciBcomfoBcheapBbuddiBbrokenBbenefitBbareBbabeBawardBaudiencBassociBactorBwarnBvisitBtoolBtomBterrifiBtendBtattooBsuspendBstrongerBsolvBshownBscholarBriseBrelevBrapBproperBpreBplentiBpetitBnationalistBmuhammadBmodernBmoBmiserBloverBlawyerBjameBigBiceBheavenBhdayBhatBfridayBflipBfingerBfashionBemoBeffoBcreepiBcontestBconceptBconBcloserBciBbumBbuddhistBbehavB	basketbalBalrightBuselessBtitlBthereBtenBteBstaffBsheBrdBquickliBprocessBprincipBprideBporBpileBpantBmoderBlockerBjohnBistBinferiorBidentBhospitBfilthiBenslavBenergiBemployeBembracBdiverBdisgracB	difficultB	constitutBconfirmBclassiBchristmaBboxBbasiBwildBwenBtraumaBtrackBstrategBsponsorBshoveBsenatBsamBsafetiBrnBrealisBpeerBmotivBlucaBlowerBlootBlocatBlegitBkaBinvestigBintimidBicularBgdcB
derogatoriBdegreBdefBcoronaBcoachBborderBblahBbirdB	behaviourBbadliBaveragBapplBaltByuBxxBwinnerBweekendBtraitorBtradeBtoniBtimelinBtilBsuspectBsumBsuitBstrengthBstageBspotB	slaughterBsilliBsighBseatBsakeBrussianB
repeatedliBregretBratBrapperBramBradioBpunkBpromoBorangBobjectBoBmaturBmathBmassivBmanipulBletterBleoBjournalB	holocaustB
highschoolBgottenBfrBfellBfedBdisturbBdigBdegradBcowBcontroversiBcheerBbugBbrahminBawkwardB	apologistBalthoughBafghanistanBadvancBabilBweedBwasntBtreeB	supremaciBstrikeBsteveBontoB	nightclubBnigeriaBmolestBmayorBmannerBmaiBloadBlmaooBkpopBjockBislamophobiaBintegrBinsensitBindependBimmaturBhitlerB
hindusthanBheldBgiftBfighterBffBfantasiBequivalBemployBearBdrBdismissBdictatBdemonBdefencBdaveBdanBconcentrBcoldBchatBbootBbearBanywherBamazonBallegBakaB
acknowledgByepBuniquBunionBtwistBtoneBthrownBtacticBsummerBstareBshallBscrollBrecognBpuppiBpublishBprofitBplateBplanetBpettiB
motherfuckBmedicBmeanwhilBmarketBmarchBlogBkurdBidolBhugBgothBgithubB	forgottenBfileBfamouBescapBequatBentitlBeasierBearlierBdivinBcureBcouncilBclueBbreedBbreathBbraveBbiteBbeBbackwardBbaBavailBashBarrogBainBaffordByesBtravelBthickBsatBsassiBsaBrushBroseBrepBqaedaBprimeBpaintBoperBmuteBmonsterBloyalBlossBlameBkiBkeBintolerBhyBhungBhistorBhijabBgovBgeorgBfinanciBexpensBewBesteemBepBemptiBearnBdonatBdisplayBdiseasBdinnerBdetailBdesperBdelhiBclosetBckB	childhoodBcampuBcalmBblastBatrocBancestorBadoptBadamBaccurByohoBwhatBwaveButterliButterBturkishB	treatmentBtonBthiBswiftBstressBspitBspamBsooBscriptBsausagBringBregimBreactBrandiBpublicliBprovenBproperliBprayerBpathBneckBmutualBmarxistBlecturBleaguBlabourBkidnapBkevinBkarenBjackB
islamophobBirlBinjusticBincredBimamBhispanBhillBhackBguidBgroomBgrandmaBfederBfaveB	experiencBessentiBeditBdutiBdummiBduckBdoinBdoBdepaBdelusionBdeafBcreamBconstantBconspirBcomputBcollectBchokeBchefBbuttonBbitchiBbiasBbatBapproachBalotBaccessByouthByayBvcBvaginaBuniBulBtumblrBtransferBstolenBsolidBsockBshipB
screenshotBrlliBreunionBresourcBreformBredneckBrareBprejudicBpollBpetBperspectBpassionBpancakBopBnanciBmiBmassacrBmanuBlockdownBjiB	interpretBhrBhoodBhomeworkBholidayBhillariBhighliBharderBgoshBgoldBfloorBfestivBfeaturBfamBextraBdoxBdivisBdarBcustomBcottonBconvoBconnectBbragBbooBbczBbarkBautistBassistBarabiaB	transgendBtheyrBtapeBtalentBsurvivorBsundayBsuBstrangBsouthernBsofrBslideBslanderBsheriBsexiBselfiBrecruitBrecalBrebeccaBrationBrantBpuppetBpriceBprBpotuBpocketBpermissBpatriotBpanicBneighborBmondayBmariBmamaBmalcolmBlookinBlatestBjeanBjareBjapanesBirrelevBironiBiqB
intellectuBinhumanBinfluencB	hollywoodBhmmBgigBghazwaBgatherB
friendshipBfrenchBfoolishBfilterBexpB	establishBemiliBdisneyB
dictionariBdesirBdefeatBdcBcrashBconquerBcongratBchaseBchappelBcanadianBcakeBblownBbleedBbhaktBbenBbcozBbayBbankBarB	antisemitBakbarBainliBadorBwhineBvillainBvillagBviceBverifiBtyBtrickBtraderBtipBticketBsuaBsoooBsnapBshooterBshaveB	shamelessBserBselfishB	scientistBsayinBsandwichBrubiBrobeBreservBreopenBreflectBqualitiB	psychologBpitchB	peshmergaBperpetuBpermitBoutfitBomarBohhBoapiBnotifBnickBneighborhoodBmonitorBmindsetBmerciBmaxBmailBmachinBlowkeyBlickBlearntBincreasBincestBinBhellaBheheBguardBgreekBgraceBgaBfrankiBfantastBfandomBfairliBevanBerdoganBenablBegyptianBegyptBeggBedgiBeconomBeasternBdiffBcuBcrusadBcrediblBcreaturBcornerBconsistBconsentBcongressmanBcondonB
complimentBclientBcherriBchelseaBchainBchaBcellBcapablBbutcherBboneBbokoBbilliBbeanBbbcBautomatBaudacBauBathletBasidBamusBalienBaimB	administrBypgBwriterBwhipBwhilstBwelfarBwebBwealthBwaBvirginBverbalBusernamBultimBtribeBtossBtiniBthereforBtelevisBteethBtauntBsystematBsymbolBswordBstatistBspoilBspirituBslowBshowerBshoulderBseaBrhetorBrevoltBreversBrevealBresistBresidBregularBprobBposeBplotBoddBnudeBnahiBmullahBmikeBmeuBmasjidBlibeBleftiBlayBkelliBjordanBisolBinsistBincitB
inappropriB	implementBiliBhungriBhopBhealBgrateBfriendliBfoxBfailurBespBendorsBdocBdiscovBdirectorBdeterminBdespisBcrowdBcreditBcountiBconventBcontraBconferBconditBcommandBclosestBclipBclapBchildishB	caucasianBcanadaBbridgBbowB	blackmilkBbitterBbharatB
bangladeshBbaghdadiBautismBassumptBappealBapologisBanytimBangelBalignBaleBaddictBaccidentByellowBwannabBvoterBvocBvariouBtraditBtherapiBthemeBthaBsurroundB
supposedliBsueBstrongliBstrangerBstationBsquadBspokenBspiritBspewBspeciBspareBsofrendoBsmellBslowliBskyBskipBshapeBserverBschoolerBroflBrestrictBresignBremotBregionBredemptBrandomliBpredictBpreciouBplainBpaulBpairBoveBnunBniggBmongerBmilkBmenuBlibyaBlibrariBleanBlaidBladBkindliBkimBkickstaBjeffBislandBinitiBinfidelBindeBimpactBidealBhumblBhomiBhlessBhipBhindiBheaviBharbBgraveBgrandBgrammarBgeniuBgandhiBgamerBfloodBfinnaBfemininBfaBenvironBempathiBdumpBdistancBdavidBcringBcricketBcounterBcontBcomplexBcompetBcompassBcirclBccBcapitBcallinBbleachBbisexuBbinB	barbarianBateBamendBadmirBweirdoBwarriorBwarmBvicBuniformBtylerBturkBtraumatBtormentBtitBtightBthxBthursdayBthroatBthrBthinBtedBstomachBspeakerBsincerBshineBshiftBshadeBsectionBsasBrocketBretirBrefugeBrankBprincessBpraBpoveBpotentiBposterBphraseBperpetrBparaBpaleBoweBoutlawBoutcastBomfgBobservBobligBnowherBnetflixB	necessariBnailBmraBmoodBmohammadBmlkBmissionBmirrorBmilitBmigratBmidBlegitimBleakB
leadershipBlatinoBkurdishBknoBkaafirBjustinBjudgmentB	judgementBjoyBjaBirritBirishBinvasBimperiBhumourBhorrorBheelBhebrewBgujaratBgrowthBgoonBgoodbyBgoddamnBgettinBgateBfrankBflowBfavouritBfanatBeidBdisordBdickheadBdemonstrBdealtBcouragBconvictBcocktailBcnnBclintonBcircumstBchubbiBchiefBchestBchapterBchantBcapB
californiaBcaaBboomBbiaBbelittlBbangB	australiaBanonymBagoraBagentBadvantagBacctBabBzionistBzBxboxBwrestlBworkplacBwindowBwhoaBweatherBtwinBtwatBtruckBtroopBtorusBtodoBtinderBthuBthriveBtechnicBswimBsubBstarvBspiteBsoroBsobrBsmashBsleptBsightBsickenBshelterBsecretliBscumbagBscenarioBsarahBsanBsaleBriverBrentBrefB	recommendBrawBpurplBpunBprovokBpromB	professorBprinciplBpreviouBpreparBpodcastBpizzaBpersonaBpariBoveralBorientBoonBnuclearBnickiBnervBnecessariliBneBmughalBmtBmpBmoorBmilitiaBmeatbalBmaintainBmaBlynnBlmaoooBlemBlbBkobanBknwBislamolunatBinvestBintroducBintendBinstitutBinfiltrBinclusBimoBidgafBiconBhypeBhuntBhumiliBhorrifBhoneyB	highlightBhighestBhavBhardliBhalalBgraphicBgrantBgirliBgiantBgapBgalBfrogBforbidBfloridaBfeeBexpelBexcelBendlessBegoBdraftBdonkeyBdivorcBdistrictBdespicBdeliberBdeepliBcrowBcriticisBcrisiBconflictBcommiBchicagoBcaveBcategoriBburiBbroadBbrightBboobBblumenthBblatantBbiologB
billionairBbhaiBbeefBbasebalBbarackBayeBawwBatleastBappeasBaocBanalogB
accomplishBzoneBwoodBwiveBwitchBwidBwhoBwhBvolumBvalleyBurgBurduBupBunnecessariBunfairBunemployBumaBtrailerBsweetheaBstrategiBstormBsoftwarBsmfhBsmallerBsmBsixBsignalBshieldBsharkBsettlBserialBsavagBsandBsalonBsaintBsadistBryanBromancBrliB	regularliBregistBredditBrangBradBquemBpsychoBproclaimBprickBporkBpitiBpipeBpeterBpervBpeepBpatternBpastorBpakiBosamaBopponBoooBnoisBnetworkBneoBmsmBmercilessliBmateriBmainliBlyBleeBlaunchBlangBkuBkneelBkeyboardBkanyBkaffirBjohnsonBjessBjasonBirBioBinequBimpossBikBicularliBhomelessBhockeyBhmBheritagBhencBheaviliBhallBgunnaBguestB	grandmothBgovernorBgorgeouBgoinBgoatBghettoBgaylBfyiBfuckenBfoglBfloydBfleeBfilthBfilBfavorBfarmBfactorBexploitBexercisBestavaBeradBenglandBectBeconomiBdisruptBdeyBdelBdanielBcupBcreatorBcoughB	constructB	congratulBcommissBcomebackBcombinBcliquBclichBcleverB	classroomBclassifiBclanBciteBcheesBchampionBcaraBcapturBbuckBbreadBboycottBbomberBblizzardBbehalfBbeardBbaitBapplicBanalBadminBaccBwrapBworldwidBwiseBwineBvulnerBvouBvandalBuploadBunrealB	unpopularBtuneBtriplBtrashiBtrapBtoyBtoshBtoiletB	therapistBtemBtankBtalkinBtaleBsyrianBsyndromBsympathiBsydneyBsunnahBstripBsteamBstancBsomedayBsnowBsnakeBslightliBshutupBshakeBshadowBscrewBsaturdayBsaltiBrubBroughBroastBrescuBrepublBralliBrainbowBqualifiBproposBpoorliBpinBpessoaBpeddlBparodiBpanderBoutBniBnawBmoonBmkrBministBminimumBmehBmealBmargaretBmankindBmallBmagaBmadrassaBlunatBloneBkoreaBjoBjimBjaishBjaiBinstancBinherB	indoctrinBincurBimprisonBianBhomoBhoaxBhernBhermorBheightBhahBgreyBfuelBfrmBfrankenBfoundatBfistBfirmBfetishBfascismBfameBezidiBextendBexcludBerrorBendearBemojiBelephBebookBdtBdriBdnaBdignitiBdietBdiaBcrBcorporBconductBconclusB	complaintB
comparisonBcommitteBcloudBclickBcasualBcashBcaptionBbsdB	blatantliBblaBbinayBberniBbeltBbeinBbbqBbbBaurBaspectBapostBapeB
antichristBanitaBalternBalexBaffairBadvBwindBwideBvowBvidaBveteranBvastBvanBunequB
understoodBunacceptBunablBummahBualliBtwentiBtrialBtokBtoBthnBtexaBswingBsurgeriBsunBstrawBstoogBstockBspoutBspinBspiBsophomorBsomaliBsofroB	sociopathBsnapchatBsmugBslangBshedBshahBsfBsecondliBsatisfiBsanctionBrowBrotBroommatBrogerBrioterBriceBrewardBretaliBresoB	representBrepentBreliablBreinforcBreducBrampantB	quarantinB	protestorBprolliBprizeBpriestBpregnancBprecisBpourBporquBpoisonBplantBphoniBphaseBperceptBpassivBoccurBnumerBnovembBnormBnimoyBnightmarBnhB
narcissistBnapB	minnesotaBmessiBmechanBmarginBmapBmandirB
mainstreamBlebronBlashkarBlashBlakhBlaborBkoreanBkoranBjokerBjoeyBjealousiBjacksonBitemBipBinstructBimprovBhtBhotelBhostilBhappiliBhannahBhandsomBhandicapBguardianBglobeBgingerBghaziBgetherBgermaniBgaslightBfunnierB	fundamentBfunctionBfulBfrustratBfriBfocusBfictionBexchangBevaBdroveBdrivenBdoeBdocumentBdistractBdisastBderBdepthBdenouncBdemeanBdelusBdeedBdawgBdamBcyclBcumBcreepBcreationB
coronaviruBcoreB
contradictBconcBcoinBcmonBcitizenshipBchosenBcharliBchanBcelinBccpBcaravanBcaptainBcamillaBcageBbustBbulletB	brincandoBbratBbottlBbikeBbetrayBbeganBbeerBbeatdownBbeachBbcuzBbadassB
backgroundB
australianBaugustBattributBasapBarabianBaoBanglBaliBalexandBahahaBagBacademiByummiByuhBytByorkByikeByemenByeapBwilliamBwerentBunarmBuighurBueBuberBtuBtryinBtragicBtrafficBtourBtoteBtoeBtittiBtikBthotBthorBtheeBtheaterBtentB	technologBtapBtailBsubscribBstructurBstompBstatBsquarBsplitBspineBsooooBsoleBsmearBsmackBsleevBsignificB	sentimentBsegregBschedulBscandalBsatirBsarcastBsarcasmBsanghiBsaltBruthlessBroutinBropeBroofB	roguestarBroguBrobberBrevolutBresentBrepubB	reproductBreliBrefinBrainBpvpBpunchlinBprosecutBprankBpqBpotBpokeBpokBpillB	photoshopBpeshBperlB	perfectliBpeniBpencBpelosiBpaleoBpalB	overwhelmBoverliBoopBoleBobeyBnycBnuisancBnpoBniteBnigerianBnewspapBmountainBmommiBmmmBminhaBmileBmethBmentorBmeasurBmarvelBmagazinBmaamBluvBlooterBlmaooooBliverBliftBlifestylBlibBlewiBlegendBlaundriBlatinBkalamBkaiserBjuliBjokingliBjkBjessicaBjamatiBjackassBiseBiraqiBiranianBintensBinfectBindicBimposBimpeachBhttBhorrendBhookBhindusthaniBhehBheatBheadlinBhallwayB
hahahahahaBhackerBgripBgleeBghostBggerBggautoblockBgermanBgeorgiaBgenBfunniestBfulaniBfounderBfoulBfohBflightBflawBflashBfishBfckBfamiliarBfadeBezBexplanBexpirBexclusBexcessBepsteinBencountBedliBdyeBdreadBdouchBdevotBdescriptBdemiBdefundBdefamBdeckBcrewBcowardliBcouldntBconveniBconsumBconfessBcompBcluelessBclarifiBchocolBchoBcharitiBchairBcamelBbumpBbudgetBbrushB	brilliantBbraBboundBboriBblankBbedroomBbathBbaldwinBaweBassurBasiaBarrivBaprilBancientBancBamiBalcoholBaccidBacademBabroadBabdulBabandonBaaBzoeByknowBwthBwreckBworshippB	wikipediaBwhoopBwhereaBwhelpBwetBwaistBvulgarBvoluntBvocalB
vocabulariBvivekBvidBversuBurinBunderminBunbornBtonguBtoastBtimBthirstiBthinkinBtheBteammatBtacklB	sympathisBsurfacBsuppressBstuntBsriBspicBsoreBsomaliaBsolteiroBsoccerBsoapBsloganBslamBskiBsimultanBsheepBshazBshaneBselloutB	secretariBscripturBsaviorBsaferBsacrificBsackBrumourBrulerBromanBrepressBrelBreclaimBratchetBraqqaBquoBpulpitBpukeBpueBptsdBpseudoBprosperBprohibitBprofessBproceedBprincB
presidentiBpoundB	pointlessBplaneBphillipBpercentBperceivBpenniBpausBpatientBoomfBoffencBoceanBocBobesBnprBnotionB	nonprofitBnicerBneutralBnatoBmythBmumbaiBmuellerBmicBmereBmeninaBmattB	mansplainBmakerBlyricBluckiliBlouiBlmfaoooBlionBlimbaughBlicensBlaneBknifeBkmBkayleighBjuicBjudeoBjelliBjapanBjanBjamaatBjamBjagBitionBitaliBishBinvalidBintrovBinstigBinsightBinfantBincBimranBimmorBieBibnB	householdB
homeschoolBhmmmBhivBheapB	healthcarBhayBharmlessBhalalaBgwBguaranteBgreatestBgreaterBgossipBglowB	ghostbustBgearBgcBgandaBgagBfundamentalistBfruitBfrioBfringBfrequentBfrancBforkBforgavBflameBfasterBeternBestBespnBescalBenviBempirBemergBelsewherBelitBelementBdykeBdyBdunnoBdrawnBdozenBdonnaBdollBdodgerB	discreditBdisBdictatorshipBdeskBderivBdepoBdenB	demographBdecencBdeadliBdarlBdarkerBcurbBcrueltiBcrookBcritiquBcreedBcreativB	countlessBcorpBcopeBcooperBcookiBcontractBconnotBcomigoBcloutBclimatBclassistBceoBcaterBcapeBcameronBburntBbunniBbubblBborrowB	blacklistBbhiBbestiB
bestfriendBbengalBbefriendBbeeBbatteriBbaphBbalancBbakeBbaeBbaconBattachBarianBarenaBaptBappalBandrewBainmentBahhBagencBaffirmBaesthetByouByazidiBxxxBwudBwouldntBwoahBwhiniBwherevBwackBvictoriaBuyghurBunsafBuneBunbelievBtyrantBtyranniBtypoBtunechiBtumBtropeBtorontoBtomboyBtoddlerBthighBthievBtensionBtaqiyaBtanBswedenBsweatBswallowBsuspensBsurrendBsupremBsuckerB	substitutBsubmitBsubmissBstumblBstephenB	statutoriBstairBstackBsprayBspiderBspainBsomewherBsobBsneakerBslipBsinkBsimBsiliconBshudBshoutoutBshouldntBshadiBseuBsessionBselenaBseanB	screencapB
schoolyardBscholarshipBsavannahBsaneBsanderBsamplBsalafiBsacanearBrugbiBrubbishBroxanBrobotBrmBritualBrigBrichardBreparBrenamBredicBrecognisBrecipBramadanBquietliB	pseudonymB	prostitutBpropBprofBprivaciBpresencBprepBpredominantliBpotatoBporchBpopeBpoopBpimpBphobicB
phenomenonBpewdiepiB	percentagBpeachBpdBpaxB
patriarchiB
parenthoodBpantherBouB	oppressorBonlyfanBoccupiBnukeBnovelBnominBnoblBnineBnetBnephewBnehruBnbaBnamazBmusclBmodeBmnBmittB	misinformBminionBmiloBmichelBmethodBmedicinBmaulanaBmarBmanualBlukeBloiraBlobbiBlitB	lightskinBlaughterBlargestBkudoBkikeBkhybarBjunglBjstBjoshBjointBjimmiBjfcBjacketBjacB	irrespectBirelandBipadBinterferBificBhunBhonourBhonkiBhomecomBhojeBhobbiBhijackBheckBhealthiBharvardBhahahBhaceBhabitBgulliblBgtfoBgorillaBgordonBgooBfygmBfurriBfunerBfulfilBfukBftBfreeliBfrankliBfirBfellaBfeBfauciBfanciBfacilBfabricBextentBexamBevolvBevolutBetBessayBensurBempurrBempowBemmaBelaBedgBebolaBeaglBdynamBduteBdumbestBduhBdudebroBdogpilBdodgBdisguisB
difficultiBdiamondBdevoutBdemonisBdecorBdeclinBdebraBcuckBctBcripplBcrackaB	covingtonB
countrysidBcontinBcongresswomanBcompensB
commentariBcombatBcoloniBcollinBcollarBcoatBcigarettBcharmBchamadaBchamaBcentBcbBcaliphBburdenB	broadcastBbritBbrickBbrexitBbreitbaBbrazilBboostBbonuBboilBbloggerBblewBbimboBbiblicBbffBbendBbelovBbecozBbannerBbananaBbadgBbaddestBayBautoBauntBattorneyBassignBassadBasfBaryaBarsenBanB	allegedliBalbanianBahhhBahaB	agreementBadjustBadditBacquittBaccentBabuBabolishBaapB	zimmermanBzakirByurBypjByoongiByogiByangByahBxenophobBwweBwouldaBwolfBwocBwinterBwhistlBwheelBweekliBwealthiBwaleBvscoBvpBvisionBvineBvincBvikaBvenomBveilBvalentinBvaiBvacatBvaBupperBupliftBunwantBunleashBunhappiBunaBukipBuhhhBtwtBtskBtrayvonBtransphobiaBtransitBtraitBtraffickBtowerBtokenBtohBtigerBtheologB	testamentBtenniBtemptBtaoBtantrumBsympathBswellBsweetiBsweetestBswagBsurahBsuppliB	superheroBsucceedBsubstancBsubbanBstretchBstokeBstgBstarbuckBstandupBstampBspringBspotifiBspatBspanBsoooooBsoonerBsomewhatBsoBsmirkBslaverBskypeBskullBsjBsiblBshiteBshellBsheeshBshBsemiBselvBseedBsecBseattlBseahawkBseabreezBscottBschumerBscamBscaleBsantaBsaeedBrugBrobloxBrioBrighteouBresolvBresolutBreputBremakBrejoicBrahulBqatarBproxiBpropagBpronounB	predatoriBppleBpotterBposseBpokemonBpledgBpleasurBpitBpieB	philippinBpetaBpenBpeltBpedestBpearlBpatreonBpatchBpatBpanBpaiBpadB
overweightB	overreactBostracBoptBooooBolBojBofcBobnoxiBobliviBnuBnotoriBnigBnicolBnicestBngBnervouBnephilimBnaivBmutilBmuseumBmultiBmuBmsgBmopBmonBmommaBmodBmobilBmlmBmistreatBmisinterpretBmiseducBmiraclBmintBmessengBmeroBmerdaBmelonBmeinBmedinaBmedalBmccainBmarinB
manufacturBmansionBmalayBmagnetBmadarsaBmacBlooolBloolBloginBloganBloathBlinkedinBlibelBlawsuitBladenBknightBklanBkingdomBkindlBkindergaBkeynotBjustifBjoneBjohnniBjogarBjeffreBjayBjammuBjakeBislamofascistBisanBisalmBiplBiphonB	intellectBinsurBinputBinningBinjuriBindulgB
indirectliB	incorrectBincomBimpunBimperialistBimmensB
illuminatiBilhanBiircBifiBiamBhurriBhungerBhubBhqBhowBhorridBhorniBhoorBhometownBhintBhiddenBhickBheadachBhaventBhatinBharrassBharperBhanB	halloweenBhalfwayBhainBhailBgvBgurlBgumBguiltBgreetBgreecBgrandpaBgoofiBgolfBgigglBgamergatBfucknBfuckboyBfreshBfreezBframeBforrealBforeheadBforefathBflexBfingirBfiancBfergusonBfallenBfactualBfactoriBeyebrowBexpeditBessaBepitomBentitiBendurBeleBeatenBeachothBdroolBdragonBdopeBdoctrinBdjBdistressB	disciplinBdevicBdetentBdescendBdeprivBdenialBdelivBdelayBdeanBdarnBdarkskinBcwBculpritBcracklBcowboyBcorniBcontainBcommerciBcodiBcockiBcmBclockBchutiyBchuckBchipB	cheerleadBcheekBchaoBcentrBcensorBceasBcdcBcapitolBcamBcairB	cafeteriaBbutthuBburraBbritainBbrideBbreastB	brazilianBbranchB	brainlessBbraidBboycotBbowlBbootiBbondBbollockBboldBboBblkBblBbieberBbgBbeyoncBbengaliBbelivBbacklashBauntiBaudioBasylumBassemblBarcBapiBanthoniBanniversariBannBanalystBamiritBamdB
ambassadorBallergBallahuBalabamaBafroBadvocaciBactressBacnBachoBabsurdBableistBabeBzooBzombiByuckByoungestBygByehBxmaBxinjiangBwyattBwigBwifeyBwhtBwholeheaBwhiteyB	whitewashBwhewBwhatsoevBweirdestB	wednesdayBweakerBwaspB
washingtonBwarrenBwanderBwahhabiBwahabB	volleybalBvetBverdictBventBvehementBvaguBvaccinBuwuBurlBupcomBunknownBunironBunfunniB	unequivocB	unattractB
unapologetBultraBtwinkBtrynnaBtrendiBtrekB	transformBtragediB	tormentorBtommiBtijoloBthierBtexanBterriBtdBtallestBtackiBtablighiBtabletBswineBsweepBswanBsunshinBsugarBsubtweetBsubtlBsubsidiBstutterBstringBstrapBstinkiBstemBsteakBsteadiBstainBspiciBsorbetBsophiaBsonicBsofriBsofrerBsneakBsnatchB	slightestBslickBskaterBskankBsingerBsimpsonBshytBshrugBshawtiBshatBsewerBsethBseptembBseekerBsealBscratchBscrapeBscissorBscarBsaviourB
sarkeesianBsalutBsacrBsabB
ruthlessliBrottenBrooftopBrohingyaBrileyBrevolvBrevelBretoBrepostBreiterBrediBrecovBrecitBrecessBrebuildBreblogBrebelBratioBraidBquirkiBquaBpurchasBpumpBpsychotB
psychopathBprominBprioritiBpriorBprintBpreservBpreppiBprefectBpravanaB	powerlessBpooBpoeBplaylistBpiercBphilBperversBpersistB	peninsulaBpenaltiBpedreiroBpaycheckBpatrickBpatiencBpastelBpasswordBpassagB
parliamentBparallelBparBpackagBpacBoverlookBoutroBoutingBoutcomBoughtBottomanBoromoBoralBoofBoliviaBoldestBohhhhBohhhBoccasionBoccasB	objectifiBoaklandBnowadayBnoosBnoonBnintendoBngaBnerdiBneatBnazismBnarcissBnaoBmysteriBmustachBmugBmtvBmousBmountBmoslemBmorganBmoleBmockeriBmitigBmisunderstoodBmistakenBmisguidBministriB
millionairBmidgetBmetalBmeltBmelbournBmeccaBmassaBmarkovBmantraBmajorliBmagnificBmadisonBmaddBmadamBloyaltiBlmfaooooBlmfaooBlipstickBlikBliB
legitimaciBlegislBlawlessBlatterBlatinaBlastliBlahBkongBkobeBkittiBkiaBkateBkarBjuvenilBjuiciBjogoBjerseyBjenniBjemBjehadiBjawBizBitalianBislamophobaBinsinuBinevitBindigenB	inconsistBincompetBinbrB	imaginariBilysmBiiBidiociBhwBhumanitarianBhowardBhorrifiB	historianB	hinduphobBhidB	hezbollahBheteroBheroinBhereBheidBheadassBhawkBharveyBharshBharmoniBhardestBhardcorBhamBhacerBguruBgulfBgriffinBgreasiBgrandparBgrahamB	goodnightBgonaBgloriouBglorifiB	gentlemanBgeneBgawdBgardenBgagaBgabbiBfreakinBfragilBfouBformulaBformatBfondBfoldBflynnBflowerB	flashbackBflBfixatBfingBfinestBfckingBfbiBfazerBfauxBfattiBfatalBfairiBextoBexpansBexpandBexoduBexhibitBexhaustBexemptBexaminBestatBestaBescolaBequipB	endlessliBellenBelijahBelderBeditorBduniyaBdubBdrumBdrownBdroneBdrakaBdownplayBdoseBdocumentariBdmingBdivaBdittoBditchBdistastB
disqualifiBdisagrB
differentiBdevopBdescentBdeplorBdepictBdeliciBdefaultBdeeperBdeemBdedicBdebtBdeadassBdatabasB
cyberbulliBcustodiBcurviBcurlBcueBcrystalBcrumbBcrawlBcraveB	counselorBcostumBcosplayB	correctliB
cornerstonBcontemptBconfederBconcludB
comprehendBcomoBcollusBcodBcntBclimbBckingBciaBchronicBchopperBcheaperBcharaBchapelBchBcentristBcentralB
censorshipBcelebBcdBcausaB
capitalistBcanonBcalloutBcalendarBcalculBbutterBbushBbusBbunkBbruceBbrookBbribeBboutaBboldliBboiBbobbiBbobBboatBblokeBbiraciBbinariBbibiBbgtBbegunBbeastBbbiBbatmanBbasementBbarrierBbarbiB	bandwagonBballotBbahahahaBbackpackBawwwBaviBasuBassassinBasadBaryanBaruBarseholBarmenianBappointBapplaudBapnBapBantliBanoBandroidBamongstBamoBamigoBamandaBalqaedaBalphaBallegiBalikBalgebraBakinBakBairpoBahtB	afterwardBafghanBaffiliB
adolescentBaceB	accompaniB	accessoriBacBabductBabcByunByoselfByankByahooBworkoutBwooBwombBwodBwnbaBwireBwingerBwimpBwikiBwhisperBwetbackB	westminstBwelpB	weinsteinBweeBweaselBweaklB
watermelonBwassupBwanaBwalmaBwalkerBwagBvoyagBvomitBvolBvoBvisiblBviralBvictoriB
victimhoodBviciousBviciouBverifBverBvehiclBvarietiBvapidBvaluablBusbBusagBurbanB	unrealistBunprofessionBunlimitBunhingBundoubtedliBunderagBuncalBunbearBunawarBummmBummaBummB	ukrainianBukrainBughhhhBughhBualBtymBtwitBtwerkBtwelvBtweeterB	tweetdeckBtuitionBtuesdayBtubeBtshiBtrillionBtrifectaBtranspoBtransparBtranniBtrailBtrBtoothBtnBtimothiBtimaB	throwbackBthroneBtheyvBtheyB	thanksgivBtextbookB	testimoniBtesticlBterrorisB	territoriBterminBterfBtechniquBtareBtammiBtallerBtalaqBtakinBtakeovBtaibaBtabBsyBswornBswamiBsurrogBsurgB
supervisorB	supernovaBsummariBstufBstubbornBstripperBstrayBstrBstorylinBstirBstigmaBstepdadBsteelB
standpointBstalkerBstadiumB	spotlightBspookBspikeBspawnBspankBsovietBsourBsnickerBsmithBsmanshipBsmallestBslimBskitBsitcomBsissiBsierraBshrinkBshrineBshldBshhhhBsheriffBshelliBshdBshababBservantB	senselessBsegmentBsectorBsectBscrubBscreechBscBsavarkarB	satisfactBsarsourBsalesmanBsalariBsahihBsabeBrwBruthBroyBroutBromantBroachBrightliBrickBricanBresiliBrepulsBreplayBrenewBrelivBrelaxBreignBregulBredheadBredeemBrearBrealistBrapeyBramzanBramsayBramblBramaBrailBragBrachelBquestBquandoBpubeBpsaBprovincBpropheciBpropagandistB	primariliBpriaBpreviousBprevailBprescribBpreacherBpovBposerBpopcornBpoolBponytailBponiBponderBpolishBpoleBpogromBpoemBpluralBplayinBpiratBpianoBpersianBperoBpencilBpeicBpaymentBpaybackBpawnBpatronBpasspoBparsiB	paragraphBparadisBpanelB	paedophilBpactBoverridB	overheardBoscarBorgiBoreilliBooohBooBolliBohioBogBoddliBobscenBobediBoathBnvrBnumbBnuancBnormalisBnooBnoBnimbBnikeBnflBnexuBneveBneighbourhoodBnegotiB
naziphobiaBnaviBnarrowBnaikBmyanmarBmournBmorrisonBmorphBmoresoBmolliBmmmmBmmBmlaBmisusBmisunderstandB
missionariBmisleadBmisfoB
misandristBmillerBmillenniBmildliBmiamiBmessgBmesmoBmermaidBmeninoBmeltdownBmeghanBmedBmeanestBmcenaniBmcBmatthewBmarxismBmarioBmangaBmandatBmalignBmaliciBmalaysiaBmakinBmaintenBmaherBlykBlutherBlustBlureBlowlifBlowestB	loudspeakBloudliBloopBlololB	lmfaoooooBlmaoooooBllamaBlindseyBlindaBlightliBlighterBlessenBleonardBleapBleaBlayoutBlayerBlapBlaoBlankaBlanaBlakeBlainBkyleBkotakuBkniveBkitaBkitBkinBkernBkeralaBkenyaBkathiB
kardashianBjunkBjungkookBjuneBjsonBjourneyBjinnahBjessiB	jerusalemBjeffreyBjanuariBjamatBjahilBjahBjadiBiyaBivBiuBitBistgBisraelitBismB
introspectB	interruptBinterfacBinstinctBinnerBinmatBinjectBinheritBinflatBinfinitBinfightBinfestB
infanticidBinfactBindiBincelBimplicBimmunBimitB
illiteraciBhussainBhunterBhrcBhopkinBhookerBhooBhomicidBholliBhodoxBhippiB
heterosexuBhetBhenriBheeBheadphonBharvestBhaltBhaitiBhafeezBgwerBguildBguidelinBgueBgtfohBgrumpiBgrudgBgrrrBgreedBgrassBgraspBgraphitBgrandsonB	grandfathBgrafanaBgraderBgradBgpaBgooniBgodliBgodhraBgloriBgifBgentBgeekBgedaBgeBgatorBgaspBgarlicBfunimBfsaBfrozenBfrightenBfreedBfratBfranticBfractionBfosterBformalBforciblB	forbiddenBflushBflockBflavorBfireworkBfinancBfifthBficBfestBfemBfeedbackBfebruariBfazendoBfavourBfatwaBfascinBfantasBfaintBextensBexplorB
explicitliBexeBexaggerBevilgelBestoyBesoBepicBentriB	enlightenBelderliBeinsteinBehhBegBeffeminBeffBeditoriB	edinburghBeddiBeasterB
dysmorphiaBdwellBduoBdunBdumpsterBdumboBdumBdubeyBdripBdrinkerBdracoBdoxxBdownB	douchebagBdnBdmkBdizerBdiveBdistinctB	disregardBdiscriminatoriBdiscoursB	disappearBdigestBdialoguBdfBdevidoBdetainBdepoiBdenominBdemolishBdeludBdehumanBdeflectBdeenBdecapoliBdebunkBdawsonBdahBcutestBcurliBcultivBcuddlBcroreBcrianBcretinBcrateBcrappiB	crackheadBcpBcosbiBcorrelBcorbynBcoptBcoordinBcoolestBconstituBconsensuB	consciencBcongressionBconfederaciBcondomB
condescendBcondemB
comprehensBcomplicB
complexionB
compassionBcomedBcollapsBcollaborBcokeBcoalitBclaritiBcircuitBchristinBchopBchinBchemicBcharBcattlBcasaB	cardboardBcanBcafeBbyrdBburstBburgerBbuffoonBbuddhismBbuddhaBbucketBbrawlBbossiBboothBboomerBboltBblurBbloodshBblinkBblandBblackfacBbingBbiharBbiggotBbiafraBbeyBbewarBbennettBbecuasBbdayBbarriBbanterBbankruptBbangladeshiBbanderaBbambiBbamBbabblBbaatBazanBazaanBawhilBawakBawaitBavgBatlantaBastoundBassetBaspirBasleepBarrB	armstrongBarianaBarcadBaquiBapostaciBanthemBanorexBanklBangB	anarchistBanalytBalunoBalmightiBalbeitBaishaBaightBahemB	afternoonBadvisBadventurBadjectBadherBacronymBacidBachBaccostBabiBzahilBzackByungByredByouuByogaByemeniByellerByeahhByalBwwBwrestlerBwoundBwouldvBwornBwormB	wordpressBwonderwomanBwolvBwizardBwizBwithholdBwithdrawB
witchcraftBwisdomBwieldBwidowBwhnBwhimBwhichevBweighBweebBwatcherBwarrantBwarcraftBwahabiBwahabbiBwahBwadeBvoyeurBvividBvisaBvirusBvirginiaBvinniBvilifiBvickiBvibratBvesselBversaBverdadBvenuBvendoBvemBveggiB
vegetarianBvariatBvapeBvanishBvancouvBvacuumBuuButahBusinBuseridBuptightBupsidBuplayBupgradBunwoBunrelBunixBunicornBungratBunfairliB	underwearB	understatB
underestimBundB	uncontrolBunconditBunblockBummmmBumarBuhmBughhhBufcBtwitchBtwinklBtwilightB	tweetstatBturdBtupacBtukdBttpBtrudeauBtriflBtreasonBtotalitarianBtorahB	toothlessBtomatoBtirarBtiradBtipoBtingBtinaBtierBtiBthwBthumpBthrobBthomaBthmBthiseBthinkerBthickerBthiccBtheydB	theocraciBtheatrB
terminologBtenderBtendencB	temporariBtemperBteeheBteaserBtbB	tastelessBtaskBtarnishBtaquiyyaBtaqiyyaBtapperBtamponBtalagaBtBsynonymB	sympathetBswitzerlandBswirliBswedishBsweaterBswapBsvnBsuvBsuspiciBsurveyBsurnamB	superstitBsuperpowBsunburnBsummonBsubordinB	subcontinBstunBstudioBstrictB
strengthenBstreamerBstrawmanBstrandBstrainBstoopBstinkBstewaBstdBstatsdBstarmerBstankBsrBsquatBspoilerB	spinelessBspeedBspectrumB
spatchcockBspanielBspaBsoyBsomethinBsoloBsofriaBsociedadBsnowflakBsnoopBsnitchBsndBsnarkiBsnarkBsmoothBsmelliBsmdhBsluttiBslothBsloppiBslitBsleeperBslayBslagBsixthBsinghBsimpBsimonB	similarliBsimiBsilkBshowdownBshouldvBshouldaBshopliftBshhhBsherriBshapiroBshamblBshamBshallowBshaheenB	sexretariBserbiaBsensiblBsemprBsemBseizBseducB	schoolmatBscasterBsaucB	sasquatchBsangiB
sanctimoniBsalvatBsailorBsacrifBsabatBsaarBruralBrunwayBrpBroyaltiB	rotherhamBrotflmaoBrossBroofiBromanticBromBroleplayBrockinBrockiBroadmapBriteB	righteousBricoBrhymeBrewritBrevisBreveBreuterBretractBretentB
respectfulB	repercussBrenouncBrelocBreliefBrelegBregBrefutBreferencBrecognitBreckonBrecklessBrecipiB	rebellionBraveBrasistBrampagBraheB	radicalisBrabidBrabbitBquebrarBqldBpursBpubgBpubBpsychBprovocBprotocolBprotagonistBprophesiBpronouncBpromptB	pricelessBprezBpreyBprevalBpretzelB	prettiestBprettierBpretentiBprefBprecedB
praticandoBpovoBposhBpoorerBpollutBpodeBplugBployBplightBplasticBplaguBplacardBphoenixBphobiaBpharmaciBpfpBperkBperfumBpepperBpepeBpeeBpeasantBpaypalBpayerB	patriarchBpathologBpatentBpashtunBparkerBpardonBparadBpansexuBpajamaBpageantBpaganBpaedophiliaBpaedoBpaceBowenBoverBovariBoutrightBoutletBoutaBouchBothrBostracisBoppaBoppBontopBonionBonBomitBoktarBofcoursBocasioBobviBnytBnwBnswBnraBnotchBnooooBnonstopBnomBnobelBnixonBnipplBniggahBniecBnicholaBnglBneyBnewsweekBnewliBnewerBnemB	neighbourBneglectBncBnbBnavigBnatBnashvilBnamBnagB
mysoginistBmxBmuyBmutterB	mussoliniBmummiBmullaBmuhamBmuftiBmoseBmonkBmoanBmixtapBmississippiBmissilBmisquotBmishaBmisgendBmiseriBmisandriBminimBmindlessBmincBminajBmimiBmimBmigrantBmightiBmidnightBmicrowavBmickeyBmichiganBmetadataBmessiahBmendBmemorBmemBmeleiBmelaniaBmegBmediocrBmeantimBmeaningBmcdonaldBmbBmayweathBmaxinBmaximumBmatBmasturbBmascotBmarcoBmanliB	manifestoBmaneB	mandatoriBmamBmaidBmadrasaBmaddiBmachoBmacbookBmaaBlouderBloooolBlongestBlonerBloleBlogoBlodgB
lmaoooooooB	lmaooooooBlizzoBlineagBlincolnBliliBlifetimBliamBleveragBlesserBlengthBlendBleftovBlebanonBlawnBlavendBlaughablBlaptopBlapdogBlagBlactosBlacrossBlablBkyaBkyBkpBkoiBknucklB	knowingliBkkBkivaBkittenBkitaabBkisserBkirstiBkhalifaBkenyanBkekBkeemBkaylaBkayBkaroBkaratBkaisBjunkiBjuliaBjoelBjizyaBjerriBjehadBjannatBjamaicanBjainBituBislBisilBirratBinvokBinvisBinterBintelB	instantliBinstalBinsidiBinjurBinfringBinfraBinflictB	indonesiaBindirectBindifferBincorrectliBinablBimpotBimplantBimbecilBillogBillinoiBikeaBificiBidfBideaologBicBialliBialBhysterBhyperBhumilBhottestBhotaBhostagBhornBhoraBhooverBhoodiBhongBhonestiBhomelandBholiestBhizbulBheyiBhesitBhelessBhehehBhedBheadquaBheadmastBhazelBhavocBhauntBharrietBhardworkBhardlinBharborBharaamBhangoutBhammerBhamiltonBhajjBhahahahBhafizBhabituBhaaBgyBguitarBgtaBgruesomBgrpBgropeBgrinBgrimBgrillBgriefBgregBgratuitBgraphBgraciBgoyaBgoreBgoodmornBgoodiBgmBgloatBglareBgkBgitBggotBgenrBgenitBgemBgeezBgeeBgazwaBgazeBgasBgarrisonBgangsterBgangbangBgalaxiBfwiwBfussBfurniturBfrownBfroBfridgBfrickBfreebsdgirlBfreakiBfraternBfranklinBfotoBforumBforestBfordBfoiBfocusinBfmBfirstliBfiftiBfifaBfewerBfelonBfeiaBfcukBfbookBfateBfashionistaBfarmerBfapBfallaciBfacultiBexternBexplodBethiopiaBestoBescuelaBesauBesBereBerdayBenvironmentBeneBendangBemptivBempathBeminemBembodiBembassiBemasculBeightBeducadorBeatinB	dysphoriaBdumberBdukeBdubaiBduaBdropoutBdrewB	dreadlockBdreBdrascoBdramatBdrakeBdrainBdpBdowntownBdownloadBdouglaBdouBdoriBdoorstepBdonutBdonorBdonniBdomainBdojBdncBdmedBdjtBdistoBdistinguishB	disservicBdissentBdisputBdisprovBdisparagB
disneylandBdismantlB	disintegrB	discouragBdiscBdisavowBdipshitBdintBdinBdigitBdiggerBdiaperBdiabetBdetroitBdesktopBdeseBdeptBdenierB	dehumanisBdegenerBdeceitBdebutBdeadbeatBdbBdaycarBdawwwBdawaBdarwinBdanniBdangBdamselBdammitBcyclistBcutterBcutiBcussBcurvBcurdBcupcakBcubaBctfuBcrybabiBcruzBcrumblBcrudeBcrucifiBcrownB	criterionBcribBcredBcrazeBcrayonBcrassBcraftBcowardicBcoveragBcouscouBcoupB	counterpaB	countdownBcouldaBcouchBconveyBcontrastBconsultBconsolBconsciouBcondolBconcretBconceitB	complicitBcompelB	companionBcominBcomboBcolumnBcolumbinB	colorlessBcolonBcoexistBcocksuckBcockerBcliffordBclarifBclBcjBchuslamBchurnBchurchilBchucklB	chromosomBchromeBchileBchessBcheaterBchavBcharlBchaoticBceremoniBcaucuBcastratBcarrdBcarpetBcarelessBcaptivBcandlBcandiBcallerBcaliBcablBcabBbystandBbxtchBbutBburritoBbumblBbullierBbulimBbuilderBbuenoBbudBbtwnBbruisBbrooklynBbriefBbriBbreonnaBbrassBbozoBboyzBbouttaBbotchBbotafoguensBbosnianBbonB	bolsonaroB	bollywoodBboastBblushBbloomerB	blocklistBblockbotBblissBblindliB	blindfoldBblanketBblancoB	blackmailBbishB
birminghamBbingoBbetaBberatBbentBbellBbeggarBbecuzBbeanerBbbmBbarronBbarneyBbapuBbaptistBbanishBbanditBbaldBbakerBbaghBbaggiBbafflBbachelorBbabriBazzBayiB	ayatollahBayasofyaBavatarBautonomiBauthoritarianBatmBastroBassimilBassimBashranBariBarcadiaBanxiouBantagonBanonBannihilBandiBanalyzBanalysiBamplifiBamorBamenBameenBamalgamBaltogethBalterBallenBallaBaliaBalarmBalaBakeBajBainerBahmediyaB	aggressorBagaisntBadulteriBadaBabrahamBabominBabidBaavBaaaBzineBzealotBzakatBzachByurrrByumByouvByoooByhByezidiByerByearbookByazByawnB
yaqoubiyehByaaBxpBxoxoBxkcdBxiB
xenophobiaBwzBwspBwrongliBwrldBwrightBwootBwoodworkBwolverinBwntBwkBwitchoBwiserBwinstonBwilsonBwillingBwifiB
widespreadBwiderBwickBwholliBwhiteboyBwhistleblowBwheelerB
wheelchairBwhedonBwhatsappBwhaBweyBwendiBweevBweavBweBwdBwaxBwattpadB
watercolorBwarpBwariBwarfarBwardBwankerBwankBwallahiBwaitressBwafflBwackiBwaahBwaaaayBvoluntariliBvoidBvodkaBvocabBvmaBvitaminBvirgilBvikkiBvikeB	viewpointB	victorianBvhpBvelvetBvaticanBvanitiBvanillaBvalentiButilBuserbasBuscBupholdBuntouchBuntoB	unsurprisBunsuppoBunsubstantiBunstablB	unsolicitBunruliBunpleasBunoBunfaithBunderdogBunderdevelopBundercovBunconsciBuncommonBuncheckBuncBunbothBumbrellaBuhhBuguesBubisoftBtysmBtylenolBtweetbotBtweepBturnerBtuffBtuckerBtuckBtubmanBttBtrunkBtrumperBtruBtrouserBtrivialBtricolorBtributBtribalBtrenchBtreasurBtreadmilBtrayB
transcriptBtrainerBtraceBtourneyBtougherBtoughenBtouBtotoBtorchBtomzBtoadBtmrwBtmacBtlaibBtitanBtimerBtikritBtideBticklBthzBthrillBthriftBthirstBthirdliBtherB
theologianBtheocratBthemselfBthanoBthankiBthailandBtexBterBtequilaBtenthBtenhoBtencentBtelBteeBteddiBtbeBtavaBtatBtarekBtardBtarahBtamilBtameBtaiwanBtaintBtahirBtaeminBtactBtabloidBtabliqiBtabligiBtabbiB	sysinstalBsyncBsymptomBswtBsworeBswimsuitBswerBswateBswastikaBswarmBswBsvuBsuzanBsuspndBsurrealBsuraB	superstarBsummitBsultanBsufiBsufficBsuccumbBsubwayBsuburbanB	substantiBsubsequBsubjugB	stupidestBstruckBstrokeBstrictliBstranglBstraitB
straightenBsteviBstevenBsternBsterlBsteinBstaunchBstatutBstatusBstatmntBstallB
stalkerishBstakeBstahlBstafferBsrsliBsrhBspurBsprinklBspreeBspreaderBspoonB	spongebobBspockBspillBspickBspencerBspectacularBspecifiBspBsoupB
soundtrackBsoughtBsouBsororBsoniaBsoniBsomalianBsolomonBsolidarBsoilBsoggiBsofreuBsoeBsodomBsociologBsocietBsocBsnobBsnatcherBsmolBsmdBslugBslotBslipperBsliceB	skyrocketBskoolBsketchBskepticBskateBsitterBsirenBsipBsinistBsingularBsilverBsidelinBsidBsiaBshtBshrivelBshrekBshredB
shockingliBshitpostBshitholBshitheadBshezBshelvBsheeranBsheerBshawnBshatterBsharpBsharifBshampooBshamelessliBshaBsextBsewagBsewBsevenBsetupBsermonBsereBseperB
separatistBsenilBsemestBsemenBsemantBseinfeldBseiBscrappiBscotlandBscopeB
schoolworkBschiffB	scapegoatBsaraBsanskritBsangBsandmannBsanctifiBsammiBsamaBsalvagBsalmanB	salesforcBsalafBsalaBsahabBsagaBsaffronBsadiqBsaddenBsaathBsaadBryujiBrosiBrosebankBrookiBrollerBroganBrodeBrockstarBrkBrivalriBrinBriflBrifeBridgBriderBriddlBrickiBrichestBribBreyBrewatchBrevenuBreunitBretributBretailBrestrainBrestaBreproducBrepetitBrepelBrentalBremorsBreminiscBrelayBreindeerB	rehabilitBregroupBregainBrefundBrefreshBrefereBredirectBredefinBreceptBreceiptBrecapBrecantBrebukBreapBreaganBreaderBrazBrayalBrawrBravenBrascistBrascalBrapidBralphBrakeBrahaBraBquinnBquidaBquickerBqueueB
queenslandBqualifB
quadrupletBqeBqaidaBpveBpurgBpupilBpulpBpulitzBpulBpudBpublicisBptBpstBpssstBprudeBprovisBproverbBproudliBprotagB
propogandaBprofanBproblemaBproactivBprimitBpresumptBpremiumBpremisBpraticarB	praticantBpraticaBpractisBppBpowderBpowBpoliticBpolBpokerBpoiBpodBpockiBploBpleasantBplatitudBplannerBpkkBpkBpitbulBpiraciBpinnaclBpineapplBpiggiBpigeonBpickupBpickerBphpBphotosetB
philosophiB	philosophBphdBphariseBphBpfiBpervasBpersiaBperriBpermanBpepolBpenalisBpenaBpeloBpeggiBpeckBpastiBpassengBparklandBpararB	paraphrasBpappuB	paperworkB	paperwhitBpapaBpansiBpalmBpalestraBpadrBpaddiBpacquiaoBpacketBpacifiBoxfordB	ownershipB	overwatchBoverrBoverpaidB	overnightBoverheadB	overgrownBoverdosBovechkinBovalBoutweighBoutputBoutnumbB
outlandishBoutbreakBotBoromiaBoreoBoregonBordinariBoptimistBopressBoprahBopioidBoooooBongoBondaBomBolhaBokiBokcBoiBoffsprBoffBodBoccupBobvBobtainBobbiBnypdBnyeBnwordBnutshelBnutritBnuncaBnshitBnovelaBnothinBnossaBnoooooBnoooBnoonaB	nonmuslimB	nonbelievBnomeBnoeBniggazBnigelBngoBngeBnewestBnevaBnerfBneonBneilBnegraBneedleBneedaBndtvBnazBnaughtiBnarratB
narpishachBnairaBnadaBnaacpBmzunguBmythologBmyspacBmustiBmusicianBmulticulturBmulattoB
mujahideenB
mujahedeenBmuhB	motorcyclBmoreovBmooBmonicaBmonetBmomentoBmoldBmoistBmofoBmodijiBmodestiBmisspelBmishraBmisfitBmisconfigurBminoritB
minneapoliB	minecraftB	millitariBmilB	microsoftBmicroBmgaBmethinkBmetaphorBmerriB	mercenariBmeowBmeninistBmenacBmemphiBmemoB
membershipBmelaniBmegynBmeganBmedicarBmediaitBmeaninglessBmdBmcrBmckinneyBmccaBmaynBmayhemBmayaBmatrixBmataB
masterpiecBmassagBmaritBmarblBmarathaBmaplBmanurBmanoBmannnnBmannBmankhurdBmaniacBmanchestBmammiBmaltesBmalcomBmalawianBmaimBmageBmagBmafiaBmadddddBmadarsachapBmaciB	macfarlanBlyinBlvlBluxuriBlungBlumpBlovinBlottaBlorriBloriBloreBlookiBlolzB	lololololBlolololBlmmfaoBllapBliyBlividB
livelihoodBlitterBliteBlinguistB	limelightBlilliBlifelongBlickerBlevB	letterboxBlesliBleonBlenovoBlegoBlegaciBleatherBleahBlawmakBlaurenBlaughinBlatinxBlandscapBlambBlakerBlagiBladoBkuzBkurooBkuchB	kshatriyaBksaBkriBkrBkoolBkookiBknobBkluwBkkkkkkBkkkkBkirkourBkinnockBkinkBkgBkeybasBkentuckiBkentBkendrickBkenBkelseyBkeefBkayaB	kavanaughBkaumBkatjiaBkasabBkarlBkareemBkareBkapilBkamilBkaluBkalianBkahaanBkadunaBkabulBjwBjvBjussBjuriBjulietB	judiciariBjpBjournoBjojoBjoanBjiuBjitsuBjillBjihadinBjgBjezebelBjensenBjennBjemimaB	jellybeanBjedwardBjcBjazeeraBjaveBjashBjarBjamuniBjamiBjajajaBjaisBjadeBjacobBjabBizlamBisticBissaBisrealBislamisBirkBinvestorBintroBintoxBinteiraBintBinsufferB
instrumentB	inshallahBinquisitBinnatBinhalBingrediBinfuriBinfrontBinfantriBineptBineBinducB
indonesianBindiscriminBindictBindexBinchBincessBinceptBincentBinboxBinanBinaccurBimpregnB
impoverishBimplorBilkBilBigdaBigboBidealogBiculBickBibrahimBibBiaBhypothetBhwhileBhveBhushBhurricanBhulkBhuffBhrowBhquakBhoteBhordBhopperB	homofobiaBhominemBhomegirlBhollerBholderBhoardBhliB	hindustanBhinduphobiaBhindhuBhijbulBhideouBhgBhestBherdsmanBherdBherbBhenBhelplessBhelperBhellfirBheinouBheedB	healthierBhcaBhazeBhaveBhasntBhardwoodBhardwarBhappierBhannitiBhannaBhankBhandwrittenBhandlerBhaitianBhairiBhaircutBhaidriBhahahahahahahBhagoBhagiaBhacenBhaaaaBgyanBgunnBguiBguhBgudBgucciBgrupBgrownupBgrovelBgroperBgroceriBgriftBgrievancBgrenadBgreatliBgrapeB
grandchildBgrammiBgrammerBgraBgozlemBgorsuchBgordaBgoraBgooooodBgoodwilBgolliBgoebbelBgodlessBgoddessBgnaBgloveBgloBgibsonBgharBghandiBgesturBgervaiB	geographiBgeniBgenetBgenerosB	generalisBgelBgedBgdpBgdiBgbBgazaBgariBgarbBgangliBgangaBganeshaBgamblBgalorBgallonBgakBgabrielBfwdBfutherBfuriouBfuniBfuknBfugliBfueBfucktardBfuckiBfuckalBfritterB
friendlessBfrfrBfrecklBfraudulBfrancoB	franciscoBfountainBforrestBforealBfodaBfluteBflunkBfluBflourishBfloatBflavourBfknBfkBfiqueiBfindomBfgmBfeyBfesterBfemmBfeloniB
fellowshipBfedoraBfatphobBfarkBfancamBfamiliaBfalarBfalandoBfakBfaggetBfacismBfacialBextrovBextinctBexposurBexotBexilBexclaimBewwBevictBeveyonBevernotBeverdayBeveBevaluB	ethiopianBetaBestimBesrBescolarBescoBerodBerinBericaBentrB
enthusiasmBensuBenrolB	endorphinBemoticonBellBelitistBelevBelectorBekB	egomaniacBeggshelBegalitarianBefBeekBechoBeaterBearliestBdynastiBdylanBdwnBdumbbelBdullBdugBduBdspBdrillBdribblBdownsidBdownhilBdotBdorkBdoritoBdooBdkBdissoBdispropoBdisownBdishonorBdisheaBdiscretB	discoveriBdiscountBdiscordB	disclosurBdisclaimBdisadvantagB	directionBdireBdiotBdingBdimeBdilutBdilemmaBdifB	devpoliciBdevopsBdevolvBdevoBdeviouBdeviatBdeviantBdevaluBdestiniBdesistBdesculpaBdepravBdeployBdepletBdeodorBdentistBdentalBdenotB
demographiBdementiaBdemeanorBdeltaBdekhoBdeixarBdeficiBdefectBdedBdecreasBdeceptBdecembBdecBdeashBdealerBdeadpoolBdeaconBdaylightBdaviBdarkiBdanaBdammBdallaBdalBdaftBcursoB
curriculumBcurrencBcultistBcrustiBcrustBcruisBcrucifixionBcropBcripBcringiBcringeyBcreoBcreeperBcrayBcrabBcoveBcounselB
councillorBcosaB
corinthianBcoolerBcookbookBcooBcontradictoriBcontendBconsiderBconquestBconnorBcongregBconformBconfigurBconcussB
compulsoriBcomplacBcompilBcommonliBcommaBcomfiBcolumbiaBcolegioBcoincidBcohenBcoastBclergiBcleanerBclayBclausBclashBclaseBclaroBcitatBcishetBcirculBcigBchutiyaBchunkiBchromaB	christainBchoirBchoiBchivalriBchinkB
childishliBchiBcheetahBcheckerBchamberBchainsawBcfpBcensuBcenaBcellphonBcavemanBcautiouBcausalBcathedrBcategorBcatapultBcasketBcaseyBcarrotBcarrolBcarlsonBcarloBcarerBcapacBcantliBcamperBcamoBcaitlynBcabinetB	buttigiegB	butterfliBbutchBbuseBburqaBburmaBburkaBburkBburberriBbunkerBbulldogBbuleBbsdkBbryceBbrokerBbrockBbrittaniBbrieBbrianBbredB	breakdownBbrazenBbrattiBbrandiBbrakeBbrahmanBbracketBbraceBboylBbountiB	borderlinBbonerBbomB	bolshevikBbodiliBboarderBboaBbmBbluntB	bluetoothBblotBblizzconBblitherBblazeBblareBblairBblabberBblabBbizarrBbipaB	billboardBbidBbiatchBbiancaBbestialBbenchBbelligerBbelliBbellaBbeiBbeholdBbeggerBbeforBbeczBbecoBbeckBbecBbeatlBbeaterBbcoBbatchBbataBbarstoolBbarrelBbarnBbannonBbaltimorBbalochBballistBballetBbajrangBbailBbaghdadB	backstoriBbabarBayeshaBawakenBavenuBavengBaveBauthentBaustinBaukatBauctionBatonBatomB	atmospherB	atlassianBationBatheismBaswelBassuntoBasshatBaskinBashiaBarsonBarmorBarizonaBarchivBaquelaBapplebeBapologetBapnaBapjBantiggBanticBannaBanitBanchorBanakBamirBamigaBamberBambedkarBamateurBamassBamaBalumnoBalpBalmaBalllBalliancBallahaBallBalecBakshayBakoBajaBaindaBaidenBahmadiBahhhhhhhBahahBagnstBagitBagarBaftrBaeBadoBadmissBadhdBadderalBadaptBacquirBacountBacolytBabsorbBaboriginBabhorrBaasmaniBaajBaaaaBzyngaB
zuckerbergBzoomerBzonkBzoeyBzionismBzimBzeinaBzebraBzaraBzaneBzahraByuxinByuppByuoByteByowByouuuuuuuuuuByouuuuuuB	youngtaekB	youngsterByorkerByoooooByokoBymcaBykByipByingByeshuaByeetByeeshByeahhhhByeahhhByayyyByawlByaoiByankeB	yamaguchiByamByakubByahyaByaddaBxgpBxdddBxanBwwjdBwwiiBwvBwuBwtcBwtBwrongdoBwrngBwrkB	wristbandBwristBwreBwrahBwowcBwotBworldliBworkshopBworkloadBworkinBworkforcBwoooBwooliBwoohooBwoodlandBwongBwomenBwomderBwllBwldBwkwkBwizardriBwittiB	withstandBwithBwitchuBwitcherBwishlistBwiretapBwinonaBwinkBwinchestB	willingliBwileyBwileBwilburBwierdBwiBwhrBwhoopiBwhoiBwhitiB
whiteboardBwhitBwhiskBwhiffBwhhhhuuuudddduupBwhenBwhatevaBwhatchyaBwhaleBwhackBwhaaaaatBweveBwengerBwenchBwenaBweldBwebtoonBwebsterBweberBweakestBweakenBwayyyBwayanBwatsonBwatchinBwarraqBwarehousBwardrobBwamBwaltBwalletBwallacBwaliBwalangBwalBwakaBwaisBwailBwaifuBwaaahBvriBvoyBvouchBvonB	voicelessBvoceBvixenBvividliBviveBvipBvintagBvinodBvinegarBvindictBvindicBvillianBvigilantBvigilBviewerBviejoBvictimisBvickBvezBvetoBverminBvergBverbatimBverbBvengeancB	venezuelaBvenemBvendorBvenBvedaBvcrBvaughnBvascaBvariantBvariablBvanessaBvancBvamoBvaisBvainBuveButBussrBuserlandBuscirfBurnBuriBurgentBupstandBupstairBuppitiBupkeepBunwilBunveilBunvaccinBunusuBuntukBuntreatBuntilBunstanBunproblematBunplayBunpaidBunnotBunnecessariliBunnaturBunmutBunmitigBunknowingliBunithBuninvitBunintentB
unintelligBuninformBunimpoBunifiBunfoundBunforgivBunfoldBunfitBunfinishBunfathomBuneditBundonBundocuBundesirBundeservB	underscorBunderrepresBunderrB	underpaidB
underneathBundergoB	undercookBundeadBuncovBuncouthBuncoolB	unconfirmBuncomfiBunclearB	uncivilisBuncivilBuncfBuncalmBunbreakBunbiasBunbanBunathiBunashamBunabBultronBultimoBukrBuglierBugirlBugandaBugBufoBudayBuccBtysonBtyreBtyrannBtyraBtypBtygaB
twitterbotBtwittBtweakBtwainBtutoriBtutB
turnaroundBturkmenBtulsaBtuhBtuffnelBtubbiBtseBtsangBtrynBtrustiBtrumoB	truckloadBtroupB
troublemakBtrotBtrophiBtrombonBtrojanB	trivialisBtriviaBtrishulB	trickiestBtrevorBtrespassBtreatiBtreasuriBtrashtalkanBtransvestitB
transgressBtractorBtractionBtraciBtraceyBtpBtowelBtowBtoutBtouristBtoughestBtottiBtotemBtorrentBtornBtorBtopplBtomoBtommehBtomarBtollBtokyoBtogedaBtoeiBtodaBtobiBtldrBtkBtiresomBtintBtinhamBtinBtimidBtimesavB	tightkiddBtidurBtickBticaBtibetBthwaBthstBthrouggB	thresholdBthrashBthrallBthouBthoseBthompsonBthodeBthingiBthikBthesiBtheseBtheoristBthanxBthankyouBthanksBthaiBtgeBtfwBtexturBtescoB
tersendiriBterriostBtenurBtempBtemaBtellinBtelliBtellerBtelepoBtelephonB	telekinetBteleBtehzeebBtehranBteeniBteefBtchBtayoBtawniBtaurenBtattlBtataBtardiBtantoBtanginaBtalmBtalknBtalibBtalabyadBtalBtakBtajBtaehyungBtadoBtadinhaBtacoBtabooBsynchronBsynagoguBswoonBswoleBswipeBsweptBsweeterB	sweatshopBsweatshiB	sweatpantBswayBswathBswastikBswampBswalwelBswainBsustainB	suspicionBsusiBsushiBsurveilBsurprisingliBsurpassBsurliBsurgeonBsurBsupremicistB
supplementB
superstitiB
supernaturBsupermanB	superioriBsuperintendB	superbowlBsunsetBsungBsumthBsumnBsummarBsuleymanBsuheriBsubtractB	subredditBstunkBstuaB
strongholdBstraightforwardBstpBstoveBstoragBstoicBstoBstiraghtBstingBstilgetBstilBstigmatBstiffBsteroidBsterilBsteamiBstealerBsteadiliB
statuatoriBstaticBstarrB	standalonBstallionBstaleBstablBssrBsrriBsroBsquirrelBsquiBsqueakBspousalBspontanB	spokesmanBsplicerBsplendidBsplashBspikeyBspewerBspeltBspeedoB
speechlessBspectralBspeckB
specialistBspecBspearBsparkBsoylentBsowBsovereigntiBsosaBsorrBsophBsoooooooBsooooooBsolarBsolBsogiBsoftbalBsofremBsocratB
sockpuppetBsocialisBsocalBsoberBsoakBsnpBsnottiBsnotBsnoreBsnoozBsnookiBsnobbiBsnoBsnippetBsniperBsneerBsneakiBsnarlBsnapeBsnackBsmutBsmuleBsmollettBsmeBslutshamBslungBslopBslipknotBslintBslefBsleepiBslavBslateBskrrBskimBskeletonB
skateboardBskankiBsixtiBsiriBsirfBsintoBsinnerBsindhBsinclairBsimulBsimmondBsimmerBsilvaBsiiiighBsihBsiganBsieBsidewayBsideshowBsickoBsicaBshyliBshunBshudderBshriBshreeBshowroomBshovelBshoreBshoelacBshoaibBshmackBshitttBshittB	shitstormBshitfestBshiniBsheyBshemBshelfBsheikhBsheetBshcoolBsharpiBsharpayBsharonBshakhaB	shakedownBshaitanBshafiBsgtBsexiestBseventhBseungiBserenBsequelBsepBsenseiBsencBsemanaBsekolahBsekacBsejaBsegundoBseeinBsedatB	sectarianBsecstatBsearBseancBscrutiniB	screwdrivBscreedBscreaminBscrawniBscrapBscramblBscoutBscottishBscotBscorpioBscooterBscoldBsclcBschwagBschultzBschootBschadenfreudBscenterBscammerBsayiBsavviB
sauerkrautBsashaBsardarBsapBsaoirsBsantBsansaBsannanBsankBsanitBsangerBsandmanBsamsungBsamplerBsamnBsalafistBsaladBsailBsaifBsahiBsaftiBsafestB	safeguardBsaddestBsadamBsachinBsachBsaccoBsabuBsabotagBsabaBryuujiBrvBrustiBrusBrupeBrunninBrunnerBrumblBrudiBruBrrBroycBrowlBrowanBroughliBrougBrotatBroseannBronanBromeoBroflmaoBroeBrodBrockerBroccoBrobuxBrobinsonBrobinBrobberiBroBrldBrjBrisoBriskiBrimBrikerBriiiightBrigidBrighBriddenBricardoBrialBrhBrgBrfcB	rewrittenBrevokBrevistaBrevisitBreverBreusBreubenBretB	resurrectBresurfacBresumBrestroomBrestorBresoundBresonBresetBresemblBreqBrepealBrenoBreneBrenaissBrenBremebBrelignBreligBrelievBreliancB
relentlessBreinventBreinerBreinaBrehtiBreginaBrefugBrefrigerBrefrainB	reformistBreferrBreelectBreelBreeducBreeBredundBredistributBrecuperBrecoveriBrecombinBrecoilBreclamaBreciprocBreboundBrebootBrebelliBreassurBreamBreallllllliBrealiBreaffirmBreadablBreactorBrayshardBravishBraunchiBrasictBrashtraBrashmiBrashardBraphBrandomactorBrandoBrampBramenBrakshakBrakhaBrajBraivaBrahBradialBracsimBraciestBquraanBquotaBquipBquintessentiBquinoaBquieterBquienBqueefBquedanBquedaBquebecB	quarentinBquantoBquantitiBquadBquBqqBqoranBqassamBqasimBqafirBpydBpyBpuzzlBputridBpursuBpurpoBpunterBpunjabBpumpkinBpulwamaBpullinBpuhleasBpughBpuddlBpubicBpuBpsychologistBpsychicBpsnB	pseudosciB	protectorBprospectBproponBpropoBpropensBproletariatB
programmatB
professoraBprodBprocreatBproconBprocessoBprobeBprivadaBprioritBprietoBpresumBpreorderBpremeBpregoBprefixB	preemptivBpredominBprecisaBprblmBpramotBpradaBpotionBpotheadBpornstarB
porkistaniBporkiBporissoBpopulistBpoppinBpopehatBpooperBpoofBponBpompeoBpomBpolygamiBpolygamBpolliB	policemanBpolandBpoisionBpoetriBpodiumBpocoBpobrBplzzzzBpluckBplseBplpBplonkerBplonkBplnBplethoraBpleazBpleasurebotBpleadBplaystatBplausiblBplasmaB	plaintextBpjBpixBpiteouBpipelinBpiouBpiorBpintBpingBpimplBpilotBpillowBpillagBpikachuBpierBpickthalBpickaxB	physiologBphotographiB
photographBphirBphilliBphiladelphiaBpgnBpftBpfftBpewBpetrolBpetersonBpestoBperplexBperkinBperishBperiodtBperezBpepsiBpeoBpensoBpensionB
penninsulaB
penguinmanBpendBpenalBpegBpedozoophilB
pedopheliaB
pedestrianBpedalBpedB
peckerwoodBpeckerBpearBpeanutBpeacfulBpeaBpbuhBpbBpaytonBpaypigBpaxtonBpavementBpaveBpauloBpatronisBpatrolBpataBpassandoBpasabaBparolBparlB	parkinsonBparecBparasitBparanoidBparamorBparagonB	paperbackBpanelistBpanditaBpalmeiraBpajeetBozziBozilBowlBowisiBovumBoverviewBoverprBoverlordBoverloadBoverlapBoverkilBovercomB	overboardBovenBovatBoutstandBoutreachBoutlierBoutdatBoutcheaBouatBotraBotohBostensBosmanBoryxBornamentBorgasmBoreBorchestrBoptimBopenbsdBoozBoooohBoonistBoohBontemB	onslaughtBonliBomlBomggBolympB	oligarchiBoligarchBolaBokeyBokcupidBoiliBoikawaBoicBohmygodBohhhhhBoffsidBofflinBofffBoffenBoffalBodrBoctobBobsoletBobomaBoblivionB	objectionBobjectifBobbassiBoasiBoaBnytimBnyaBnxtBnwoBnvidiaBnutterBnutjobBnutcasBnusraBnurseriBnumBnullBnuevoBnuestroBnuditiBnsfwBnriBnrcBnpBnowBnovoBnotyourshieldBnotrBnotablBnostalgBnossoBnorwayBnormaniBnordicBnoraBnooooooooooooBnoooooooBnoobBnonexistBnonethelessBnonchalB	nonbinariBnombrBnoelBnoahBnntBnnaBnnBniqabBninjaBninerBninaBnightmarishBnigggerBnigggBniggeryBnichegamBniccaB	newsflashBnewbornBnevilBnevBneurotBneurodivergBnetspacBnetbalB	netanyahuBnessaBnessBnershipBneroBnereBneoconBnelaBnegretBnegligBnegatBneesonBneenerBnecklacBnearbiBndaBnctBnbdBnayadriBnawakBnavarroBnauseouBnauseatB	nationwidBnateBnatashaBnastiestBnastierBnasaBnarutoBnarpashuBnarendraBnardBnarBnappiBnapoleonBnaomiBnamanBnalandaBnaikooBnaijaBnagpurBnagasakiBnagaBnadlerBnachoshieldBmxmBmwB
mutherfuckBmuthafuckinBmuthaBmusterBmustaBmuslmBmuslimahBmushrikBmuseBmurrayBmurphiBmuppetBmunshiBmunicipBmundoBmultifactorB	mujahidinBmuitoBmuitaBmuderBmudBmuchoBmsnbcBmslmBmozillaB	mousetrapBmourinhoB
motherhoodBmotherfukinBmostraBmossadBmoroccoBmoroccanBmormonB	moreterumBmorBmonumentBmontanaB
monotheistBmonologuBmonogamB	mongolianBmonetariB	monasteriBmomentumBmomentariliB	momentariBmohmmadBmohdBmohamadBmodifiBmoaBmmaBmlpBmlBmkeBmkBmiyaBmistrustBmistBmissouriBmissiBmisplacBmislabelBmisjudgBmisdeB
misconceptB
miscarriagBmiscBmisbehavBmiraculBminuBmintiBminsanBmingyuBmillwalBmilliB
millenniumBmilestonBmiiBmigrainBmierdaBmidtownBmidoriyaBmidfieldB	microscopBmicroaggressBmiaBmhBmfanaBmexicoB
methodologBmeterBmeteBmetafiltBmeseBmeritocraciB	mercilessBmenoBmennerBmenaB	melodramaBmelodiBmelbBmeiBmegalomaniacBmeeeeeBmedoBmeditB	mediacorpBmeaniBmeanerBmeadowBmcuB	mcfarlandBmcdBmayoBmayfieldBmaybachBmawilBmawgaBmaverickBmauricBmaulviBmaududiBmauBmattressBmattiBmatignonBmaternBmaterB
mastermindBmasonBmashaBmascaraBmarylandBmarvinBmarnerBmarlonBmarkerBmarkazB	marijuanaBmariaBmarathonBmaraBmansonBmanicBmaneuvBmanaB
malpracticBmalikBmalignoBmalfunctB	malaysianBmalBmakeovBmakanBmajaBmainoBmahatmaBmaharashtraBmahalBmagpiBmaeBmadrBmadinaBmaddenBmaddddddBmaddddBmachetBmacamBmaarBlynziBlynBlyftBlyeBlwBlutyenBlurkBlunaciBlunaBlumiBluizBluiBluggagBlubeBluBloviBlouieBloudestBloudenBlordiBlooserBloopholBlooniBloompaBloneliBlolnopBlollolB	lolllllllBlolllllBlollllBlokBlogistBlobotomiBlobbyistBloanBloafBlmfaooooooooBlmaoooooooooooBlmBlledBlizBlivinB
livestreamB	liverpoolBlitigiBlispBlisaBliquorBlinuxBlinkinBlineupBlikewisBlikenBlightheaBliferBlieutenBlibyanBlibtardBliablBlgtbBlgBlfrBleveBlethalBleteBlestBlesboBlerBleopardBlentBlensBlenaBlenBleleBlelB
legislaturBleftardBlearnerBleafBlbjBlbgtqBlbgtBlayoffBlaylaBlauraBlaunderBlathiBlatchBlarriBlargerBlandslidB	lancashirBlancBlanBlamerBlahatBlageBladybugBladakhBlaceBlacB
laboratoriBkyuhyunBkyuBkyliBkweenBkwangsooB	kurdistanBkuntBkungBkumarBkufrBkuffarBksiBkrnaBkristiBkrishnaBkraziBkramerBkrakaBkosovaBkosherBkoolaidBkooBkoniBkolaBkoeBkobaniBknowinBknotBknobheadBkniwBkmtBkmftBklB
kkkkkkkkkkB	kkkkkkkkkBkkkkkkkkBkkkkkkkBkiyaBkitabBkirkukBkioskBkinsellaBkingpinBkinderBkimberliBkillaBkidneyBkiddinBkiddiBkickerBkhazarBkhameneiBkhadgarBketchupBkerosenBkernelBkermitBkeranBkennediBkellyannBkelBkeithBkehBkeeperBkeekBkeeB	kedarnathBkecilBkebabBkdramaBkatsukiBkatoBkatachiBkasmiriBkasiBkarnaBkarnBkarmiBkanjiBkaneBkandrBkanaBkanBkamuBkamraB	kamoshidaBkamalaBkaloBkaliaBkalashnikovBkaitlinBkaiBkahnBkaamBkaaluBkaabahBjuviBjuulBjustoBjustliBjustBjunctionBjugglBjuggaloBjudiciBjudgingggggBjudaismBjsutBjoylessBjourrrrrrrnalBjossBjoseBjordunnB	jordanianBjongwoonBjonghoBjongBjogBjoffreyBjodiBjoblessBjnkBjmBjjBjisungBjioBjinniBjinhoBjiminBjialatBjgnBjewelriBjewelBjettBjetBjesterBjeridBjeremiahBjeopardBjeonggukBjeonBjennifBjennerBjeezBjdBjbBjazzBjawanBjaphethBjannaBjanitorBjaneBjamiaBjamaatiBjamaBjalenB
jajajajajaBjairBjaichandBjadhistB
jacksonvilBjackiBjaciBjaanBjaahilBixBiverBitworkBitunBismalistB	islamphobBislamaphobiaB
islamaphobBisaBiratBiraBiqbalBipvBipodBionatBiofBinvincBinvB	introductBintervenBinterrogB	interraciBinterpolBinteriorBinterfB	interceptBinteiroBintakB
instructorBinstBinspitBinsatiBinsaanBinordinBinocBinnuendoBinnovBiniquBinicioBiniBingatBinfrastructurBinformaBinfluxB	influentiBinfinitamentBinferBinfantilBinexplicBineffectBindoorBindignB	indefinitBindBincrB
inconsiderB
incompetenBincoherBincidentBincessantliBincarcerBincapBincaBimpulsBimpostorBimpostBimpositBimpersonBimpassBimpaBimpBimmunocompromisBimminBimfBimeBimanBilmBilleriB	illegitimBillallahBilizBilitiBileBikrBikawBijBiiiB
ignorantliBignoarBignitBignBiggiBiestBidolatBidoBidekBicymiBickiBicaBhzBhyyhBhyunjinBhyunaB	hypocraciBhwasaBhusseinBhurlBhunniBhunkiBhuminBhumBhuhuhB
hufflepuffBhueBhuckBhubbiBhpBhoyBhowlBhousemB	horseshitBhoroscopBhopinB
hoooooooliBhoochiBhonkeyBhonBhomomisBhomeroomB
homeopathiBhombrBhniBhmmmmmmBhmmmmBhittinBhitterBhistB	hiroshimaBhipsterBhiphopBhingBhinduvtaBhindutvB	hillbilliBhikeBhijoBhiiBhihihiB	hierarchiBhiccupBhhahaBhermionBherismBheresiBherbalifBherBhentaiBhenloBhellholB
hellacoppaBhelicoptBhelenaBhelacoptBheiferBhegemoniBheeeeeeeBheccBhebraicBhebdoBheavierBheatherBheathenBhealerB	headteachB	headscarfBheaddeskBhcBhboBhbcuBhbBhazardBhayiBhawaiianBhawaiiBhavinBhausaBhatemongBhatefilBhastaBhashBhasanBharshliBharrasBharpiBharleyBharlemBharemBhardiBhaqBhandiBhandbagBhameshaBhamburgBhaloBhallmarkBhalflifBhairlinBhahahhaBhahahahhahahahBhahahahhahahaBhahahahahahahahahaBhahahahahahahaBhahahahahahaBhahahahahahBhahaaBhaganBhaechanBhadidBhadiBhadeeshBhacemoBhaanBgymnastBgyalBgvnBgutsiBgutlessBgustaB	gurudwaraBgunmanBgundaBgumpBgulenBgulagBgujjuBgujB	guitaristBguaBgtiBgruyerBgrungBgrumpBgrowlBgrindrBgrindBgrievBgriBgretaB
greenlightBgreediBgreasBgreBgrayBgrapplBgrampBgraffitiBgrBgplBgpBgownB
governmentBgottiBgotdamnBgotchaBgordoBgookBgoogBgoodluckBgomezBgoldfishBgoldbergBgoidBgohanBgogiBgodiBgoblinBgoalpostBgntBgnomeBgncBgmpBgluttonBglueBglitchBgiulianiBgingerbreadBgingBginBgimmickBgigantBgibbiBghengiBghantaBghanaBghBggaterBgessenBgentilBgenesiBgeethaBgeetaBgdBgbengaBgazettBgayiBgarlandBgaragBganguroBgandhijiBgammonBgamestopBgallBgaliBgaleraBgaetzBgadgetBfypBfxBfvckingBfuriBfunniliBfundraisBfullestBfukcBfufuBfuckoffBfuckignBfuckheadBfuckboiBftrBfrstBfrostBfriskB	friendzonBfreshenBfrequencBfrenemiBfreestylB	freemasonBfreemanBfreeloadBfreelaBfredoBfrankensteinBfranchisBforzaBforkbombBforgivenBforfeitB
foreverrrrBforecastBforbBfookBfooBfontBfondliBfolxB
followbackBfoamBfmdBflyerBflukeB	floridianBflorianBfloraBflopBfloBflinchBflexiblBfleshBfledgBfledBflauntBflabbergastBfkedBfizBfitnahBfishiBfisherB	firsthandBfillerBfigmentBfightinBfifteenBfiercBfictitiBficoBficarBficaBfgBfeverBfetishisBfetchBfetaBferventBferBfenderBfencBfemisnsnBfemiBfelixBfeliciaBfeioBfeignBfeederBfeckBfeceBfeatherBfeatBfdaBfcknBfckinBfazBfaxBfavrBfavoritoBfatuouBfatoBfatfBfatehBfatassBfastestBfassnidgBfanniBfangirlBfanficBfanbasBfanaticBfamousBfalsitiBfakerBfacilitBfaceoffBfabulB	eyeshadowBeyeoBeyelidBeyebalBextraordinariBexplicitBexpiriBexitB	existentiBexeptB	exemplifiBewwwwBewwwBevadBevBeuroBeunhyukBeughBeugenBestouB
estanislaoBespousBespositoBesaBerrythBerryonBerrBericBerectBerasurBequanimBepidemBepicentrBepicentBeomBeoBenviouBenuffBentrenchBentrancBenslerBenormBenlargBengulfBengravBengrainBengBendowBencryptBemulBempathetBemotionlessBemojiautoblockBeminBemilB	elizabethBeligBeliBelevenBelenaBelegBeldestBeighthBegregiBegotistBegirlBefficiBefffffBeenBeelBedomBedmBedlBedgelordBeasiestBeagerB	dystopianBdynastBdwightBdweebBdvBdutchBdustBdurotanBdurBdupeB	dumbledorBdudBductBdualBdtrumpBdrunkenBdruittBdroppinBdroppBdrivinBdresserBdreamtBdreamerBdrasticB	downstairBdownlinBdowngradBdoveBdouglasBdorindaBdoomBdoofiBdominionistB	dominicanBdoltBdolphinBdohBdoesnotBdockBdocilBdlBdizBdiyanBdistructB	distributB
distinctliBdissonB
dissapointBdispleasBdisplacBdisparBdisoB	disingenuBdishwashB	dishonestBdisgustingliBdisengagBdisenfranchisB
disconnectBdisciplBdischargBdiscernB	disbelievBdisbandB	disapprovB	directoriBdirBdiplomatBdipBdineBdiminishB	dimensionBdimBdildoBdigustBdignoBdiffrentBdifficBdiezBdidiBdickweBdiceBdibBdiarrheaBdiariBdhuBdhimmiBdharmaBdhBdgafBdewBdevourBdevoidBdevitoBdeveB	detrimentB	detransitBdetectB	destructnBdestinB	destigmatBdestabilBdespairBdesginBdesensitBdeseanBderisBderailBdeputiBdepositB	denunciarBdenigrBdeniablBdemurBdeliveriBdeliriBdelinquBdelightBdekuBdeitiBdehydrBdehBdegrassiBdefoBdeferBdefeitoBdefacBdeepestBdeeBdeductBdecryptBdecorumBdeceivBdebeBdebbiBdeactivBddtBddoBdbzBdavidsonBdauBdasherB	dashboardBdashBdarrenBdarkskiBdarkestBdapatBdaniBdandoBdancerBdamnnnBdameBdamascuBdairiBdahmerBdaeshbagBdabBcyroBcyaaBcvBcuzzoBcutoutBcutesiBcuterBcuomoBculoBcuffinBcuffBcuentaBcuddliBcubeBcubanBcubBcuandoBctoBctfuuuBcsiBcryinBcrutchBcrunchiBcrucialBcrpfBcrowbarB
crossdressBcroniBcroftBcrocodilBcritisBcristianBcrepeBcrematBcreekBcreddiBcraziestBcrazierBcravenBcrampBcppBcoziBcowerBcoverupB
countrymanBcounterinsurgBcoulterBcouldvBcougarBcorsetriB
correspondBcorpusBcorpuBcornBcordialBcorbynitBcorbinBcoralB	copyrightBcopticBconvolutBcontributorBcontriBcontrariBcontraptBconsumptBconsoB	consciousBconnecticutBconnBconmanBcongBconflatBconfiscBcondoBconceptuBconcedBcomptonB	compromisBcompliB
complementB
communalisBcommittBcommendBcommBcomeuppBcoloristBcollaterB	collarbonBcoleBcoldplayBcolbBcolBcoisaBcognitBcoercBcoconutBcocainBcoasterB	coachellaBcnameBcnBclumsiBclowneriBclosurBclogBcliqueyBclinicBclingiBcliffBclickiBcleggBcleanupBcleanliB	classlessBclassifBclarkBclarettBclairoB	civillianBcivilisBcivicBcircuBcinemaBcincoBcierraBchynaB	chutiyapaBchuslimBchunkBchumBchuckiB	christophBchristianophobiaBchristenBchowBchoudariBchomskiBchlorinBchloeBchitBchingBchillinBchildbiBchicagoblackcubBchicBchibokBchewBchechnyaBchechenBcheapenBchastisBcharlottBcharitBcharacteristBchapoBchapBchankBchamberlainBchamarBchalkBchainzBchadB	cernovichBcerebrBcerealBcentaurBcensurBcemeteriBcelloBcctoBcbnBcaveatBcattiBcatholicBcatfishB	categorisBcastigoBcastigBcashslavBcashierBcasaiBcarwashBcarvBcarolinaBcarolBcarnagB	caribbeanBcardioBcardinBcardiBcarbonBcaractBcaptBcannibBcannabiBcandicBcampusBcampbelBcamilaB	cameramanBcalmliBcallouB	calgarianB
caleburbanBcalcBcalBcaesarBcadetBcadaBcabeloBbwhahahaBbwB	buzzflashBbuzzfeBbuurrnnBbuuBbuttholBbuttheadBbusterBbusstopBbusinBbushiBburquaBburnleyBburnerBburhanBbundlBbunBbullishBbulkiBbuhariBbuenaBbuddycopBbuddenBbucklBbubBbuatBbsdcanBbryantBbryanBbruteBbruntBbrunchBbrowserBbrowBbroodBbrokawBbroadwayBbroadoakBbrittneyBbristolBbrisbanBbrinkerBbrinkBbrilliantliBbrigadBbriefliBbrewBbreezB	breathtakB	breadwinnBbrbBbravoBbrandishBbrahBbraggaBbpBboxerBbowelBbouncBbostonBbosniakBbootyholBbootlickBboosiB
boooooooooBbooooBboondockBbooleanBbookwormBboobiBbonoBbonkerBbonitoBboloBbolaB	bokoharamBboganB	bodyguardBbnBbmwBbluffBblufBbluBbloodthirstiB	bloodiestB	bloodbathBblooBblodiBbleepBbleacherBbleBblatherBblanchBblainBbladeB	blackpinkBblackoutBblackiBblackerBbjBbizzaroBbizBbittenBbitchhBbishopBbiscuitBbiryaniBbirbBbipolarBbiotchBbiocotBbimbolinBbilalBbikiniBbikerBbihBbiggBbiengBbhuttoBbhuktuBbhindrawalaBbhaskarBbharatiBbewakoofBbettiBbetchaBbernierBbernerBbenjaminBbenignBbenevolBbeneficiBbenedictBbeneathBbenderBbeleivBbelBbeigBbeebBbedouinBbeckiBbecasuBbeaviBbeastiBbeardiBbdBbcomBbckBbcausBbballBbathtubBbateBbatangBbasterBbastaBbarleyBbargainBbantBbangerBbangaliB	bandwidthBbandaidBbalochistanBballoonBbaliBbakugBbakriBbakraBbakrBbakiBbakB
bahahahahaBbafanaBbadmouthBbadgerBbaddiBbadalBbackwoodBbackstabBbackfirBbackbonBbachiBbabyyBbabygirlBbaboonBazwBazadBazBayatBawlBawaBaversBavB
autonotifiBautomotBautomBautocorrectB	autoblockBautobiographiBausterBaussiB	aurangzebBaulaBaugBatwoodBatuhBattnBattirBattilaBattainBatrociBatopBatoBatlantBatlaBatlBatenBateezBatauBataturkBataBaszBastonishBasteroidBassyrianBasswipBassistirBasphyxiBaspergBaskenazBashokaBashokB	ashkenaziBasexuBascendBarstechnicaBarrangBarnabBarmaniBarkaBariaBarhaanBarguablBarghB	argentinaBareyBarewaBareBarchetypBarbonnBaqBapproximBapplausBapenaBapcBapajamaBanyhowBanydayBanuBantonioBantithetBantiquBanticipBantichristianBantiamericanBanshulBansarBanongBanomaliBannoyinBanitwtBangstBangelicaBanecdotBandoBandhBandersonBandBancestriBanatomiBanarchiBamtBamplBaminaBamharaBamgBambulBambitBamanhBalyssaBalyciaBalwiBalwaBaltruistBaltogedaBalsatianBalqaidaBalooBalongsidBalmajiriBalmBallyshipBallusBalludBallotBallocBalllllBalkaydaBaliciaBalicBalhamdulillahBalhajaB	alexandraBaleppoBalbinoBalbBajiBairstrikBairspacBairheadBaidanBaholBahhhhhhBahhhhBahahahahahahBahahahaBahahahBahaaBagstBagressBagayBafzalBafterlifBafteralB
afganistanBafganBaffrontBaffluentBaffinB	affectionBafarBaeroplanBadversBadulterB
admittedliBadharmaBadharaBadfBadequBadelBadekBadeBaddonBaddiBackBacheiBaccuraciBaccordingliBaccommodBaccelerBacabarBacabBabyadBabutBabstainBabsolvBabolitBabliBableismBabhorBabeyBaberrBabegBabbottBabbiBabbaBaBzzzzzBzzzzBzzzBzyethBzxworjB	zvasiyanaBzulfiqarB
zuckercornBzucchiniBzoyBzoratBzoomBzongBzomgBzoarB	zlsfbbaapBzjybjBzizouBziyaBziyBzippiBzipperBzipBzionitB
zionistikaBzimmerBziltchB
zillionairBzillionBziBzhiyongB	zhbmckibfBzeyamiBzeuBzesterBzeppoBzeldaBzekeBzeherBzeandrBzealandBzealBzceBzaynBzawahariBzarqawiBzardariBzaratBzappaBzankiBzamfaraBzamateBzamanBzalelBzakulaBzakiBzaeqBzachariaB	zaboravioB	zabiullahByzqByyyByyouuByyouBywoodBywByuuuupByuuuuByuuByutaByusufByussssByurustarByurrByuriByuppppByupperzByuooooByunhoByunaByullByukByuhkilB
yugoslaviaByugoslavByuctanByuckiByuchiroByrselfByrdByovB	youuuuuuuByouuuuByouuuByoutByouselfByourselfByoursByounuByoumadByoulByoudByosukByoshiByorubaByorktownByorByoooooouuuuB	yooooooooByooomadddddddByooByoloByokeByoiByohBynBykwtfgoByiuByioooByintoniByiddishByidByhwhByhoByhfjByheByhatBygzBygyfqByezediByewkayByetiByesterByestB
yessssssurByesserByesrByeskByeshhByeseByepperByeonjunByellowbelliByelloByeildByeezuByeehawB	yeeeeeeshByeeeeByeeByeastByearnByeaahByeaaahByeaaaaByeaaaBybzBybByazanByayyyiByayiByayaByawByasssssByassByasminByasirByasinByasielByasharByaseenByarnByaoizByanoByanderByanaByammamaByamchaByalllByalenyewByakuzaByakbakByakByahushuaByaheByahaByadByachtiByachtByaarByaaaaaByaaaaByaaaBxyzBxylemBxyclonBxxxxxxxxBxxxxxBxxxtentacionBxxxdddBxxphoenixnkveraBxxlBxualliBxtianBxtBxpacB
xoxoxoxoxoBxoxBxoBxkjkznBxkBxjtiBxjawBxithBxiritpBxipeBxinhBximoBxicoBxianBxiahBxiaBxfactorBxeroxBxenaBxddddBxddBxcellentBxbBxanderBxanaxBwyteBwypipoBwymBwyBwwxBwwwB	wwfuyroawBwwaBwvtbgBwuzBwuupserBwuthBwutBwussBwuldBwuhanBwthellBwtfrackBwtffffBwtfffBwsjBwronliBwrittnBwritBwristiBwringBwretchBwrestlemaniaB	wrecklessBwranglBwrBwpuldBwpBwozBwowzaBwowwBwovumBwoutBwountBwouldtBwotchuB
worryingliBworryinB	worrrrrrdBworrisomBworralB	worldviewBworldstarhiphopBworldovBworkmatBworBwooziBwoowBwoopBwooooowBwooooooorstBwoooooBwoolwichBwoolBwoodwardBwoodrowBwoodpilBwoodenB	wonderfulBwomenzBwomemBwomeBwomBwokenBwohpBwohooBwohlBwohBwoeBwoaaahBwnBwmnagnstfeminBwmdBwmcBwlBwkkwkBwkakakaB	wjjdsdyrrBwjereBwivBwittysmittiBwitterB	witriandoBwitouBwitnesstBwithyhBwitherBwithdrewBwitaBwistB	wisconsinBwirathuBwiperBwinnipegBwinelandBwinehousB
windshieldBwindiBwinchBwimpiBwimmB	wimbledonBwillpowB	williammmBwilliBwildlifBwildliBwildinBwildestBwildcardB
wilberforcBwiladatBwilB	wikiislamBwiiiiildBwiiBwihtBwiggumBwigerBwienerB	widdecombBwickerBwickedBwhyyyyyyBwhyyuaisusjsjakshdhsksjskxjsjBwhyyBwhyhdoBwhydBwhoredomBwhompBwhomevBwholesomBwholeassBwhoaaaBwhizziBwhittlBwhithinBwhitesplainBwhiterBwhitepowBwhitenBwhitemanB	whitelistB	whitehousBwhitechapelB	whistleeeBwhippinBwhinerBwhimsicBwhicBwhiBwheyBwherebiBwhereBwherBwheeeeeBwheatherBwheatBwheaBwheBwhchBwhatyaBwhatthefuckBwhattaB	whatisnamBwhateverrrrBwhatchuB
whatboutriBwhatastackalackalackBwhataboutteriBwhatabouteriB	whataboutBwhassupBwhareBwharBwhaddupBwhaatttBwhaatBwhaaaBwgpucmqB	wfulrmgxrBwfhBweverBwetterBwethB	westpointB	westernisB	westbrookBwestboroBweseBwerrBwerkBweridoBwereBwerBweptBweonaBwemonBweltBwelppppBwellllllBwellllBwelllBwellbBwelfaBwelbeckBweiriBweirdliBweirderBweirBweinerBweightclassBweiBwehoBwehBwegmanBweetbixBweetBweepBweekndBweeeyBweeeeirdB	weeeeeeedBwedonBwedgiBwedgBwebseriBwebearBwebcamBwebbiBweaselliBweanB	wealthierBweakliBweakkBweaBwdgaBwcwBwcmlB
wcbstgokcbBwbuvBwbuBwbaBwazirBwazebBwazBwayzBwayyyyyBwayyyiBwaynelBwaylandBwayiBwawaBwattonBwatterBwattBwaterwayB	watermarkBwateriB
waterboardBwatchnBwatchgBwasupBwaspointB
washiturroBwasabiBwarrBwarnerBwarmupBwarlordBwarioBwareBwardrivBwapoBwapasiBwantinBwannBwaniBwanegbtBwandaBwandB
wallstreetBwallmaBwallflowBwallerBwalkoutBwalkinBwalidBwalewskiBwaldorfBwalderBwakandaBwaiverB
waitingsexBwaitinBwaiterBwailiBwaiBwahrBwahhhB	wahhabistBwahhabBwahabistBwafflerBwaeyoBwaecBwadudBwadhwanBwadBwaapsiBwaanaBwaanBwaalBwaaaahBwaaaaayBwaaaaaaaaaahBwaaBvwBvveriBvuyoBvulturBvueltaBvueBvthatBvtBvreBvrcBvpnBvowelBvoooltaBvoodooBvoocBvomBvolverloBvolutentB	voluntariBvoltronBvoltBvolatilBvoilencBvoiceovBvoguBvogelBvodafonBvocatBvocalistBvocalisBvlogBvladimirBvlackBvlBvjBvizinhanBvivianBvivaldiBvivaBviuBvitriolBvitalBvisitngBvisitaB	visionariBvisigothBviscouBviscerBvirulBvirouBvirgenBvirarBvirandoBviqBviprahBviperBviolinBvioletBviolenBviolaciBviolBvinspirBvinganBvinBvimBvilsonBvillifiBvillBvilifB	vileislamBviiiBvigrahamBvigoroB	vietnamesBvietBviennaBvienBvieiraB	videofromB
vidanthihiBvictoriastanBvictomisB
victimcardBvictimaBvicrimB	viceversaBvicarBvibrantBviajarBviajandoBviajBviacomcbBvhBvexBvetiBveterinarianBveteB
vestibularBvestBveryonB
versionnnnBverrrriBveronicaBvernonBvermaBvergonhaBverdunBverdBverbiagBverbalisBveraBveplayBventurebeatBventinBvenomuBvennBvenicBvengBvenerBvendepiBvendBvemoBvellorBvelhoBvelghBveleBvejoBveioBveiB	vehicularBvegetBvegataBveganBvegaBvegBveeyBveetBveepBveaBvbjhdnkdshbjnkBvayaBvaxBvauxhalBvaushBvaultBvaughanBvastliBvarunBvarsitiB
varnashramBvarnaBvarinaBvaranasiBvaoBvanniBvannaBvandrossBvandilBvampiremochiBvampirBvampBvalvBvalorBvalliBvalkBvaliantBvaleriB	valentonaBvaleBvaishnoBvagoBvageenBvacuouBvaccumBvacayBvacaBuzBuygurBuyghruB
uwuwuwuwuwBuvpcxuBuvaBuvBuuuuuuuuuuuuuuuughBuuuuBuuugghhBuuufBuuhButvButubButtarButmostButilisButhmanButhiButdButariButakButaBustedBusmlBusmdBuslimBusleyBusherBusfollowBuserspacBusefulBusdghidsujfhgBusdBusandoBusablBurslfBurrBurkBuriahBurgntBurdocBurchinBurbBuranuBuraatayBupstatBupskiBupsettinBuprootBupppBuppercutBupholstBupendBupbringBuparBupaboutBupaBunwisBunwaveringliBunwavBunwatchBunwBunusBunuBuntrustBuntruB	untradeblBuntestBuntenBuntastBuntamBuntalkBuntagBuntB	unsuspectBunsurprisingliBunsurB
unsubscribB	unsophistBunseB
unsanitariBunsaidBunrestB	unrespectB	unreflectBunreasonBunravelB
unquestionB	unpublishBunprovokB	unprotectB	unproductB
unprinciplBunprecedBunpolishBunplugB	unpatriotBunpardonBunpackB
unobstructBunnervBunneedBunnamBunmerciB
unmasculinBunmanliBunluckiBunlovBunlogoBunlockBunlearnBunkoolBunknowBunkindliBunkaBunkBunjustliB	unjustifiBunjustBunjokBunivrsBuniversoBunivBunislamBunisexBuninspirB	unimpressBunimaginBunilaterBunicyclBunhygienBunhumanBunhrcBunholiBunheardBunhayBunghhBungabafusegisaBunfundBunfuckBunfrikinbelievBunfriendBunfolloBunflattB	unfashionB
unfamiliarBunexpectBunevBunethBuneasBuneaBundressBundoB	undisclosBundiBundetectB	underwoodBunderweightBunderwayB	understimBunderstB
undersatndB	underrepoBunderpriviligBunderprivilegBunderpBunderliBundergroundB	undergradBundergonBunderclassmanBundeniB
undemocratBuncwBunculturBuncreditBuncountBuncookB	unconventBunconstitutB
unconscionB	unconfessBuncompromisBuncommitBunchristianBunchangB
unchallengBunchainBunboxBunbonBunbelievanliBunbelievablBunathletBunarguBunapologBunambiguBunalBunaffiliBunadBumployBumnoBummmmmmBummidBummerBummatBumjitaBuminnBumgBumfollowBumbragBumadBultrafundamentalistBultBuloBullBulgiBulemaBukwimBukranianBukelaliBukeBukadnaBukadloBujB	uioutgfjaBuighirBuigherBuigarBuiBuhmmhBuhhhhhBuheuaehauehuehBuhaulBuhauhsauhsauhsaBuhahuahBuguBugrulBuglyyiBuglliBugliestBughiyurBughiurBugghBugalnaBugaB
ufprrfsaxpBueueBudhBuddhavBudahBudBucqkkBuconnBuclaBucdBucccBubuBubmitBubiquitBubcBubaBuashuashasuhsuBuapaBuaeBuacBuaBtzuyuBtyvmB	typingcurBtypaBtykreeshrinaBtygerBtyeBtyagiBtxtiBtxtBtwonBtwkevzBtwitterwhiniBtwitterversB	twitterhqB
twittercatB
twitterboyBtwitteBtwitrBtwitpicBtwitionBtwitfemBtwitchiBtwitchalBtwitcanBtwitcamBtwisterBtwistedmetalblackBtwirlBtwinnerBtwincestBtwiggerBtwerpBtwerkerBtweezerBtweetupBtweetsavBtweetnBtweetinBtwashBtwaBtveBtutuBtuslawBtuskegeBturquoisBturntablB
turnedddddBturkoBturkicB	turkestanBturfBtureBturdiBturboBtunnelBtunisiaBtuneinBtunechiiBtunchiiBtunchiBtumpBtumnBtummiBtumkoBtumhariBtumharB	tumblrinaBtulsiBtullianBtulipBtulBtujhBtuitoBtuitBtuhanBtugBtuehBtueBtudinhoBtubiaBtuaBttttbBtttB
tteokbokkiBtswiftBtsushimaBtsunamiBtsukomoB
tsukkiyamaBtsukkishimaBtsuiBtsuBtsmiBtscBtrynnBtrynahBtryenBtrybBtruuuueeeeeeBtrusteBtrussvilBtrumptiB	trumptardB	trumpsterB
trumplicanBtrumpitBtrumpistBtrumpismBtrumpiBtrumpetBtrumbulBtrumapBtrumBtrulliBtruleyB
trueachievBtrudeBtruceBtroyBtrouxaB
troublesomBtropicBtrooperBtrolljunB	troglodytBtrocoBtrixiBtrivilBtristanBtristBtrishaBtrishB	trisectorBtriptychBtrippinBtrippiBtripoliBtripnBtripeBtrinBtrilogBtrigerB	tricksterBtrickiBtribunBtriatBtrevanBtrevaBtrentB	trendsettBtremendB
treatementBtreatablB	treacheriBtreacherBtreBtrawlBtraviBtravestiB	traumatisBtratarBtrataB	transsexuBtranspohobiaBtransmutB	transmittB	transmascBtransexuBtransBtraneBtramplBtrampB
trainwreckBtrainorBtraininBtraineBtraillB	tradesmanB
traderkirkBtradB	tracksuitBtrackiBtraceablBtrabalhoBtrabajoBtraBtqmmBtpresidBtoyotaBtownhalB	towleroadBtourniB
tournamentB	tourmalinBtourchBtoungBtoughendB	touchdownBtoturBtotpBtotoongB	totalmentBtotBtostopBtorionBtoreturBtoreBtorcedorBtopperBtopmodelB
toothbrushBtooshiB	tooooooooBtoooooBtoolbagBtoodBtonyaBtontoBtontBtongBtonerBtonadoBtomratB	tomkinsonBtombBtomandoBtomaBtolongB
toleranciaBtoledoBtokioBtokiBtoinsinuBtoibaBtohenBtogoBtogglB
togetherrrBtofuBtoffeBtoeragBtodorokiBtodokBtodddlerBtocBtoatalBtoasterBtoadiBtnxBtnaBtmrBtmphpgcBtmcBtmaioriaBtmBtlouBtlnjzueuBtjereBtiverBtiveBtitchBtitanfalBtissuBtiroBtirmidhiBtiramBtipuBtipperBtioBtinyurlB	tinyteethBtinseleyBtiniestBtinhaBtingliBtindakanBtimrBtimotheBtimonenBtimmiBtimezonBtimespanBtimerbxBtimeoutBtimehopBtimeframB	timbalandBtiltBtikkaBtightiBtightenBtiffaniBtienenBtieflBtidiBtiddiBtidalBticeBticarBticBtiboBtiaraBtiaBthwiBthurBthunderBthunbergBthumbBthugginBthucydidBthtzBthsiBthseBthruthBthrustBthrowinBthrowerBthroughjBthrottlBthroBthriceBthriatBthriBthreshBthreB	thoughtttBthoughtlessBthookBthooBthongBthnxBthizBthistlBthisssBthismakBthinnerBthinliB
thinkstockBthinkprogressB	thinkpiecBthinggggBthincBthiefB	thibodauxB	theythinkBtheyllBtheuB
thetheoryiBthetBthessalonianBtheshaderoomBtherwB
thermaltakBthermBtheriBthereofBthereinBtherefoBthereaftBtheraphiB	thepresidBtheoreyBtheoretBtheodorBtheoBthemselvBthemitBthematBthelmaBthelBthekrBthekaBtheistBtheismB	theirselvBthehBthegoodguysauBthegBtheftBtheekBtheblockbotBtheaBthcBthbpBthayBthattBthatcherBthatbutBthassBtharoorBthanxxBthangBthameBthaliBthakurBthakerayBthabkBthaaBtgkBtezbBteyBtextoBtextinBtextilBtewBteukiBtetriBtetherBtestosteronBtesterBteslaBterusanBteruBterrrorBterrosimB
terrorsistBterroristorganisBterroristanB	terrorismBterroriBterrorfiBterrisomB	terrioestBterrifyingliBterrierBterrencBterrelBterracBternshipBtermitBterminatoriBterminarBterimaBteriBtergolekBterekoBtepiBteoBtenuchiBtentandoBtentaclB
tennesseanBtennesseBtennantBtenidoBtenetBtenerBtemporariliBtemplatB
temperaturBtempatBtemmaBtemirBtemenB	tellingliBtelfarB
telepromptBtelepathB
teleniparaB	telenganaB	telegraphBtelefonBtehBteferaBteemBteeeeBtediouBteckdeckB	techraptrB
technocratBtebowBteatroBteatBtearraBteariB
teamstrizzBteammindlessBteachinB
teachermumBtchrBtbtBtbroughBtbqhBtbingBtbiBtbfBtbeyBtbditlBtbcBtayyoungBtaymeyaBtayeulllBtayangBtayBtaxpayBtaxonomiB	taxdollarBtaxatBtawbaBtauB	tattletalBtattiBtatiBtateBtataraBtastiBtashiBtashaBtaseerBtasbeehBtarzanBtarpBtaroBtariqBtareekB	tarantulaBtarabaBtaqyahBtapetB	tapcandacBtanzaniaB
tantamountBtantaBtanpaBtanishaBtangoBtanglBtangaBtangBtaneshaBtandemBtanaBtamraBtampocoBtamirBtamimiBtamilianBtamiBtamekiBtamboBtambBtamaBtalwarBtalveezB	talmaboutBtallulaBtalivanBtalinBtaliebBtalibanmeanB
talentlessBtaleahBtalabanBtalaakBtakutBtakluBtakleefBtakfiriBtakfirBtakedownBtakbeerBtaiybaBtailorBtaiBtahrirBtahhirBtaheriBtahBtaglinBtagamBtagalogBtaffiB	taekwondoBtaeBtadinhuBtadinhooooooBtadinhoBtadiiiiiiinhaBtadiBtadashiBtacitBtabuBtablegiBtableegBtaapseBtaaaagBsyuriBsystamBsyrupBsyrizaBsyriacBsyonizmBsynthetBsynopsiB	synergistBsyndicBsynagogB
sympathetiBsymbiotBsylvestBsyllabuBsylarBsylBsycophBsxhoolBswtorBswotB
switzerlanBswithchBswitchinBswissBswintonBswingsetBswineeeeeeeeeeeeBswindlBswiftiBswfBswervB	sweetiepiBsweedenBsweatiBsweaaaaaarrrrrrrBswaterBswatBswaraBswapnotBswanseaBswampismBswaggerBswabB	swaaaggerBsvtBsvBsuziBsuxBsuuuuuuuuuuuuuuuuuurBsuttinBsutterBsutpidBsusuBsushantBsurreyBsurpressBsurleyBsurgicBsuprisingliBsuprisB
supremaistB
supremacstBsupramacistB	supramaciBsuprBsupprisBsuppremacistBsuppotrBsuppkBsupperrrrrrrBsuposBsupervillainB
supermodelBsupermarketBsuperinteressantB
superfrontBsuperfluB	superficiBsuperfanB
superchargBsuperbadBsuperbBsupeB	sunscreenBsunrisBsunniiinBsunnaBsunlightBsunkenBsunglassBsungjongBsunburntBsunanBsumthenBsumonBsummarisBsummaBsumitBsumirBsultahBsukanyaBsuiciBsugieroBsugaBsufrirBsufriBsufreramBsufrenB	suficientBsuffragBsuffolkBsufficiBsudiaBsudhirBsudharBsudeshBsudeepBsudanesBsudBsucralosB
suckeeeeerBsuckaBsucidBsuchhhhBsuchaBsuccinctB	successorBsucceBsuccBsubversBsuburbBsubuhiBsubtliBsubtletiBsubtitlBsubsidBsubserviB	subscriptB
subscribazBsubplotBsubpanallahBsuboptimBsubmergBsubliminBsubcriptBsubcontractorB	subconsciBsubboardBsubaruBsuarezBsuaraBstylistBstylishBsturgeonBstupidliBstupiddddddddddBstupendBstunnerBstungBstugiBstugglBstugeBstudiouBstudBstubbBstrutBstrungBstrumpetB	strongestBstripeBstrideB	strictestBstrewnBstressinBstrenghtBstreetzB
strawberriBstrategicscorBstratBstraightpluB	straightiBstraddlBstrachanBstraB
stourbridgBstorytelBstorifiBstoppardB	stopnfocuB	stoplightBstoopidBstoogiBstonewalBstonerBstoneagB
stomachachBstockpilBstitchBstirlBstipidBstinkinBstinchBstimulBstimpiBstillerBstikeBstiflBstiBsthingBsthanBstffffffuuuuuuuuuuuBstfBstewardshipB
steubenvilBstereoBsteppinBstephaniBstephanBstephBstellaBsteleBsteinmelBsteiniB	steelhammBsteelerB	steampunkB	steakhousBsteadBstauntonBstaueBstaudtB	statueswwBstatmentBstatlerB
stationariBstaterBstatenBstarinBstarfirBstarcastBstaplBstanleyBstankinBstanfordBstanekBstandoutBstandomBstandoffishBstandinBstamntBstamfordBstalkinBstalinBstaightBstaggerB
stagecoachBstaffordBstafBstadroBstackoverflowBstabilBstabbiBstabanB	staaaaahpBsssshhhBsshhBssdBsrliBsrirachaB	srilankanBsregginB
srebrenicaBsreBsquirmBsquickBsqueetB	squeeeeeeBsqueeeeeBsqueeBsqueakiBsquawkBsquawBsquatterBsquashBsquarepBsquabblBsqliteBsqiziBsqaurBsqBsputeBspubBspsycoBspriteBsprintBspringfieldBspriestBsprewBsprawlBspotterBspoopiBspoonfBspookiBspoofBsponsorshipBsponcerBspokespersonBspoiltBsplinterBsplatoonBspjBspittoonBspittinB	spiritboxBspiralBspindlBspinachBspiltBspideyB	spidermanBspidergirleddiBspicerBspersoBspermBspendiBspeelBspedBspectrBspectaclBspecliBspecimenBspecieB	specialisB	specialfxBspeacialBspeachBsparrowBsparkliBsparklBspaniardBspambotBspaldB	spaghettiBspaciouBspaceyBsozinhaBsozBsoyboyBsoxBsouzaB	southcentB
sourcelistBsouprriB
soundcloudBsoullessBsouljahBsouliBsouldBsotuBsosoBsosincerBsoshB
sorrrrryyiBsorrowB	sorprendiBsorianoBsordidBsorceriBsorBsophmorBsophistBsoperBsooooooooooooBsoodiBsoodBsonuB	sonserinaBsongwritBsongbirdBsonamBsomuchBsomtimBsomthBsomoanBsomnBsommaBsomiziBsominBsomesuchBsomeshjiBsomeshBsomehwBsolyentBsolariumBsolankiBsolanaBsokotoBsokayBsojournBsohoBsohBsoftliBsoftiBsoftenBsofrirBsofreriaBsofreramBsofiaBsofBsoeverBsoecialBsodomiBsodalBsodaBsocmB	sockdreamBsociolinguistBsocioeconomBsociaiBsochnB
soccerplexBsobrinoB	sobretodoBsobrangBsnyderBsnupeBsnufBsnubB	snowboardBsnowbalBsnorlaxBsnooorBsnookBsnobbishBsnobberiBsnlBsniggerBsnifflBsnifferBsnhdkBsngBsneakierBsneBsnationBsnareB
snapdragonBsnadwichBsnBsmugtownBsmuggiBsmuaBsmtinBsmthingBsmthgBsmpBsmoovBsmokinBsmmmBsmmfhBsmmBsmjahtBsmiB	smethwickBsmethBsmericanB	smellkankBsmeicriBsmedBsmdhhhB
smashingliBsmarkB	smackdownBslurpBslureBslouchiBslothiBslopeBslogBslingBslightBslidBsliBsleppowB
slendermanB	sleepwalkBsleeptBsleepoverxoxoxoBsleepovBsleepinBslaveownB	slavemastBslatherBslasherBslashB	slapstickBslammerBslamicBslagggBslackBslaaayBskywalkBskynyrdBskylinBskydivBskweedBsksksksksksjBskskskskB
skskakskskBsksjsjjB
sksjsjdjdjBskrngBskripalBskolliBskolBsklBskintonBskinnierBskinheadBskincarBskilnBskewerBskewBsketchiBsketcherBskeletorBskeletaBskeetBskdlBskdjdkdjBskdbskbdBskataBskaseBskarangBskBsjsjsjBsjkcBsizablBsiyaB	sixuzuhkaBsiwaBsitupBsitaBsissyboyBsissifiBsisolackBsiskindBsirvaBsiroBsireBsipidBsintBsinoBsinjarBsinistroBsinisiniBsinisendBsinhalesBsingtoBsingaporeanBsingaporBsingalBsindiBsinceroBsinceBsinaiB
simstagramBsimplifiBsimplestBsimplesmentBsimplerB
simplementB	simonwangBsimolBsimoBsimmonBsimiondB
similacrumBsimboryoBsimbaBsimarliB	silvermanBsilntBsildierBsikkimBsikhshaBsikhismBsikhiBsikhataBsikeBsiiBsignupBsignificantliBsiftBsientoBsiemprBsidneyBsidhuBsidheaBsidewalkBsidekickB
sicologicoBsickerBsicBsiarinBsiappBsiaposBsiapaBshysterBshynessBshxtBshuttlBshutdownBshurgBshungaBshuldntBshuldBshukriBshuklaBshujaiyaBshufBshuaBshrunkenB	shroedingBshrektBshoyaBshowrunnBshowoffBshovBshouyaBshoutinBshoutiB	shouldnttBshoukoBshoujoBshotgunBshorrBshopperBshootoutBshootinBshoolB	shookcausBshookBshoodarBshoneBsholaBshoheiBshodowBshockleyBshockerBshobakBshmBshlutBshldntBshkodranBshivsenaBshiverBshivajiBshivaBshivBshitwalkB	shittybthBshittttB	shittiestBshittestBshitlessBshitdickBshitbroadystanBshitbagBshiryaB	shiromaniBshirleyBshirazBshiplapBshinierBshingiBshingalBshinerBshinadaBshimmerBshilpiBshillBshikhaBshikaoB
shiittttttBshiitBshiiiiiiiittBshiiiBshifuBshietBshielaBshiddB!shhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhBshhBshermanBsherlockBsheppardBshepherdBshepherBshepardB
shenandoahBshemitBshemarBsheilaBshehlaB	sheffieldBsheffBsheeterBsheeplBsheenBsheeeeshB
sheeeeplllB	sheeeeeitBshearerBsheaBshaytatBshayshayBshawddBshawarmaBshauniB
shatrughanBsharzilBsharptonBsharpliBsharjeelBshariyatBshariahBsharadBshaqBshapchatBshaolinBshaoB	shantpriyBshantiBshannonBshanleyBshaniaB
shamockeriBshamlessBshalomBshakirB
shakespearBshakenBshahzazBshahrukBshahidBshaggiBshaftB	shadowrunBshabbiBshabazzBshabaabBshaababBshaaBsgrepienBsgeBsfxBsftvBsfsuBsfmtaBsfatBsexulB	sexuallisBsexualisBsexierBsexcBseveruBseventiB	seungyoonBseungriBseungminBsettlerB
settlementBsetterBseteB
serverlessBserpentB	seriosuliBserioBsergioBsergeantBserbianBserbaBserbBserafinaBseptumBseptBsephoraB
seperatistBseparatBsenyumsemangatBsentientBsensorBsensatBsenpaiBsenmerBsenjuroBsenhorBsengokuBsenerioBsendoBsemoBseminBsemifinalistB	semicolonBsemetBsemeBselflessBselfcentBseldomBselamatBseladonB	sekiranyaBsekelaBsejarahBseizurB	seinfieldBsehriBsehBseguiriaBsegregationistBsegratBsefBseethBseerahBseerB	seemingliBseekhoBseedhBseditiBsederB
secularistBsecuiBsecuBsecteriBsecretoBsecorieaBsecomdBsecobdBsebabBseatbeltBseashelBseamBsealionBseafoodBsdBscurviBscuntBscummiBsculptBscufflB	scrutinisBscrupulBscrunchiBscrunchBscrubberBscrotumBscrollllllllllBscreamerBscraggBscourgBscourBscotuB	scottsdalBscottoBscotsmanBscotchBscorsesBscornBscorchBscootBscoobiBsconatBscoliosiBscoffBscocialBscientifB	schwagbagBschwaBschtickB	schroederB
schoolyearB	schooldayB	schoolbagBschooBscholastB	schofeildB	schneiderBschmuckBschmidtBschlockiBschlattBschizophreniaBschillBschemmelBschemerBscheerBscheanaB
schadenfruBscfyqgvqBscewBscentsiBscatologBscathBscatBscarvBscarlettBscariestBscarierBscarfacBscarfBscarediBscarecamB
scaramucciBscapegoBscandinavianBscandinaviaBscanBscalpBscabiBsbsnBsbayBsballBsbBsayyyBsayoriBsaynBsaylessBsayaBsaxophonBsawnBsawalBsavilBsavarnaBsavantBsavanBsavageriBsaulBsaudBsauBsatyaBsatuBsattaBsatoriBsatiBsateBsatdayBsassiliBsassiestBsaskiaBsashayBsarvarkBsarrBsarpanchBsarkarBsariBsardarjiBsarcasmoB	saravananBsarBsapphicBsapoB	sapiosexuBsaokBsaoBsanyasiB	sanvidhanBsantorumBsantoBsantiagoBsantiBsanteiBsantanaB	sanskritiBsansaarBsankaraBsanjayBsanitisBsanitiBsanitariB	sanghatanBsangaB	sandwhichBsandraBsandpapBsandeepBsandalBsanchezBsanatanBsanaBsamudayBsampaioBsampBsamoanBsammichB	samjhayenBsamjhaBsamiaBsambucaBsamboBsambitBsambhaliBsamatarBsamajhBsalwarBsalvegBsaluteBsaltinBsaltbalBsalsaBsaloonBsalmonBsalmamBsalmBsalllltBsalliB	salisburiBsalinBsalimBsalidaBsalehBsalatBsalarioB
salahuddinBsalahBsalBsakoBsakitBsakhaBsakhBsaiyanBsaiuBsaitanBsairBsaintzBsailabBsaiBsahurBsahBsaggiBsagBsafranBsafariBsaeBsadyangBsaduB
sadomasochBsadikBsadiBsadhviBsadhuBsadettinBsaddoBsadderBsaddamB	sacrificiB
sacramentoB	sacramentBsacralBsachhBsacharBsacaronBsacBsabrinaBsabrBsabodaBsabiaBsaberBsabendoB
sabarimalaBsabarBsabajiBsabaabBsaarcBsaabBrzBryunBryoBryinBryeBryderBryanaBryB
ruwaybidahB
rutherfordBrustlBrustinBrusticBrusselBrussaBruskuBrushdiBrupaulBrunnnBrunniBrunnawayBrunawayBrumpubBrumpBruinerBruinedtuskegeBruimBrugoBrudimentariBruddBruckuBruckBrubroBrubinBrubberiB
rubberbandBrubarbBrsvpBrroristBrqBroxaBrowlandBrowdiBrouterBrourkelaBrounderBroundabBrouhaniBroubaBrotiB
rothschildBrothlisbergBrotfflBrotekohlBrostiBrosiestBroshtiBroshannaBrosemariB
rosegardenBrosebBrosaceaBrosaB	rorschachBroostBrooshvBroopBroooobbbBrooneyBroomthiBroomiBronniBroninBrondaB
ronaldinhoBronaldBronaBronBromperBrompBromoBromilaBromeBromcomBromainBrollinBrollerskBrollbackBrolandoBrokoBrokBrojaB	rohingyaoB	rohangiyaBrohanBrogenBroethlisbergBrodrigoBrodmanBrodgerBrodeoBrodentBrodeiBrodeadoBrobbiBrobarBrobaB	roastbustBroarBroamBroaldB	roadshittB
rnkqxumeztB	rnerworldBrmemberBrmbrBrmaBrlmBrkhoBrjdBrizziBrizalBrizBriyazBriyaazBrivieraBrivetB	rivalidadBrivalBriunBrisenBrisalatBrirBrippinBriooooooooooooBrintBrinsBrinkBringwaldBringtonBrileBrikoBrihannaBrigormoBrigorBrightistBrightiBrigbiBrifiBrifftraxBriffBrieBridonkulBridinBridicBriddinBriddancBricochetBrichnowBrichmondBrichliBricherBribbonB
ribblesdalBrialtoBriaBriBrhumBrhodeBrhinoBrhettBrheaBrheBrghtBrgbBrfmBrfBrezilientkidBrezBreynoldBrexBreworkBrewindBrevolutionariB
revivalistBrevivBrevitBreverberBrevBretypBretrievBretreatBretookBrethinkBretelBretdBretconB	retarrrrdBretainBretaBresuppliB-resultsmayvarydonttrythisathomeswvnggangbitchB	restraintBrestoBrestivB
restaurantBresponBrespetoBresolveBresistiBresharBrescucBrerunBreroutB	requisitoBrequiemBrepurposBrepulsivkinBrepugnBrepudiB	republishBrepublicratBrepublicBreptarBreprisBreprintB	reprimandB	reprehensB	reprecussBreprBreponsBreplyxBreplugBreplicatBreplacinBrephrasBrepayBrenjunBrengB
rencananyaBremiBrememBremarriBremaindBremBreluctantliBreluctBrelojBrellenaBrelishaB
relinquishB	religionuBreligioBrelicBrelgonBrelgionBrelegionBrelazzzBrelavB
relativistBrelaBrektBrekindlBrekhaBrekeBreinstatBreinBreimbursBreilliBreigionBreidBreiBrehtBrehmatulBrehashBregurgitB
regulatoriBreguBregressBregresoB	regresaraBregimenBreggiBregaurdBreforestBreevaluBreesBreenforcBreenactBreekBreeferBreeeeealBreedBreduxBredundantliBreductBredtaurBredtailBredstonBredskinBredscarebotBredrawBredpilBredonB	redoblemoBredoBredmondBredlinBredhatBredaBrecyclBrecurBrecuperaBrecreatBrecoursBreconstructBreconquistaB	reconnectBreconcilBreconB	recommednB
recomiendoB	recollectB
reclassifiBrecievBrecheckBreceptionistBreceedB	receberamBrecBrebutBrebuiltBrebrandBrebalBrearrangBrearmBrealtorBrealtiB	reallllliBrealllllBrealllliBreallliBrealignBrealestBreailtiBreadyyyyyyyyyyBreadinBreadiliBreademBreaaaaaaaaliBrdjB	rcuckcoibBrcmpBrcinhaBrbgBrbarBrazorBrazerBrazeeeBrazakarBrazaBrayquazaBravishuddinBraviBraverBravanBravagBraulBrattiB	rathyatraBrassistBrasoolBrashidaBrashidBrashadBrashBraseBraraBrapturBraptorBraplinBrapinBrapiBraoBrantzenBransomBranjitBrangerBrandappaBranchBranalloBramseyBrampancBramoniBramonaB	rammadhavBramditBramdanBramazanBramayanBramasamiBramanBramadiBralphiBrakshabandhanBrakhoBrakhiBrakhBrajputB
rajjputanaBrajjiBrajinBrajaBraitoBraitBrainiBrainaBraiderBrahulgandhiBrahogBrahmanBrahiBraheemBraheelBrahayBrahainBrahafBragiiiinBragheadBragerBrageeeeeBragebonBrageaholBrafflBraffaBradoshBradiuB	radioheadBradioactBradicalmuslimBradiatBradfemBradekBradeBraddiBrackBracisimBrachetBrachadaBrachBracebaitBrabulmuslameenBrabulaalmeenBrabiyeelBrabiaBrabblBrabbiBraajBraaaaarBqwhiteBqurBquotientBquotatBquoraBquizzBquizaBquizB	quixkweavB	quirklessBquintBquinciBquierBquidBquiBquestionsformenBquestioBquerrBqueriBqueremoBquerBqueijoBqueerpocBqueerphobiaB	queerphobB	queerbaitBqueeniBquedaraBquebraBquebecoiBqueadaBqudBquatroBquatarBquashBquasBquantifiBquandariBqualquerBquakBquaidaBquaedaBquadrantB
quaazzzyyiBqtBqsnBqroBqprBqoutBqoumBqnonBqndBqnBqlbxodBqiraatBqgdbB
qgajbfjuitBqeerrooBqctBqbtheBqbBqarroBqariB
qaraqawzaqBqantaBqantBqanonBqalmaBqalamBqadriBqadhiBqadedaBqaafBqaBpythonBpyeBpyarBpwrBpwndBpwiBpvpingBpvperBpvfBputtBputoBputeBputanginamokaBputaBpussyholBpushyamitraBpushiBpursuitBpurrpalBpurrBpurposelessBpurplealienBpuroBpuritanBpurifiBpurifBpurestBpuraBpurBpupusaB
puppermastBpupBpunyaBpuntBpunkifiBpunjabiBpunitriBpunitB	punishmntBpunditBpuncturBpunctuatBpunchbagBpunchablBpullovBpullitzBpullerBpulldBpuleBpujanBpujaBpuigBpugBpuffinBpuffBpuedoBpuedBpudgiBpuckBpublixBpubicliBpubhBpuasaaBpuaBptoBptiBptaB
psychosociBpsychopathiBpsychoanalyzBpsycBpsuedoBpsuBpspBpsnowBpsicologicamentBpshBpsalmBpryzmBpryorBpruneBpruebaBpruBprsnBprrdBprovocateurB	provocadoBprouncBproudiBprotrayB
protractorBprotipBprotestwBprotekBproteinBprotBprostratBprostatectomiBprostatB
prosecutorB	propuestaBproprioBproprietariBpropogBproplB
propangadaBpropagezBproovBprontoBpronoB	pronislamBproneBpromptliBpromotinB
promoskankBprolongBprolifBprolgbtBproleBprojetoBprojB
programoutBprogrammBprogramaBprognosBprofusBprofoundBprofferBproffB	profesionBprocuraBprocterBprochoicBprocedurBproceBproblmBproblBprobatBproamB	prnewswirBprizrenBpriveligBprivelegBprivBprismBprisionBprisidB	priscillaB	prioritisBprioBprinterB	princetonBprinceofpersiaBprimilaBprimeiroBprimalBprimaBprikBpriciplBpriBprevilegBprevelBprettynBpretoBpretextBpretensBpreteenBpretaB	presumptuBprestonB	prestititBprestigBprestB
presstitudBpresenB	prescillaBprerequisitB
preparandoBpremierBpremeditB	premchandBprematurBpremaritBpremBprejudBpreguntoBpreggerBpreferemBpreetiBpredicBpredetorBpredecessorBpreconceitoBprecludBpreceptBprecautBprebakBpreachiBprdctBprcntBprckBprcBpraxiB	pratiquemBpraticoB	praticadoBprateekBpratcherBpratchBpratBpraseB	pranksterBprancerBprancBpramukhBpraisewoBpraisdBpragyaBpragmatBpradipBpracBprabhuBpqpBpppBpplzBpphyqBppeBpoxaaaaB
powerpointBpowelBpowderiBpoutBpourriatBpouncBpoudrierBpoucoBpotussBpottiB	pottermorBpotrayBpotentBpotchBpotatB	potassiumBpostulBpostmanBpostindustriBpostaBpossumBpossoBposixBposiBposhmarkBposhestBporridgBporraaBporrBpornoB	pornmmoviBpornhubBporkchopBpoptaB	popsocketBpoppiBpopoBpopatBpoorqBpoorestBpoojaBpoofterBpongaloBponeyBpondrBpompeioBpommiBpommelBpomegranB
polythesitB
polytheistB
polygamistBpolyestBpolydetestrBpolucBpolticiBpolticBpoloB	pollyannaBpollsterBpolitcB	policymakBpoliBpoldBpolanskiBpokkstBpokimanBpokeyBpointerBpogiBpoeticBpodrB	podhoretzBpodemBpobierzBpnwBpncBpnBpmsingBpmingBplumpBplssBploughBplotlinBploteBplgBpleseBpledgdB
pleassseeeBpleaseeeBpleaseckBplaytimB	playgroupBplayboyBplaybookBplaybilBplatoBplasterBplaseB
plantearonBplantatBplanoBplannedparenthoodBplankinBplankBplaidBplagiarBplaBpjvBpizzelBpizzagBpixiBpivotBpittyfulB
pittsburghBpitiablBpitfalB	pitchforkBpitcherBpistBpissinBpissdBpissantBpiscBpiruBpiranhaBpipBpinpointBpinoyBpinkspotBpinkiBpinesolB	pinecrestBpineBpinbalBpinapplBpillarB	pilgrimagBpilgrimBpilgarBpileonBpilatoBpigtailB	pigistaniB	piggybackBpifBpicwhatBpictoriBpicnikBpicnicBpicklBpickinBpickiBpickeringtonB
pichaikaraBpichBpiccupBpiadaBpiB	physicianB	phuphureiB
photoshootB	photobookBphlegmBphinonBphinkkkBphineaBphilipB
philharmonBphilandBphiBphewBphenomenBphenomBpheebBphatBpharaohBphallicBphahahahahaBpgpBpfwlrBpffttBpfBpewdiBpetuniaBpetulBpettiliBpetroBpetitionBpeteyBpesticidBpestiBpessoBpesrpectBpesquisaBpesoBpeskiBpeshwarBpeshawarBpescadoBpesBpersuasB	personnelBpersonliBpersonifBpersnBpersevB	perscriptBperiyarBperigosoBperguntaBperguntBperfffffBperfBpereraBpereiraoBpereirBperdidoBperdiBpercussBperciBperceiBpercecutBpercebBperaiBpequenoBpequBpeptoB	pepperidgBpeplBpeorBpentuckiB	pentonvilBpensarBpensaBpennywisBpennsylvaniaBpennBpenitBpenisBpenguinB	pengalengB
pengalamanBpenetrBpendulumBpendejoBpendampingnyaBpenaldoBpelamorBpelaBpelBpejorBpeionBpehlBpegeuroBpeevBpeenBpeelBpeduliBpedowoodBpediraBpedirB
peculiarliBpeblBpeakmanB
peadophilaBpeadoBpeacemakBpeacefulBpdxBpdtBpdpBpdfBpboBpayrolBpayoutB	paygroundBpawpawBpawarBpawBpaungiBpaulistaBpaulinBpaulaBpatwariBpatunganBpattiBpatroBpatriarcBpatiBpathmarkBpathfindBpatharB	pathankotBpathanBpatersonBpateronBpatelBpatalBpataalBpastriBpastimBpasteurBpassouBpasseataBpasseaBpassangBpassaBpashtoonBpaschimBparveshBparrotBparochiBparlancBparkianBparkersburgBpariwarBparivarBparikshaBpariahBparhBparenthBparemBparejaBparehoBparedBpareciaBpareB	parchmentBparcelBparanormBparanoiaBparangBparalyzingliBparalysBparalympBparakeetBparahBparadoxBparadigmBparachutBparabBpaqBpapoBpapercutB	paparazzoB	panzipuraBpantiB	pantenginBpantamiBpansinBpanoramaBpanitiaBpanislamBpanickBpangaBpangBpandeyBpandalB	pamzekmanBpampletBpamBpalsiBpalmerB
palmeirensBpalmaBpallBpalhoBpalavraBpalatBpalastinianBpaladinBpalacBpalaB	pakisthanB
pakistayinBpakisanBpakeBpajucaraBpaistaniBpaisonBpaigBpaidaishBpaidaeshBpahahahahahaB
pahahahahaBpahahahaBpagarBpagaBpagB
paedphiliaBpaedophilliaBpaducahBpadtaBpadtBpadnBpadlBpadhaaBpadhBpadegaBpaddockBpadaBpacmanBpackiBpackerB	pacificimBpacifBpacemakBpabloBpabBpaavadaiBpaanseBpaaniBpaalB	paakistanBozBoyinboBoyeeeBoyeeBoyeBoxygenBoxycleanBoxbloodBowtaBowaisiBowBovrBoverwhelmingliBoverusBoverstepBoversimplifBoverseaBoverseBoversawBoverrunBoverqualifiBoverpowBoverlongBoverjoyBoverinflBoverhypBoverhearB	overestimB
overdramatBoverdonB	overblownBouvindoBoutwardBouttB	outspokenBoutsourcBoutsoldBoutskiBoutsiBoutroarBoutpostBoutofBoutlookBoutlinBoutiBouterBoutdoorBoutdistBoutcriBoutcheaaBoutburstBoutbackBoustBourselfBouranBouoBouncBouldBoughtaBoufitBottomonBotterBotpBotimoBothmanBotherwiB
othernightBotcBotarioBotakuBosxBosuBostrichBostealyourmoneyBostBospreayBosmosiBosiaoisoaisoiaosiaioiosoBosiBosconBosamabinladenBosakwBosBorwelBoruBorstrivBorrrrBorphanBorlandoBorjewishBorissaBorileyBorijinBorigemBorigBorientaBoriBorgnzsnBorgenBorganizarionBorgamB	orensteinBorderliBordainBorchidBorangaBorajelBoraBoqiBopulBoptnBopticalunicornBopticBoptessorBoprressBoppwessBoppresBoporessBopmBopiumBopinonBopinaBoperettaBopaaBopaBoopsiBoopmaBooooowBWoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooBoooooooooooohBooooooohBoooooooBoooooohBoooooofBoooohhhBooohhhBooobbbaaammaaaaaaaBoompaBoomBoohhhBonzBonwurahBonuBonthiBonthBonscreenBonnnnssssssBonnaBonlytimBonlymattBonlookBonibuBongBonedayBondBonboardBommBomgsjsjwhsjBomgoshBomgomgBomggggBomgggBomfBomeglBomariBomabaBomaBolympianB
olutwitchiBolusogaBoliBolhaoBolgaBolfB	oldschoolBoldiBoldhamBolaaaBokokBoklahomaBokeBokayiBokamaBokaiBokaaaayBojulandBojeaBojaojaojaoajoajojaBojajoBoitBoilierBoiganBohyaBohsomaniBohoBohkBohhooooBohhhhhhBogrBoglumB
ogbaisteidBoganBofwBoftentimBofglassBoffiicBoffhandBoffffffBoffenedBoffbrandBofendidaBofendBofcoBoelBodysseyBodviiBodontomaBodiouBodieiBodiadoBodiaBodehBodeBoddlyspecifBodahBodaBoctB	oclkmekoqBockendenBochakoBoceaBocdBoccurinBoccidBoccatBobvsliBobummBobumBobtusBobsurfB	obstrufucBobstructBobstaclBobscurBobrienBobongoBobliterBoblBobjectivBobituariBobfuscBobeyaBobcBobamalawBobamacarBoauBoatmealBoatBoakleyBoakBoajoajoajajoBoafBoacBnzbrrBnzBnyolongBnymphetaminBnyiaBnyekillllllBnyekilBnyehehBnwaBnvqBnvmBnvaBnuttssssBnuttinBnuttalBnutsoBnutinBnutbalBnutassBnusincBnusensBnusayBnungBnuneBnuncBnumskulBnumpadBnumeroB	numbingliB
nulmbyqunaBnullifiBnuissancBnuhBnuggetBnuestraBnubilBnubianBntysonBntrBntnBnthngBntalBntaBnsvngBnsnBnrnqsrjuBnpaBnoyzzBnowwwwBnowahBnovakBnovBnourzzBnourishBnotttB
notmeeeeeeBnotewoBnotarB
notafricanBnotB	nostalgiaBnosqlBnosiBnosebleBnoseatB
norsewomanBnormiBnormanBnorfolkBnorcoBnoramlBnorakBnoorBnoooooooooooooooB
noooooooooBnooooooBnookBnoogerBnoodlBnontriviBnonsanBnonoBnonmanBnonianBnonesensBnoncBnonathanBnonanswBnomorBnomineBnolanBnolaBnojokBnoisiBnoidaBnogBnodernBnodeBnodatBnodBnocBnobbiBnobberBnobamaBnntiBnniBnmjcBnlsdjBnlcBnlBnktBnkliBnkcBnkaneBnjhBnjeBnjBniwBniverBniveauBnitwitBnitricBnissanB	nishimiyaBnishantBniqqaBnipseyBnippleBnipBnioBninthBninteensixtyfourBninniBninguBninelBnileBniklBnikkerBnikiiBnikiBnikalBnikahBnikaalBnijimuraBniiiiicBniiiccBnihBnigroB
nightstickBnighBnigguhBniggssBniggggerBnigggaBniggetBniggeruB	niggerrudB	niggerrsbB	niggerishB
niggerfuckB
niggerdumbBniggdaB	niggaaaaaB
nigerpleasBnigazBnietzschBnielBnicoBnickinBnichtB	nicholsonBnichBniceeBnicBnibiruBnhlBnhiBngtvliBngoziBngocBngmBngiyabazondaB
ngikthandaBngatainBngangaBnfjdjfjdjfjBnfccgBnewtonBnewswoBnewstandBnewssincBnewsroomBnewsomBnewslettBnewsincBnewsicBnewmanBnewcastlBnewbiBnevrBnevouBneverendBnevadaBneurotypBneurosciBneuronBneurodiversBnetwarBnetwBnetizenBnetaBnestBnerdliBnerdierBnerakaBnepalBneophytBneonaziBneoliberBneogreekBneogafBneoegBnenhumBnengiBnemtsovBnemriBnemesiBnemaB	nelsoncatBnelsonBnelliBnellBnelBnekBneicBnehBneguBnegroidBnegritoBnegritaBnegrinhaBnegiBnegetBnegerBneganBnegaBneftegnaBneffBneekiBneeedBneedlepointBneedlBneediBneededdBnedBnectarBnecrophiliacBnecerBnebulBnebraskaBnebbishBnealBneaBndolaBndilungBndikatiBndanlB
ndakarambaBnciaBnciBncerBnceaslBnceBncaabBnbwBnbodiBnbiBnbcBnazistaBnaziarmiBnayaBnayBnawwBnawmiBnawhBnawaBnavratriBnavratraBnaveBnavarrBnavalBnaumBnaughtBnauB	natyralisB	naturalisBnatsukiB	nathanielBnathanBnathBnataliaBnataliBnasrallaBnashBnascarBnasalBnarionBnarenBnarcoBnarccistBnarcBnaqviBnapolBnapakBnantBnanoBnanniBnaniBnangiBnangBnanettBnaneBnanduBnanaBnanBnamsayinBnamorBnamoBnamelessBnamecalBnamaziBnamastBnalinBnalaBnakkoBnakalBnaivetiBnaiiritaBnaigelB
naidudulotBnaickBnaibBnaiBnahiiBnahhhhhBnahhBnaheBnaggerBnagawaBnafaltBnaeunBnadinBnadimBnadiaBnadiBnaddaBnacoBnacBnabviBnabraBnabiBnabBnaayBnaawpBnaarayBnaamBnaahBnaaawBnaaahhhBnaaBmzwandilBmyyyyBmythicBmyselfBmyseflfBmysefBmyraBmyplayBmypatronusisyBmyntraBmynamarBmyerBmydayBmybiBmyasiaBmxtxBmwuahahahahaBmwuahBmwahBmvpBmvmtBmuzBmuvaBmuttBmutraBmuthufuhkazBmuthafukB
muthafuccnBmuthafuBmutatBmutantBmutagenBmustafiBmusnadBmuslinBmuslimbrotherhodBmuslimatBmusliBmuslemBmuslBmuskimBmusketBmuskBmusjidBmusiiboBmushroomBmushlimBmushiBmuscularB	musalmanoBmusalmanBmusaBmurriBmurrahBmuricaBmurdochBmurdocBmurdaBmurdBmurataBmurariBmuralBmurBmunichBmunchkinBmunchinB
munafiqeenBmumtazBmummerBmuminBmuluB	multitaskB
multistoriBmultiplicadorBmultipliBmultimillionairB
multimediaBmultanBmulsimBmulimBmulfordBmulatoBmulataBmukhtarBmukBmujraBmujiburBmujibBmujahidBmuimlimBmuhibbudhinBmuhfckaBmuhcBmuhammadaliBmugshotBmugloB
mugglebornBmugglBmugginBmuggerBmuggBmugalBmuesliBmudrerBmudlimBmuddlBmuddaBmudarBmudafuckBmucuBmuckbangBmuckBmuchliBmuchaBmubarekBmubarakB	muahahahaBmuaBmtlbBmsulimBmsuB
msthompsonBmspBmsnBmskeBmskBmsbncBmsamaBmrwBmruderB	mrrglgrglBmrobinBmrnBmphBmozlimzBmowinBmowhorBmowBmovimentBmoviegemBmovB	mouthpiecBmouthbreathBmoustachBmouseyBmournerBmourabitounBmountiBmoufidBmotoristBmotoBmotionBmotifBmothersaBmotherliBmotherfuckingbabydaddiB	mothefuckB
mothafuckaBmothaBmotelBmotdBmotBmosttttBmossBmosquitoBmosherBmoscowBmorsiBmoroBmorleyBmorganaBmorethanBmorenitoBmorenitaBmoreeBmoreB	morcheebaBmorbidBmoranBmoplahBmoplacBmopeBmooviBmootiBmoooooviBmoooooorBmoonchildrenBmoolaBmoochBmontwoodB
montgomeriBmonstrosBmonoxidBmonopricBmonokumaBmonochromatBmonobrowBmonoBmonikaBmonicalewinskiBmongolBmongodbB	moneyslavBmonetisBmonekeyBmonehBmonarchiBmonarchBmomzBmomoB	mommmmmmmBmolyneuxBmolviBmolotovBmolochBmollB	molindumpBmoleyBmoleskinBmoldiBmolaBmohonBmohomBmohhamadBmohhabatBmohatamaBmoghulBmoeBmodulBmodtalkleakBmodicumBmodernisB	modelesquBmockingbirdBmochoBmocBmobagBmoazBmnkBmnetBmnepBmmusiBmmoBmmmmmBmmmkayBmmeBmlkstatuBmlgBmlecchaBmkiBmkaBmjrBmjolnirBmjbBmjBmizBmiyanoBmiyanBmiyabiBmittiBmittenBmitchiBmitchBmitakBmitB
misygonistBmisuhBmistookBmissunderstandBmissuB	missonariBmisslB	misrepresBmisreadBmisogygnistB
misogonistB
misimpressBmisidentifiBmishkinB	miserabldB	misdirectB
misconstruB
misconductBmischievB	miscellanB	misbelievBmisbehaviorBmisattributBmisappropriBmisalignBmisablBmirzaBmiraBmirBminusculBminttBmintaBminniBminkBminjungBminjBminivanBministrBminiorBminimoBminimisBminigamB
minichettiBminiBminhwanBmingBminerB
mindlessliBmindiBmindedliBmindedBmimosaBmimimiBmimicBmilwaukeBmiltonBmiltaBmilogBmilnB	millionthBmillimetBmillettBmillenniumjobhuntBmilleniaBmilleniBmilkmaidBmilionBmiliBmilharBmileagBmildestBmildBmiladiBmikuBmikhailBmikeyBmigoBmignognaBmidwestBmidtermBmidstBmidiotBmideoBmiddleinformBmiddayB	microphonB	microbladBmickiBmickBmichonnBmichaelaBmichBmibBmhmmmBmhaBmgtBmgrBmgmtBmfwBmfingBmferBmexBmewtwoBmeverB	metrosexuBmetropolitanB	metropoliBmetricBmetrBmetooBmetokurBmeteorBmetamorphosiBmetabolBmetaBmestizoBmessicanBmessianBmesjidBmeshiacBmerylB	merrylandBmerrelBmeronBmerkelBmeringuBmeridenBmeredithBmerecBmerchantB
merchandisBmerchBmercerBmeraBmenzB	mentirosaB
mentaliltiBmentainBmenonBmenjawabBmenjadiBmeninstB	menininhaB
meningbirdBmeningBmeninB
menacingliBmemskskBmemorisBmemonBmementBmemebBmemaBmelvinBmeliBmelhorBmelaninB
melancholiBmekBmejorBmeisjBmehreenBmehmoodBmehmetBmehhBmehfoozBmegatronB	megatokyoBmegaBmeetupBmeetttttBmeerB	meenatchiB	meenakshiBmeekaBmeeeeeeBmeeeBmeechBmedusaB	medschoolBmedievBmediatBmeddlerBmeckelB	mechandisBmeccahBmeatheadBmeanaBmeaganBmeaBmeBmdzB	mcphersonBmcnBmcmahonBmcleodBmckinnonBmckinlayBmckeldinBmcintyrBmcgruderBmcfattersonBmcdonnelBmcdonalBmcdavidBmcdanielBmcconnelBmccollumBmcclainBmccarBmcaopBmboBmazzacalangoBmazhabBmazeBmazakBmazaaqBmaysB	mayonnaisBmayonaisBmayhapBmayerBmaxwelBmaximoffBmaximBmaxhenriBmawnBmawBmauroBmaulitBmatutinoBmattiaBmattherBmatterrBmattelBmatronliBmatrilinB
matrilaterBmatriculBmatouBmatotooBmatlabBmathiBmathematBmatchmakBmatariaBmatangiBmatamoroB
masterchefBmastaB	massinoriBmasratBmasoomonB	masochistBmasmamahBmaskerBmasihB	mashallahBmashabaB
mashaallahBmaseratiBmaseehB	mascarponBmascaponBmascBmasahifBmaryannBmaruBmarshmallowB
marscarponBmarrowBmarriottB	marrakechBmarquiBmaroorBmaroonBmarnBmarkuBmarklB
marketplacBmarisolB	marionettB
marginalisBmargBmareepBmareBmardegiBmarcuBmarcottBmarcherBmarcelBmarcBmaraudBmaracaBmaqsadBmaobanBmaoBmanusmrBmanuelBmantiBmanrikBmanpowBmannnnnBmanniB
mannerbundBmanmadBmanletBmanillaB	maniktalaBmaniggaB	manifestaBmanifestBmanhuntB	manhattanBmanhatBmangoB	mangaluruBmangalorBmangadexBmaneraBmandurahBmandemBmandanBmandalBmanchildrenBmanboxBmanbijBmanbabiBmanafoBmammalBmamiBmamakBmamaeriBmaltreatBmaltratoBmalonB
malnourishB
mallapuramBmalkiaBmalicBmalibuBmalfoyBmalesiaB
malappuramBmalamB	maladroitBmalachiBmalabarBmalaBmakotoBmakoBmakkaarBmakkaBmakimhBmakgowaBmakeoutBmakelBmakanyaB	makandiwaBmajoritBmajhabBmairBmaiorBmaintB
mainstreetBmainlinBmainlandBmailerBmailboxB	maiduguriBmaidenBmaidanBmaiconBmahwambiBmahrezBmahnBmahmutBmahmoudBmaheshBmahelaBmaharajaBmaharajBmagigB	magicshowBmaggotBmagentBmagaziB	magadummiBmafBmaenBmaduraiBmadtBmadnessBmadmanBmadinahBmadiBmadhavB
madharchodBmaddoxBmaddowBmaddhB
maddddddddB	madddddddBmadarshaBmadarsBmadarasaBmadalangB
madagascarBmadaanBmacroaggressBmacroBmacquariBmaclinBmacklmorBmackemBmackBmacewanBmacabroBmacabrBmabriB	mabnfsnimBmabeyBmabelBmaanBmaafuckBmaafinBmaafiBmaaeB
maadddddddBmaaanBmaaamBmaaaddddBmaaaadBmaaaaaadBlysmBlynzeyBlyndseyBlyndonB
lymphedemaBlydiaBlydBlybiaBlwjBlvoeBlvBluvliBlutheranBlutfuhrBlutandoBlutBlusterBlushlinoBlushBlupuBlunnBlunkheadB	lunchroomBluncheonettBlunchablB
lumberjackBlulzBlulwhorBlulluBlularoBlulBlukiBlukakuBlukBlugarBlugBludicrBlucrBluckiestBlucifBlucicBluciBlubangBluanaBltteBltmlBltiBlteBlsuBlrngBlpmBlpBlozzaBloydBloyalistBlovinhfBlovettB	loveliestBloveliBlovegoodBloveeeeBloveeBlovedayB	lovecraftBlovatoBloutishBlousiBloungBlougBlotsBlotrBlotionBlorenaBlordtBlorainBloraBlopsidBlopezBlopBloosliBloosenBlooootBlooooovBlooooooooovBlooooooooolBlooooolBlooneyBloonaBloonBlookekBlonleyBlongtimBlonghornBlonesomB	loneliestBlondaBlomeBlolzzBlolxBlolwutBlololololololBlolololololBlolllBlolliBlollerskBlollBloliBlolfunniBlokraBlokalBloiBlohmanBlohBloguBlogonBlogiBlogarBloeBlocutorBlocomotBlocohBlockoutBlockheBlochielBlocBlobsterBlobakBloatBloaneBlmyfjjBlmmfaoooooooooBlmlBlmkBlmgtfiBlmfaooouekqjbwkwjdBlmfaooooooooooooooooooooooooooBlmfaooooooooooooooooBlmfaoookBlmfaolBlmfaaooB	lmbooooooBlmboBlmaoooooooooBlmaaoooBlmaaooBlloraiBllfB	llewellynBllegarBllegaBllcBllamBllabossBljBlizziBlizardBliyaBlivrB
livingstonB	livetweetB	livejournBliuBlitualBlittulBlittneyBlittlerB	litteraliBlittaniBlitralBlitmuBlitllB	literaturBliterariBlitaniBlitaBlistennnBlisteninBlistaBlissenBlisinBlisencBlisenBliraBliquidBlipglossBlipdubBlintBlinnBlinimasaBlinesmanBlinekarBlinebackBlindoBlinaBlinBlimpiezaBlimpB	limitlessBlimeBlimbBlilniggaBlilmillieonBlillBlilianBliliaBlilgirlBlilacBlikodBlikinBlikhaaBlikhBlikewayBlikerBlikeablBlijiBliikBliiBligtnBlightweightB
lightskintB	lightfootBlightenBlightatenearBlighBligeriinBligarBligadoBligadaBligaB	lifeguardBlievenBlierBliekBliefeldB	lieeeeeeeBlickmykakezBlickitiBlickismBliceuBlicencB	librarianBlibralBlibidoBliberationistB	liberandoBlibbuBliaisonBliabilBliaBlhdabBlhcBlhBlguBlgbtqiaBlgbtqiBlgbtqerB
lgbtphobicBlgbtiqBlgbtiBlfmsmssmBlfiBlezBlexiconBlewinskiBlevouBleviticuBlevisonBlevantBleudBlettucBlettinB	lettermanBletangB
lesbianestBlenniBlennBlenjaBleninBlenientBleniBlengthiBlengkapBleneBlendoBlemonadBlemieuxBlementBlembreiBlemaitrBlelouchBleloBlelandBleitchBleilaBleiaBleiBlehBlegworkBlegitestBlegionBleghornBleggoB	legendariBleftwBleftismBlefistBleerB
leepingpilBleedBledgBledapplBleatheriBleashB
learnanythBleafletBleaaastBldskdlkBldoB	ldfjsldjfBlckBlcdBlbgqtrxucupBlazloBlayupBlaymanBlayiBlayaboutBlayaBlaxBlawsonBlawmanBlawlorBlawlBlawdogBlawddddBlawdBlavignBlaughingstockBlaughingggggBlaugBlauerBlaudBlatuffBlatterliBlatleyBlatinexB
lathichargBlathamBlatexBlassiBlassBlaskarBlashkrBlascoBlarpBlarfBlaraBlaquilaBlapidBlapiBlankiBlangerBlanezBlandlordBlanchBlamountBlamoBlammiBlamerikaBlamentBlamboBlambastBlaluBlalaBlalBlakelandBlaimbeerBlaihBlaguBlagoBlagianB	lagerrettBlagemBlaganBlaffinBlaffiBlaenBladytindBladylikBladyaB	ladkiyaanBladderBladdenBlacklustBlaciBlaceyB	labyrinthBlabllBlabeldBlabBlaalchiBkzufrmqvBkyungsooBkyunB	kyriarchiBkyouBkyloBkykeBkykBkybarBkwokBkwkwkwBkwkwBkwkB	kwjbhdbybBkweefaBkwarzemBkvBkuwaitBkutriyaBkutchenBkushnicBkuruluBkurukaBkuroBkupwaraBkunuhayBkuntsiBkunnemanBkumaraswamiBkumaoniBkullasegaranBkufunguaBkufiriBkudratiBkudlowBkuchhBkublaiBkubeBkttfgotBktnyaBkthxBktBkshanB	kryptonitBkrogerBkroBkrmhxBkrloB	kristiinaBkristenBkristanophobiaBkrewellaBkrengBkremlinBkrbkBkrazyBkralhoBkraakBkqBkpoppiBkoyaBkotaBkotBkosomBkorvinBkorraBkoroBkoraaBkoppBkopekBkopalaBkoonB	koomuttaiBkoofaBkonkaniBkongkekBkonBkomedianBkoloBkokBkohliBkohlBkofoBkoferimBkodakBkochBkobachBknoyBknowwBknoooowBknolgBknoledgBknockerBknoccBknickB	kneewgrowBkneedBkneckBkneB
knblkknaczBkmvBkmslBkmrnBkmlBkmkkiupBkmaddockBklyeBkluxBklungBklossBklomanBklodBkleptocraciBklavanBklauBkkklanB4kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkB)kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkBkkeBkiyokoBkiyoBkitnaBkiteBkissyfacBkissinBkiskoBkisiB	kishimotoBkirstenBkirkBkippBkinshipBkinoBkinneyBkingstonBkinfolkBkindestBkindessBkimtuBkimoraBkimmiBkimmelBkimiBkiltBkilometrBkilluaBkillongBkillinBkillerblondBkillariB
killallmenBkilladelphiaBkileyBkikiBkikBkiiiiiiiindaBkieraBkidddBkickvicBkickoffBkickassBkiccBkibblBkhuneBkhulkrBkhudaayiBkhudBkhtmB	khorsabadBkhonaBkholkBkhloeBkhiljiBkhelseyBkheitirBkheerBkhawarijBkhatrBkhatimBkhatiB	khashoggiBkhasamBkhameiniBkhallaBkhalistanioB	khalistanBkhalidBkhaleBkhaldunBkhakiBkhakarBkhabaBkhaBkgyhxBkgbBkfcBkeyinB	keychcainBkettlBketauanBketBkessockBkeshiBkeshaB
kesenanganBkeruhBkerriB	kernighanBkernerBkeralauBkenichiBkengkangB	kendjdnndBkendalBkenapaBkenaBkempBkeluaqBkelsonBkelleyBkelaBkejriwBkeivanBkeitoBkeishaBkeiBkegBkeffiyahBkeeziBkeenBkeemshaBkedBkdsalBkdsaBkdndkskBkdBkchBkbhiBkbcBkazBkayungBkayoBkaynBkayleyBkayleBkayakBkayadaBkawwaliBkawaiiBkautilyaBkatzBkattarBkatsinaBkatrinaBkatnissBkatlBkathleenBkataBkasumiBkasmirBkasihanBkasihBkashuvB
kashtakariBkashmiriyatBkashmBkashiBkasasbehBkarynBkarwaBkaroooB	karnatakaBkarliBkarkBkarishmaBkarinBkardoBkardiBkaraokBkaramaBkaraBkappaBkapoorB	kapernickB
kanyewesttBkantBkansaBkanjarBkaniyBkanikaBkangBkanamBkamuzuBkammaBkamillaBkamaBkalmaBkalishnikovB
kaliporniaBkaliBkaldfBkalauBkalapB
kalagulabiBkalaBkakubiBkakawaniBkakaBkakBkaivaxBkaitlynnBkaisiBkainB	kailanganBkailahBkaiaBkahmiriBkahitBkaharapBkahanBkahaBkageyamaBkafkaB	kafirmeanBkafferBkafeerBkafeelBkaeBkadhabBkadangBkadafiBkaceBkabirBkabheeBkababBkabaBkaaviBkaashBkaapuBkaaevBkaabaBjykfqiBjyeshthaBjyaqhuBjyadaB
jwprimetimBjuziyaBjustuBjustifyBjusticiBjustiBjussiB	jurisprudB	jurisdictBjurayjBjuraBjupBjuntBjunsuBjunoBjunkyardB
juneteenthBjunchanBjunBjumpsuitBjumpiBjummaBjumlaBjumblBjuliuBjulfkarBjuleBjugadorBjugaBjudoBjudismBjudiBjudgethBjudeaBjuddBjudahBjudaeismBjubileBjuanBjtB	jskkskdkdB	jscxmanniB
jpurnalistBjpostBjoycBjoviBjovanB
journelistBjotBjosiBjoshuaBjosephBjorjaBjordonBjorBjonnaBjonghyunBjonesinBjonathanBjonaBjolsonBjolliBjoliBjokinBjokBjohrielBjogendraBjogandoBjoenastiBjoderBjodeciBjocelynnBjocelynBjoannaBjoannBjnuBjntwoBjnganBjncoBjmrmiBjmantBjmacBjlawBjkrBjjongiBjiyaadBjitsoonBjitnayBjitaBjitBjiraBjinyoungBjinnaBjingoistBjinBjimiBjijaoB
jihadwhichB	jihadmeanB	jihaddistBjihaadiBjihaadBjigabooBjigBjiffiBjibeBjhukBjhsdjfBjhrcnBjhootBjhadevBjhBjezziBjezzBjewriBjetstarBjesusthiB
jesusfigurBjesuitBjestBjesselBjesoB
jerusalemaBjerrodBjericaBjeremiBjeprodiB	jeopardisBjeongBjennaBjenlisaBjenB	jellyfishBjellBjelavBjejeBjeizaBjehovahBjehaadBjeffriB
jeffgieseaB	jeffersonB
jeeeeeeeezBjeeBjebuBjebelBjeBjduBjdoiasjiodjaodjsojoBjdnoBjdjsjBjcyoktjgBjcbBjbrjbBjblBjazBjayegaBjaydenBjaycenBjayapBjawnBjawiBjavuBjavaBjauhBjatBjassBjasandBjarrotBjarelBjarabuluBjaraBjapBjaoBjankiBjaniBjaneuBjanetBjanelBjandiB
janambhumiBjanabBjamzBjamrBjamirBjamicaBjameiBjameelBjamaicaBjalinBjaldiBjakoBjaketappBjakearBjakaBjajiaBjajajajajjaBjajajajajajjaBjajajajajajaBjajajajBjajajBjaimBjailhousBjaheelBjahatinBjahannamBjaguarB	jagannathBjagainBjafflBjaehyunBjaeheBjaeBjadhBjadenBjacquBjackinBjackboyBjackboxBjackbootBjabhatBjaaBizzardBizukuBizlemB	izetbegovBixsystemBiwrestledabearoncBiwcBiwannaBiwanB
ivvimdxmimBiviBivfBivankaBiusBiumlBitziBitscaitlinhelloBitnaBitllBithBiterBitchBitasdepolancoBisttBistamaBissokayBisrahelBisraaBisrBismamB	islmacistB	islamophoBislamofascimBislamofanatBislamicterrorBislamicBislamforniaBislamasylumBislamalBislaamBiskaroBisinyaBisinBisilonBishwaraBishlaaamBishkurBishidaBishhBisasbadB
isalmophobBisabelBisaaiB	irritandoBirresponsibiliyB	irresponsBirreligiBironpoBirinitaBirinaBirfanBirenBireBircBirannBipobB	ipagahasaBiotaBiontBionoBionnBionistBiojkBinwaBinvoluntariBinvariBinutilBinurBinundBintrudBintroductoriBintrinsicliBintriguBintrepidBintramurBintoxicBintonBintodayB
intituladaBintimaciBintimB	interventBintervBinterstB	intersectBinterpersonB	internettBinternationaB
intermarriB	interlinkBinterestingtBinterestingliB
interesantBinteresBintentaBinteligB
insurmountBinsurgBinsultenBinsultaBinsulBinsuccerBinstilBinstatBinstantiBinsperBinsomniaBinslavBinsipidBinsincerB
insignificBinsigniaBinshoBinseparBinseguroBinsectBinscribB	insaniyatBinsamamBinsafBinquiriBinquestBinoppoBinoffensBinoccBinnumerBinnnnterestBinnnnnBinnnnBinnitBinnernetBinnaBinnBinmnfeiqBinlinBinlandBinkbunBinkBinjunctBiniestaBiniciaBinhabitBingresBingrainBingloriBinglishBingetBingayBingamBinfusBinfuriatingliBinfrntBinfosecBinforcB	infomerciBinfilterBinfamBinezBinexpensB	indyrctliBindustBinductBindsetBindisputB	indiscretBindioB	indieheadBindianmuslimBindianapoliBindianaB	indescribBindaiBindabaBincubB	incrementBincreasingliBincouragBincorporB	incompletBincompatBincludinBinclinBinclBincarnB	inbetweenBinanimBinadequBinactBinaBimvBimpropB	impromptuBimplosBimplayingwarcraftB	imperfectBimpediBimpatiBimpairBimmoBimmersBimmediatleyBimmateriBimhoBimgB	imfunkydeBimessagBimbtalkBimbedB	imbarrassBimahB	imaginoooBimaginarBilyyBilyttttBiluBilonggaBillustriBillusBilluminB	illumantiBilliBilletriBilletrBillahaBillahBillaBilhamBilbBilangBikkkkkkBikhlasinBikeBikdB	ikayalamiBijahBihopBiheardBihavBihBiguessBigualBigrantBigorB	ignoramusBignominiBightBiggnorBigbolandBiftarBificadoBiffiBifffBifactBidylanBidubbbzBidotBidoloBidolatriBidntBidmBidlibBidlBidkidkBidiomatBidiologB	idiocraciBidibalaBidiaBidgfBidgcBidfwuBidfkBideologuBidentitarianBidentifBidefkBideatBideadBicuBiconicbelieblovBichokBiceprincBicebergBicatchBicalBibraBibakaBibaBiaskB
iantheboboBiainBiafBiacademiBhzkeBhyungBhyunBhyukBhysteriaB	hypoistixBhypocrsiB	hypnospacBhyphenBhyperventilB	hypersexuBhypersensitBhymnBhymBhyismBhygienB	hygenisitB	hydroplanBhydratBhydeBhybridBhwtBhutBhustlerBhustlBhuskBhusaynBhusainBhurrdurrBhurrBhurleyBhurdlBhurBhuntsmanBhuntiBhunkBhunhBhungovBhunanBhumzaBhumptiBhumpBhumnBhummerBhumilharBhumilhaBhumarBhumanistBhumanatmBhumaitiBhuluBhukwBhujiBhuitBhuiBhuhuhuhuBhuffpostBhuffinBhufB	hueruparuBhueonBhuehuBhudaBhudBhuckabeBhuaweiBhuahuhaBhuaBhttpBhthBhtemBhsuahsuahushauB	hsuahsuahBhstBhsnBhsmBhseBhsauhauauhsuahusaBhrzBhrightBhrajaBhowelBhoustonB	houseworkBhousewifBhousewBhouserulesonB
houseguestBhottiBhotpotBhotlinBhotiBhotchBhotcakBhotbBhostessBhosseinBhospicBhoshiyarBhoseBhosbalahBhorsemanBhorndogBhormonBhorizonBhoracBhopsinBhoppinB
hopelessliBhopelessBhopedBhootiBhootBhooserhausinBhoorayBhoopinBhoopB	hooooooliBhooooooBhoooBhoolaginBhooknosBhoogliBhoodlumBhonkB	honeymoonBhoneBhomossexuaiBhomosexualagendaBhomosexBhomogenBhomoerotBhomocidBhomobphB	homewreckBhomesickBhomerBhomeownB	homegrownB
homaysssssBholtbiBholsterB	holographBholmB
hollyweirdBhollowBhollistBhollidayBhollaBholistBholierBholddddBholcaustBholBhogwaBhoggaBhogeBhogaBhogBhodoxiB	hodontistBhockBhobbitBhoarBhoagiBhoaBhnameBhnBhmuBhmphBhmorBhmmmmmBhmareBhkpBhkerBhkBhjBhiyokoBhiwatariBhiveBhitmanBhitmakBhitechwatchBhitchBhistroyBhissiBhispBhishBhisbdumbassBhirerBhippocrBhintonBhinkBhinijosaBhinghamBhinestonB	hindutwaaB
hindutvadiB	hindutavaBhindutavBhinduonB	hindsightBhindrancBhindhuphobiaBhinataBhinaBhimanBhimalayaBhimBhiltonBhillaryclintonBhilgaB
hildabeastBhilarBhikBhijraBhijinkBhijabiBhihiBhigleyBhightBhighlandBhigashikataBhiffiBhierarchBhidutvaBhidnuBhidingsomethinginhumanBhiddnB
hiddlestonBhickeyBhicieronBhibiscuBhianBhhxrBhhnBhhhaBhhhBhhahahBhgiveBhfkjfdB
hezboallahBhextalBhexaBhexBheviBheterophobiaBheterochromiaBhesrBherreraBherpiBheroismBheroicBhernerBhermentBhermBheretBhererBhereinBherderBheraldBhensleyBhennessiB	hennesseyBhendrixBhendricksonB	helveticaBhelsinkiBhelpinBhelmerBhelmBhelluvaBhellscapBhellooooB
hellllllllBhelllBhellbentBhelenoBhelenBheirBheinzBheinBheiiiBheiBhehehehB
hegemonistBheftiBheeeyBheeeeyiBheeeeeyyyyyBheeeeeBheechulBhedgehogBhedboBhecklerBhechoBhechBheavyweightBheattBheathBheaterBheasternBheastBhearsayBhealiBheadwayBheadspacBheadshotB	headscarvBheadlockBheadlessBheadhuntBheadhitsdeskBheaderB	headdressB	headcoachBheadbutBheadbandBheadacBhdkshajdkasdhakjsdhkjBhdjsjsjBhdahB
hdaaaaaaayBhdBhbrBhbiBhazratBhazelnutBhazBhayyyBhaywirBhaynBhaydenBhawlBhawasiBhawaBhawBhavrBhaviBhavenBhavemBhavdhdbjBhauweiBhaulBhauhuhaBhauhauhaBhauhauaBhauhaBhauahuahauahuaBhauBhattttBhattBhatsunBhatredBhatiBhathisaouroBhathiBhathealBhathBhatenBhatanBhastiB
hasselbeckBhassanenBhaskelBhasbeenBharunBharukaBharuBharshuBharrowBharrasssBharpBharmonBharmanBharkatBharijanBhariamoBhardyBhardshipBhardenBhardassBharcBharbourBharbaughBharasssBharaldBharaBharBhappyyyyBhappendBhaplessBhaphazardliB	haphazardBhapBhanzoBhanyaBhanumanBhansonBhanovBhangupBhangulBhanguBhaneyBhanefiBhaneBhandwrBhandoutB
handlelessBhandedliBhandedBhandcuffBhandcufBhanbalBhanafitBhanafiBhamzaBhamsterBhamptonBhammockBhammiBhamilB	hamikdashBhamidBhamdiBhamarBhalwaiBhallowBhalliBhalkettBhalifaxB	halfricanBhalalaaBhalaalBhalaBhalBhakeemBhakBhajjajBhajBhaiyaaBhaiwanBhairstylistBhairrrrrBhairmanBhairflipB	hairdressBhaileyBhaikyuuBhaigiographBhahxjdjckdckBhahhahhB
hahahhhahaB	hahahhahaB	hahahahhaB@hahahahahhaahahahahahahahahahahahahahahahahahahahahahahahahahahaBhahahahahhaB hahahahahahahhahahahahahahhahahaBhahahahahahahhahahahahahahahhaB)hahahahahahahahahahahahahahhahahahahahahaBhahahahahahahahahahahahahBhahahahahahahahaBhahahahahahaaB	hahahahahB
hahahahaaaB	hahahahaaBhahahaahhahahahaBhahagaB
hahaaaaaaaBhahaaaBhageBhagBhafterBhafBhaeBhadeBhaddB	hackernewB	hackathonBhaciendoBhaciBhacerloBhacBhabloBhablandoBhablaBhabibBhabiBhabeitBhabadBhabBhaazBhaahahhaahahhaBhaagiaBhaaahaaaBhaaahBhaaaatBhaaaahaB
haaaaaaterBhaaaaaaappiBhaaaaaBhaaaBgzfgBgyxcrmuBgyroBgypsiBgymsharkBgylBgyaanBgwangBguzzlerBguylinBguurllBgutterBgutaB
guruduwaraBgurubaniBgurrrlBgurleyBgurkaBgurdwaraBguranteBguragBgunshotBgunpointBgunfightBgunbangBgunaBgumwrappBgummiBgullBgulamBgujratBgujaratiBguitlessBguitBguilloriBguidancBguettaBgubmentBguardaB
guantanamoBguBgtgBgtdBgsmB	grungiestBgrrrrrrBgrrrrBgrrmBgrowiBgroveB	groupchatBgrossliBgrossestBgroanBgrizzliBgrizzBgrittiBgritamBgringaBgrimmBgrimiBgrimeyBgrimacBgrifterBgriffithBgridBgreyishB	greyhoundBgretchenBgremlinB	greenwoodB	greencardB	greenbookBgrecianBgreatestpresidBgreatdayBgrdBgrazerBgraviBgratuitiBgratitudBgratipayBgratifBgraterB	grassrootBgrassleyBgrapevinBgranularBgranniBgranitBgraniBgrangerB
grandnightBgrandmomBgranderBgranBgrammatBgramerBgrainiBgrainBgrahibBgrafterBgradualB
gradkowskiBgraciousBgraciouBgraciaBgrabberBgppBgpgBgozaBgowriBgowBgovenBgougBgottabBgotshaBgotoBgothicB
gothenburgBgotgBgotaBgoswamiBgostoBgosteiBgossipiBgospelBgoshhBgorlBgoriBgoreyB
gorakhpuriBgorBgopherBgoosiBgoooB	goonsquadBgoonerBgooglinBgoofBgoodonBgoodgoodB	goodfellaBgooderBgoodbookB
goobergrapBgontoBgonnBgongBgonerBgomorrahBgomataBgoltzBgollumBgolgothaBgolemBgoldmanBgolBgokuBgoiBgodraBgodparBgodmothBgodlikBgodfathBgodessB	goddamnitB	goddammitBgobshitBgobiernoBgobblBgobarBgoaterBgoaliBgoadBgoaBgnosticBgnnaBgmfuBgmailBglutenBgloverBglossBglockenspielBglockB
globetrottBglobBglittlBglitchiBglewBglennB	gleefulliBglcBglazeBglauconBglasgowBglandBglancBglampBglamorisBglamBgladliBgladiatBgladeBglBgivevaBgiveawayBgivBgituBgitmoBgitaBgistBgirlishBgirlbossBgiraffBgirBgiongBgioBginsburgBginoBgindaBginawaB
ginatripanBgimpBgimmiBgimB
gillibrandBgilgitBgilbBgilaBgigwisBgigoloBgigaBgiddiB	gibraltarBgibbonBgianinaBgiBghurlBghumBghrahBghoulBghostliBghosterBghorlBghoriBghislainBghazniB	ghaziabadBghauriBghatafanBghastliBgghuwBggcBgfuelBgeuB	gettyimagBgettaBgetitngBgetinBgetawayBgesticulBgestatBgermBgerardBgeraltBgeotagBgeorgegambninoBgeordiB	geologistBgeoffBgeoB	genuflectBgentuzaBgentliBgentlerBgentlBgenociadBgenoBgeniusB	genitaliaB
geninuenliBgengorohBgengBgenderfluidBgendBgeminiBgemeaBgelsinBgellarBgeleceksB	geladeiraBgeingobBgeezerBgeekwirBgeedB
gedownloadBgearheaBgdmqBgdmBgcuBgcseBgcoBgccgcBgbrBgbmBgbgakmB
gaystarnewBgaypornnBgayestBgaydarBgaybashBgaybBgayaBgawarBgavinBgaurenteBgauravBgaumutrBgaullBgaudiBgaudBgauBgatsbiBgatoBgasppBgaslitBgaskBgaseBgarotaBgarnerB	garfunkelBgarfieldBgarblBgaraukanBgarBgapeBgaokaoBgaoBganlBganjaBgangstaBgangrapBganeshBganderBganadoraBganabaBganaBgampangBgamergoBgamepassBgamedevBgambinoBgalwanBgallowBgallopBgalleriBgallardoBgallaghB
galinheiroBgalentinBgaleBgalauBgalatBgalactBgakrBgakaBgajwaBgahdamnBgagoBgagmanB
gagahasainBgaffBgafBgadhBgachaBgabisaBgabbarBgaaaaahBfynBfymmBfymBfwuBfwordBfwhBfwBfvBfuxkBfuxBfuuuuuuuuuuuuuuuuuuuBfuuuuuuuuuuuuuB
fuuuuuuuckB	fuuuuuuckBfuuuuccckkkBfussiBfusionBfurorBfuriousBfuriosaBfurBfupaBfunnelBfunkiBfunfactBfundusBfunderBfundagelBfumeBfumBfultonBfullerBfukuokaBfukknBfukkBfukeBfukaBfujitaBfuiBfuggggBfugaziBfugazeBfuellBfuderBfuckwtfBfuckwadBfuckupBfucktonBfucksakBfuckongBfuckomgB	fuckniggaBfucklmaoBfuckkkkkBfuckkBfuckinhBfuckimgBfuckfacBfuckerrBfuckerdBfuckdamnBfuckdBfuckaBfucjimhBfucckBfuccckkkkkkkBfuccBfucBfubamaBftpBftomBftmtfBfteBfsuBfsjBfsfBfseBfrustratingliBfruitiBfrscBfrrrrrBfrostfirBfrontlinBfrontendBfromaniBfrjendBfritzBfristBfrikkenB	frijoletoBfrijolBfrighteningliBfrigginBfriggenBfrigB	friedrichBfrickinBfrickenBfreundBfreudianBfretBfrescuraBfrenziBfrentBfrenBfreindBfreguBfreemasonriBfreekB	frederickB	freakshowB
freakishliBfrazierBfrayBfraudlaB	fraudklinBfraseBfranxxBfranklenBfranjaBfrandiBfrancoiBfranciB	frameworkBfrailBfragrancBfragnancBfracturBfpcBfpBfozziBfoydnBfoxnewBfoutnBfoustBfotograficaBfotografBfotogrBfossilB	foryoupagBforsakenBforrrealBfornierBfornicBformsprBformigaBformerliBformaBforiegnBforgoBforgettBforgadaBforfathBforevrrBforevrBforeseBforeplayBforemostB	forefrontBforeeevBforcesargeraBforcecBfootstepBfootnotBfoothilBfootagB	foodstampBfoodbankBfoneBfondantBfonB	fomentemoBfomentBfomeBfolowBfollwerBfollowupBfollowinBfollbackBfoleyBfolderBfolauBfoistBfoiliBfoilBfoiaBfoghornBfoeBfodderBfockerBfockBfobiaBfmlBfmaBfluxBflutterBflusterBflurriBflunkiBfluidicB	fluidfluxBfluffiBfluffBfluentBflouritBflotuBflossBflorencBfloreBflogBfllwBflloydBfllfscBflipperBflippantBflintBflingB	flimsiestBflickBflewBfleuriBfletchBflemeBflemBfleckBfleabagBflbtBflawlessBflatteriBflatterBflareBflapBflannelBflanderBflaminBflamerBflamboyBflambeauBflakaBflaitBflagelBflabBflaBfkinBfkgBfkenBfkdBfkbulliBfjBfitrBfitnaBfiteBfishlipB	fishermanBfishbwoyBfischerBfirewalB	firetruckB	firefightBfiraqBfiquBfiqhBfionaBfinsubBfinstaBfinnBfinlandBfineeeBfindinBfinancialdominBfinalistBfinaBfinB	fillipinoBfilibustB
filesystemB	filehandlBfiilerdBfiiiirB
figureheadBfigtigB	fightingrBfifiBfifeBfiddlBfidayeenBfidayeBfidBficouBficaremBficamBfibrBfianceBffviimaBffiufjfjkijgngBffingBfevicolBfeudalBfethiyBfetchitBfestivalBferrogaysexBferriBferrariBferozBfernandBferbBfeomBfendBfenB	femshevikBfemistBfemisnnBfemenaziBfemboyBfemanistBfemakBfemaBfelstivBfelizBfelinoBfelicBfekuBfekiBfekBfeitoBfeistiB	feinsteinBfeinhoBfeetmanBfeelinBfeelignBfeeeelinngssB	feeeeemalBfeeblB
federalistBfedelBfeastBfearmongB
fearlessliBfearlessBfdsgjkhljksfBfdrBfdBfcukeBfctBfckdBfccBfcBfazeBfayazBfawnB	favoriteiBfavirotBfaultiBfatwahBfattuBfattestBfatterBfatteBfatshamB	fatphobiaBfatimaBfatiguBfathomB
fatherlandBfathBfatahBfataBfastttBfastenBfascilBfarzandBfaruquiBfaruqiBfarrightB	farrakhanBfarragoBfarquaadBfarnhamBfarmlandBfarkinelBfarizBfargoBfareBfarcicBfarcBfarakBfaragBfaphismBfaourBfanwarBfantinB	fantasistBfantasiaBfantanoBfantabulBfansitBfanpagBfanmailBfangBfanfictBfanclubBfancierBfanaccBfamosoBfaltouBfalterBfalsoBfalsidadB	falsehoodBfalloutBfallnBfalliblBfalgBfaleBfalconBfalaBfakewelBfaizalB	faithlessBfaisalBfairytalBfairfaxBfailanBfagwithBfagotBfagliBfaggotriBfaggotdBfaggitBfaggiBfaggaotBfaggBfaculdadBfaculBfactorhauntBfactophobiaBfactionBfacsistBfackbarBfackBfacistBfacialvideoBfaceybBfacetimBfacetiBfacetBfacerBfacemaskBfacedownBfacadBfabrayBfabolBfablBfabioerenannoraulgilBfaayyvB
faaaavoritBezraB
ezergovinaBezekielBezaBeyideBeyiBeyeszB	eyestrainBeyesightBeyeglassBeycBeyaBeyBexudBextraordinairBextraditBextrB
extinguishB
exteremistBexsistB	expulsadoBexprncdBexpriencBexpoundBexposinBexplosBexplB
expieriencB
experimentBexpendBexpeiencBexpectantliBexpctdB
expaaaaandBexorcisBexorBexonerBexoBexmplBexiBexhilBexfoliBexemploBexculpatoriBexclusionistB	excluindoBexcluiBexcluBexcitinBexcerptBexcercisBexceedingliBexceedBexceBexagrBewwjfnfnBewuBewrBewanBewaaaanBevryonBevrwhrBevriBevrBevolutionariBevolaBevokBeviscerBeviricitopluluBevilanglistBeviBeveyBeverywerB
everythintBeverythingggggggBeverythgB
everysinglBeveryomBeverbodiBevenliBevenknowB
evangelistBevangeliconBevacuBevacBeuyBeuxkckfdBeuropenBeurekaBeurasianBeuphemBeunwooBeunuchBeunBettBetnikBetiquettBethoBethanBeternoB
eternamentBestudarBestudantB	estudandoBestudaBestonianBestoniaBestherBestamoBestaduB
essstrasssBessencBessayistBesquinaBespoBespionagBesperoBespelhoBesparB	esmeraldaBesmBeslBeskimoBeskendBesiBesfuerzoBesekBeseB	escurandoBescuchBescribBescreviBeschewBescaladBerwinBervB
eruvadhrilBeruptBeruditBerstwhilBersonBerrywherBerrrrB	erradicarB	ermagahddBermBeritreanBeritreaBerikaBerikBericksonBerfBeretzBerbackBequsB	equestriaBepiscopalianBepiBephesianBepaBeomanB	envolvidaBenviroBenvelopBenufBentrepreneuriBentreBentouragBentjBentiretiB
enthusiastBenthusB	enterprisBentaoBensaioBenriquBenragBenquiriBenoughtB	enojoyongBenojaBenofBenochBenjotBenigmaBenhancBengraB
englishmanBenglandshirBengendB	enforcmntBenergisBenduBendrantBendiaBenderunB	endeavourB
endangermtBendangerBencyclopediaBencrustBencoursgongBencontroB	encompassBenclavB
encerrabanBencapsulBencB	enbiephobBenbiBenamoradizaBenamorBenakBenactBempurraBemphatBemperorBempathisBemojizBemmuhluBemmiBemmettBemirBemigrBemeryvilBemeriBemeraldBemefBemeB
embroideriBemboldenBemblemBembittBemberBembedB
embassidorBembarraBembargoBemangBelviBelvBelsiBeloquBelongBelonBelmoB	elmentariBelliottcBelliottBelliotBelliBellaBelizaBelitestB	elisabethBelisBelielBelicitBelfBeleventhBeleonorBelemBelectroclashBeldritchBelaborBekifsksjBekamBejectBejaculBeishBeintBeihtBeigerBeidhB
eichenwaldBeichelBeiB
ehrensteinBehoBehhhhhBehhhBeheeeeBeggplantBegaBefectoBefaBeerpBeeriliBeepBeendBeemBeejitBeeeeBeeediotBeeeBeebtiBeeaBedskiBedomitBedneyBedmondBedgewayBedelmanBeddBecxusBecumenBecuadorBecologBecmBechozBechidnaBecgBeccentrBecBebstBebouBeboniBebcBeaziB	eavesdropBeaueauBeattinBeatherBeatchBeastwoodBeastonBeasterncountriBearnestBearlBeagervilB	dysplasiaBdysphorB	dysenteriBdyndnBdylannBdyckmanBdxBdwyanBdwindlBdwBdvrBdvorkinBdviBdvdBduyenBduvidoBduvidarBduuuuudBduttBdustinBdustbinBdusronBdusrBdurriBduressBduratBdurantBduplicBduperBdunravenBdunnnnnnBdunkinBdunkBdungloadBdungeonBdundarBduncanBduncBdumpiBdumbshitB	dumbfoundBdumbaBdumasBdumarBduluBdullardBdulcetBduhhhhhhBduhhBduelBdudleyBduboiBdublinBdubiouBduanBdtsgcBdtrBdtiyBdtfBdssjsjBdsntBdrunksehBdrumpfBdrummerBdruggiBdrudgBdrossBdropeBdroopiBdroogBdrongoBdroidBdrmB
driverlessBdrillbitBdriftB	dreamcastBdrctBdrayaBdrawstrBdrawerBdrawbackBdraperBdrankBdramediB	dramaticaBdramaaBdragonitB	dragonbalBdraftiBdraenorBdrackoBdpmoBdpetBdoxxerBdowriBdowntroddenBdowntimB	downstrokB	downsouthBdownsiB	downrightBdownlincolnBdowniBdowneyBdoverB	doujinshiBdoujinBdoughtBdoughBdougBdoucheyBdoublespeakBdotzBdoterraBdoshitBdosentBdormirshBdormirBdormantBdormBdorBdopaminBdoorwayBdoormatBdoooooeBdoonBdookiBdoodzBdoodBdonnowBdonitBdongwooB	donghyuckBdonghaBdongerzBdongBdoneonBdonchaB	donatelloBdonaldtrumpB	donaldskiBdonaghiBdonaBdommBdominoBdomicilBdomeBdomB	dolphhhhhBdolliBdollardBdojoBdoidoBdoiBdoheBdograB	doggystylBdoggiBdoggBdogfoodBdogeBdogbotBdoethBdoerBdodgebalBdodBdocuBdockerBdocfindBdoaBdnpBdngBdneBdnddnBdmxBdmgBdmbtbffBdmbBdluBdleBdldBdkslsksmBdjskskBdjdkBdizendoBdiyaBdixBdivisionBdiviBdivestB	diverstiyBdiversionariBdiveragBditerimaBditBdisunitBdisuadBdistroyBdistrbutB	distorianBdistilBdistanzBdistantBdissolvBdissipB	disqualifB	disprovenBdisposB
disponivelB	displaypoBdispatchBdisorganB
disorderliBdisobediBdismembBdismayBdismalBdisjointB	disinformB
dishonestiB	disendorsBdisempowB	disekolahBdisdainBdiscutemBdiscustBdiscriptBdiscriminadaB
discriminaBdiscribB
discontinuBdiscomfoBdiscoBdisclosBdisciplinariB	disassociBdisarmBdisabusB	disabilitB	dirrectorBdiriliBdirigidaBdiretaB
diragatoriBdipwadBdiprofamBdiplomaBdinosaurBdinniBdinicccBdingbatBdineroBdinerBdineoBdinajpurBdinahBdinaBdimmBdimensBdimaggioBdimagBdillerBdiligBdilbarBdilawanBdikhtaBdikhaBdikeBdikahBdijilaBdijeBdigressBdigoBdignifiBdigbiBdigaBdifrientBdifollowBdificilBdiffrntBdiffrencB	differencBdiferentBdiferenBdifamaBdietariBdietaBdieselBdiesasBdiegoBdiedddBdidoBdidnotBdiditBdiddlBdidbtBdictionB	dictatoriBdickwadBdickwaBdickridBdickpicBdicklessBdickkkkkkkkBdickiestB	dickadefiB
dicitonariBdichoBdiceyB
diccckkkkkBdibulliBdibaBdiayBdianBdiametrBdialectBdiagramBdiagnosiBdiagnosBdiabolBdiabloBdhusmanBdhuashudsahudahsuBdhscBdhoniBdholaBdhiBdhhfBdharnaBdharmBdharamBdhandhaBdhakaBdhaBdgnBdgirlBdeyhBdewiBdewanaBdevoteBdevonB	devnagariBdevlinBdevinBdevilishBdeviancBdeviBdevestBdevelopmentBdevastBdeuteronomiBdeuBdetriotB	detractorBdetoxBdetonBdethronBdethBdetestBdeterrBdeteriorBdeterBdetastBdetBdestitutBdespotBdespositBdespilfarroBdeshBdesgraBdeseverBdesevB
deservedliBdeseoBdesentBdesecrBdesdB
descriptorBdescretBdesconcentraBdescobrissemBderwinB
derrrpppppBderrameiBderrBderpiBderpBderidBderelictBderekBderbiBderankBderamBderadicBderaBdeprecBdeppBdeposB
depoimentoBdepatBdeobandiBdeobandBdeoBdentBdenomBdenniBdenmarkBdenimBdenganBdeneBdendiBdencBdenajBdenaBdemorB	demoncratBdemolitBdemisBdementBdemenBdemarcoBdemaiBdelvBdeluxxB	delusionnBdelocaBdellBdeliverB	deliciousBdelicBdeliBdeleuthBdelectBdeleBdelcoBdelaBdejenBdejectBdejavuBdeixouBdeistBdeismBdeionBdeigoBdeiBdehzaBdefriendBdeformB	definetliBdefinetB	definatliB
definatleyB	defienceyBdeficitB	defiantliBdefiantBdeffoBdefffBdeffB	deferentiBdefenderBdefedndBdefactoBdeerBdeepuB	deeplylovBdeepdownBdeepakBdedinhoBdededeconstructBdecriminBdecriBdecrepitBdecreBdeconstrauctBdeclearBdeclarwB
declarandoBdecisonBdecirBdeciphBdeceasB	decathlonBdebugBdebonairBdeblasioBdebitBdebiBdebasBdebarkBdebaixoBdebBdeaunaBdeaththreatBdearliBdearestBdearbornBdeangeloBdeakiBdeafenBdeadtBdeadspinBdeadsetBdeadliftB	deadliestBdeadlierBdeaBddntBddlcBddddddddBdbzaBdbcBdayyyiBdayuummmBdayumBdaytonaBdaysBdayeshBdaydreamBdawwBdawudBdawoodBdawnBdawlahBdawlaBdawkinBdawahBdavitaBdavindBdavinaBdavidoBdavidmaurocesarricardoBdavaoB	datacentrB	dastardliBdastardBdassitBdasiaBdasaniBdarylB	darulharbBdarulBdarshanBdarrynBdarrelBdarmaninBdarkmoonBdarkenBdaringliBdarindaB	daredevilBdaquiBdaquelaBdapBdanmanBdankulaBdanishBdangeloBdanganronpaBdaneBdamontBdamondBdamonBdamoBdammmmnBdamadoBdaltonBdalrymplBdaleBdalalBdakotaBdaintiBdainBdaiBdahliaBdahlBdahirBdahhhBdagBdafuqBdafallenBdaewoodB
daemonlessBdaeishB	daechwitaBdaeBdadeBdadaBdacoitBdabiqBdabblBdabanBdababiBdaaaamnBdaaaaamnB
daaaaaaaadBczBcytheriaBcypruBcynnBcylindBcyberbulBcyanBcyaBcyBcxoBcxBcwykaBcuzzBcuuuutBcutletBcutiepiBcutesssBcuteeeeB	custodianBcustardBcursivBcurriBcurdlBcurcolBcuratBcuntriBcuntliBcuntishBcuntiB
cuntasauruBcunliffBcunBcumuoBcumpleaBcumberbatchBcumanBcultchaBculpaBculinariBculdaBculaBcukupBcuidadoBcuidaBcuiabBcuhBcufBcuentoBcudBcucumbB
cuccinelliBcuantoBctriBctmeBctimaBcsnBcsaBcryyyyiBcrysiBcrypticBcrybulliBcrunchBcrumpetBcrulitiBcruleBcruiserweightBcruelliBcrudB	crosswordB	crossroadB
crosscheckBcrossbreBcronBcroixBcrockBcrocBcroakBcritzBcritizBcritisisBcriticaBcristophBcrispiBcrisperBcriseBcrippenBcriouB
criminalisBcrimimBcriciumaBcriarBcrewneckBcresceuBcrescerBcreptBcremeBcreenBcreeBcredulBcredoooBcredoBcredentiBcrecerBcreationistBcreampiBcreakiBcrazyuaB	crazytownBcrawBcrasherBcraptonBcraneBcramBcrakkkaBcrakeB
craigslistBcraigBcradlBcrackpotBcrackpipB	crackjackBcrackinBcpimBcpiBcozinhaBcowelBcowardiBcoveriBcovBcouturBcountriesgovtBcounterculturBcounsulBcoumoBcoughtBcoughlanBcottenB
cottagecorBcostarBcosmoBcosmicBcosioBcosignBcorvinBcorvidBcorsetBcorsairBcorrosBcorroborBcorridorBcoronBcorolaBcornettB	cornbreadBcorkBcorinthianaBcorgiBcorganBcorenBcorectBcoppinBcopperBcopiouBcopiadoBcoperB
copenhagenBcootiBcooterBcoopBcoooolBcooninBcookoutBcookinBcoochiBconyawaBconwayBconvitBconvergBconvenB	conundrumB	contusionBcontroverseyB	controlinBcontribB
contrarianB
contractorBcontoBcontibutBcontemporariBcontemplBcontdBcontarBcontagiBcontaBconsumerBconstruBconstipB	constantiBconstB	conspirciBconsolidBconsidersmuslimBconsideradoB	conservatBconsentuBconsejoBconsecutBconscentBconsarBconorBconocidaBconocermBconnoisseurBconnivBconniptBconniBconmentBconmenBconleyBconkBconjunctBconhBcongressmuslimB	congressiBcongresoBcongratulatoriBcongratualtB
congratualBcongoB	conglomerBcongiB	confundemBconfrontatiBconfiramB	confidencB
confessionB	conditionB
condescensBcondescendingliB
concsiderdBconcoctBconclavBconceivBconcealBcomtinuBcomradB
compulsariBcompulsBcompressBcomprendB	comprehanBcomprBcomplimentariB	compliancB
completleyB
complaininBcomplBcompiliBcomphetBcompguytraciB
competitorBcomperBcompatBcompactBcompaBcomnunBcommutB	communtiiB
communistaBcommuniBcommumBcommonwealthB
commiunistB	comministBcomminBcommercBcommemorBcommeddiBcommanBcommadBcomittBcomeyBcomentBcomensaiB	comediennBcomecBcomcastBcombatirBcombBcomaB	columnistBcoltonBcolstonBcolossB
colorblindBcoloradoBcolonisBcolonialistB
colombianaBcolombiaBcolocarBcolocaBcolliBcollettBcolleguBcollegebratBcolleenBcollectivliBcollardBcollB
coleguinhaBcolegaB	colectivoBcolbiBcoitadoB
coincidentBcohoBcohnBcofaBcofBcoercivBcoeBcoddlBcocoonB	cockwafflB	cocksuckrB	cockroachB	cockpunchBcockpitBcockheadBcockboyBcocaBcoburnBcoburgBcobbBcobaBcnvBcntriBcnaBcmvquBcmoBcmgBclutziBclutzBclutchBclusterfuckBclusterBclungBclumsiliBcluBclowninBclowBcloviBclotBcloroxBclonkerBclodBcloakBclitBclipperBclipeB	clipboardBclinkBclincherBclickerheroB	clickbaitBclexaBclevlenBcleverliB	clevelandBclevBclericB	clergymanB	cleopatraBclenchBclemsonBclemB	clefthoofBcleaverBcleavagBcleatBclearerBclearancBcleanisBcldBclawBclaustrophobBclassismBclassierBclarksonB	claramentBclaptonBclapperBclapbackB
clandestinBclamorBclamBclaiBckerBcjiBcitruB	citizenriBcissexB	cishetdudBciscoBcirkeetBcircumscissB	circumcisB
circlejerkBcircaBcipokBcipiuBcionBcinoB
cinderellaB
cincinnatiBcinciBcimaBcilBcigarBcieBcicBciberneticoBciberBciaaBchyllBchuvaBchutyaBchurnerBchunaBchuheBchuckerBchubsterBchrstianBchronomB	chronologBchroniclB
chromebookBchromBchristoBchristmassiB	christlikB	christinaBchristiandomBchristendomBchristchurchBchristanBchrissaBchrislamistBchrezBchozenBchowkBchouBchotaBchosinBchoreographiBchoreoBchoreBchordBchoramBchoraBchoppiBchoppaBchootiyoBchookBchoogBchongoBchomoBcholaBchokerBchoijonghyunBchodronBchocciBchocBchobaniBchoadBchnageBchiwalaBchitownBchistB
chiristianBchipperBchintanBchinoBchingamientoBchincBchinamanB	chimpanzeBchimpBchimeraBchimeB	chillllllBchilliBchiliBchildmolestBchildlikB	childlessBchilBchikfilaBchikenBchikBchiiilBchiiB	chihuahuaBchifubuBchiekoB	chieftainBchieasBchickenshitBchickeniBchickaBchibaBchiaBchhodBchhayaBchhatB	chewbaccaBcheviotBcheviBchevBcheungB	cherrybelBcheritzBcheriBcherfenBcheongB	chemistriBchemBchelseyBchekhovBcheioBcheikhBcheiaBcheetohBcheetoBcheetB	cheesecakB
cheeseburgBcheerioBcheekiBcheeBcheddarBcheddB
checkpointBcheckoutB	chechnyanBcheBchdBchckBchayeB
chauvinistBchaunaseBchauhanBchaudhriBchauB	chattyazzBchattinBchattiBchatterBchathamBchateBchataBchasmaBchaserB	charismatBcharicBchargesheetBchargerBcharcoalBchaquetaB	chapstickBchaplainBchanniBchaniBchanelBchandraguptaBchandoBchandlerBchandB
chancellorBchampionshipBchampBchamouBchamoB	chameleonBchamchaBchamavamBchamanoBchamandoBchallangBchallBchalkiBchaliBchaldeanBchalametBchalagaBchalaBchakrabaB
chakkandhaBchakkaBchairmanB	chainsmokBchahtoBchahtaBchahiyBchaheyBchaffetzBchaffBchadhBchacheriBchachaBchaapBchaaaBcgpaBcflBcetnikBcescBcesarBcerraraBcerradoBceroBcercaBcepBcenscorshipBcenotaphBcenBcelticBcellmatBcellistBcelestBcelebratoriBceleBcelahBceilBceeeleeB
ceeeeeeeebBceeBcedoBcedeB	ceaselessBcearBcdragonBcdayBcclassBccisdBccaaBccaBcbruhBcbpBcbiBcbebdBcbdBcbcBcbaBcazBcavoBcavitiBcavetownBcavaliBcavBcauzBcautiousBcautionBcausultiBcausticBcausarBcausandoBcaucasBcauBcatwalkBcatkinBcatitaBcathiBcathBcatchowBcatcherBcatcalBcatalyzBcatalystBcataloguBcataBcastroBcastorBcastismBcasteistBcasteismBcassidiBcasperBcasoBcasinoBcashlessBcasellaBcarsonB	carribeanBcarriagBcarolynBcarolinBcarntB	carnoustiBcarnivBcarnelB
carmichaelBcarmenBcarmellaBcarlylBcarlinBcarlilBcarliBcarlawBcarinBcariinBcaricaturistBcariBcargoBcaretakBcaressBcarefulBcareaBcardiganBcardiffBcarcassBcarbidBcarbBcarastanBcarambaBcaralhoBcarajoBcaradaB
carabineroBcaputurBcaputBcapsicumBcapriBcappBcapituloBcapengaB
capacitaciBcanttttBcantripBcantoBcantinhoBcantarBcantandoBcanseBcanovaBcannonBcaneB	candyxiumBcanditB	candadianBcandacBcancionBcanariBcamwhorBcampsitBcampignB
campgroundB
campeonatoBcamparrisonB	camouflagBcaminhoBcamilBcameroonianBcameoBcamcordBcambridgBcambiBcambelBcalvariBcalvBcalumBcalskiBcaloriBcalorB
callllllllBcallingwoodB	callejeroBcaliphatB
califoniyaBcalebBcaleBcaldBcalabarBcaitlinBcaioBcaintBcaileyBcahBcaffB	cafeteiraBcadburiBcadB	cacophoniBcacklBcachBcabroBcabralBcabinBcabeBcabalBbzjqBbzBbyzantinBbywordBbyuBbytchBbypassBbyeeeeeeBbyebyBbyczjBbxBbwtBbuzzwordBbuzztermBbuzzkilBbuzzBbutyouB
buttwranglBbutttttBbuttsexBbuttpirB	buttmunchBbuttinBbuttdayB	buttcheekBbutnBbutkhanaBbutiBbutchhhhBbutcheriBbustiBbusinessmenBburrowBburnoutBburnolBburmesBburlesquBburlapBburkhaBburialBburglariBburglarB
bureaucratBburchBburbBburakBbunterBbunsenBbunlaraBbunglBbunchaBbumpinBbummerBbumlickBbumchBbulunanlaraBbullycidBbullyablBbullsxxtBbullshytBbullshxtBbullshBbullliBbulldozBbullcrapBbulkB	bulinandoBbulimiaB	bulgarianBbulgariaBbulBbukhariBbukanBbuilliBbuildupBbuiishitBbugginBbuggiBbuggerBbuffiBbuffetBbufferBbuffailoBbuffBbufBbudweisBbudingBbudiB
budhijeeviBbudhhaBbudhaBbudgBbuddahBbucookiBbuckoBbuckleyBbucjBbucausBbubonBbubbaBbthBbtchBbstBbsmBbskxjsoxBbskBbruxoBbruvBbrunoBbrungBbrumbiBbrumBbruinBbruhhhBbruhhBbruhahaBbruddaBbruBbrrrrB
brotherlisBbrothelBbrothBbroooooBbrooooBbroomBbronxBbroniBbroncoBbroncBbromaBbrodtBbrodiBbroachBbrittanBbritpopBbritneyBbritianBbritaniBbrisketBbriskBbrionnaBbrincadeiraBbrincaBbrimB	brilliancBbrightliB	brightestBbrighterBbrietbaBbrienB	bridgetonB
bridesmaidBbrickwalBbrianaBbrewerBbretBbrentBbrendonBbrendaBbreeeeeeeeeeeeeeeeedBbreederBbreeB
breastmilkB
breastfeedBbreakupB
breadcrumbBbreachBbreaBbrazenliBbravestBbraveriBbraveheaBbratzBbrasilBbrandonBbrandenBbrancoBbraminBbramhinBbrainszB
brainstormBbrainpowBbraindwashibgB	braindeadBbraincelBbrahmaBbrahiminBbradleyBbradBbraceletBbqnqBbozniaBboyyyyyyyyyBboyscoutBboyishBboyhoodBboyfrndBboycottindianBboxinBbowliBbowlandBbowiBboutoBboutiquBboupB	bounevialBboundariBboulBboujiBboujeBbouhBbouB	bothersomBbotdfBbossmanBbossbossbossBbosoxBbosomBbosniaBborrBboroBbornoBborndayBborgiaBboratBboppBbootzBbootlipBboosaBboorBboooooyBbooooooBboonBboomkinBbookselBboohooBboogiBboogerBboogalooBboobzB
boobpillowBboobooBbonzaBbontotBbonitaBbongBbonecoBbondoBbonanzaBbomediBbombshelBbombayBbombardBboltonBboltiBboltaBbolsterBbolshevB	bolsanaroBbolnaB
bollywooodBbollckBboliwoodiyaBbolehBbolBbokeBboinB	boilingggB	bohoharamBbogunBboguBbogglBboffinBboehnerBbodyslamBbodyshamBbodybagBbodB	bochistanBboboB
boatercyclB	boardwalkB
boarderlinBbnhaBblusterBblurriB
bluestupidBbluekaiBblueholB	blueberriBbluddiBbludB	blrkawcokBbloxburgBblowpopBblownnnnnnnnnnBblowjobBblowinBblountBbloubergstrandBblooperBbloomingtonB	bloomenthBbloogBbloodlinBbloodletB
blondebratBblockerBblockaBblocBbloatBbllahBblizzBbliveBblitzBblindsidBblimeyBblightBblicoBblessinBblenderBbleievBblehhhBbledBbldgB	blazingliBblasterBblasphemBblaspemiBblaseB	blarghhhhBblantentB	blanchardBblamBblakcBblakBblaimBblaiBblahhhBblackwindowBblackwatB
blacksburgBblackmonBblackmenBblackmanBblacklivesmattBblackkklansmanB	blackfordBblackestBblackenB
blackberriB	blackbearBblackbalBblacBbkuBbktBbjpiBbjjBbiznizBbiznitchBbiwiBbiurniBbitxchBbitushBbitlockB	bitchslapBbitchinB	bitchiestBbitchezBbitcheriBbitchcalBbitchassBbitcchhBbismolBbisleriBbisexBbisayaBbisaBbiruBbirkenstockBbirkenauBbirdiBbiradarBbioniclB	biohazardB	biographiBbinghBbinderBbindBbimbozB	bimbinganBbillowBbillonBbilladenBbiliouBbilicBbilelBbileBbilanginBbilBbiiiitchB
biiiiiitchBbiiBbigtimBbigmanBbigliBbigiotBbiggiBbigbangBbigamistBbifferBbiffBbienBbielsaBbickerBbiasaB	bialystokBbhutiBbhutanBbhusanBbhusaaBbhurkhaB
bhuladungaBbhukBbhudhistBbhraminBbhosdaBbhoomiBbhnBbhlaBbhktonBbhkatBbhimBbhikhariBbhikariBbhieBbhgvaBbheeBbhawaniBbhatkalBbhashanbaziBbharatvarshB	bharatiyaBbhamB	bhakteriaBbhaiyaB	bhaicharaBbhagwaBbhagtBbhagavadBbhadwaBbhadwBbhaddaBbhaagBbgcBbfffBbezoBbeyongBbeverliBbevelynBbevelinBbevBbetwB
betterhalfBbettaBbetsiBbetraydBbetinB	bethlehemBbethaniBbethBbestowBbestoB	bestfrannBbestfBbestestBbesssstB
bespectaclBbesotBbeshBberriBberpendapatB	berniebroBberniatBbernardoB
bernardinoB	bernadinoBbernBberlinBberinformasiBberekspresiBbereavBberaniBbeomgyuBbensonBbenpobjiBbenjiBbenitoBbenifitBbenghaziBbengahziBbenetBbeneranBbendiB	benchmarkBbemusedlybespectaclBbemB
bellinghamBbellevilBbeliebBbelgiumBbelfastBbelatBbelaruBbekerBbeijBbeignBbeiberBbehiBbehenoBbegumBbegrudgBbegonBbegginBbeggariBbeganiBbefitB	beethovenBbeenBbeehivBbeefitBbedwenchBbedtimBbedoB	bedfellowBbedbuggBbedalBbecuBbecousBbecominBbecmBbeckonBbecklBbeckettB	becchettiBbecaBbebopBbebeBbebbitB	beautifulBbeautBbeaucoupBbeattlBbeattiBbeastilBbeastialBbearerBbeacausBbdsmBbdserBbdlBbdkBbcuBbcradicBbcrBbcoxBbcamBbbzBbblBbbieBbbbbitchBbazaarBbaytBbaylorBbaygonBbayarBbawumiaBbawdiBbauchiBbauBbatwomanBbattlegroundBbatterBbattelBbatonBbatgirlBbateuBbaterBbatayaBbastionBbasterdBbastedriB	bastardisBbastarBbastadBbassistBbassB	baskekbalBbasiliskBbasilB
basesgenerB
baselessliBbaselessBbarstBbarsnleyBbarristaBbarrigaBbarricadBbarretBbarrenBbarragBbaronBbarnsidekennelsjkBbarkleyBbarkhaBbarkerBbariBbargBbarfBbarengBbarelviBbarefootB	barcelonaBbarcaBbarberBbarbequBbarbecuBbarbariBbarbaraBbarbBbaranB	baramullaBbarakBbaraBbaqarBbapeyBbaoBbantuBbantamBbansalBbanneykBbannB	bankstownB
bankruptciBbanglaBbanglBbanginBbangetBbangalorBbangalBbangaBbandoBbandhBbandejaBbandagBbanburiBbanayaBbanataBbanaoBbanaanaBbanaBbampotBbameBbamderaBbamboozlBbamaBbalzacBbaluchistanB	baltistanBbalsamBbalorBbaloochistanBbalochiBballlotBballinBballbarkBbalkanBbalkBbalistBbalidanBbaleBbaldheadBbalckBbalchenBbalarabBbalaoBbaladaBbalaBbakwaaBbaktBbakrikBbakridBbaklaBbakinBbakchodiBbajwaBbajuB	bajanporaBbajajBbaixandoBbaiterBbairBbaioBbainBbailoutBbaileyBbaijiBbahudhaBbahhhhBbahanaBbahanBbahamianBbahamaBbahahahahahahahaBbahaahahahaBbahaBbahBbaggBbagelBbagdadiBbaffooonBbaemBbaduBbadtripBbadranBbadnamBbadnaamBbadderBbadddddBbadboyBbackyardBbackupB	backtrackBbacktoBbackstagBbackseatB	backpedalBbackhandBbackflipBbackendBbachwardBbachiriBbachanBbachBbacckBbacchonBbabyyiBbabysitBbabyishBbabushkaBbabcockBbabariBbabaBbaantBbaadhBbaaarrrbbeeeqquuueeBbaaaadBbaaaaackBazulBazharBazaleaBazadiBayyubBayvaBayokoBayoBayeinBayaBaxiBaxeBawwrBawsomB	awkwardliBawhBawfuBawelBawcBawaamBavrilBavonspurBaviciiBavenidaBavbyoBavasailBavaniBautumnBautopsiBautonomBautoitBautofilB
autochthonBauthorisBaustrianBaustriaBaustrailianBaustismBauspolquesttimBaushwitzBausenciaBauraBaunquBaugustuBaughtB
aufgepasstBaueghrrgBauditBaudiblBaudiBaudaciBatueBattrocBattaBattBatractBatpB
atomatikliBatluBatlantiBatiaBathuBathoughBathenBathamBatfirstBatentBatbBatavistBatarB
atankwaadiBatalBataegnBatackBasurBasuccB	astronomiBastrologBastrayBastolfoBasthmatBasteriskBastagfurillahB	assustadaB	assuredliBassstantBassocBasslessBassimilationistBassangBassamesBassamBassadistBassBasraBasmaaniBasleapBaslBaskfmBasiqBasikBasiikBasiatBasiabibiBasiBashwaitBashtonBashtamiBashleyB	ashanthanBashamniBashamaniBashaBasgarBaseanBaseBasdkfBasdBasbatBasamBasakirBasafBasabBarusanBarungzebBarrafBarquettBarousBarouBarosBaroBarnoldBarmpitBarminBarmiaBarmchairBarmarioBarmajB
armageddonBarmaBarlynBarlenBarkansaBarjunaBarizaBarisBarifBarielBaricaBariadnaBarhB	arguementBargtBarghhhhhBargghhBarggBargentinianBarffffBarethaBarentchaBarelaBareanBardynBardB	architectBarchiBarcherB	archeologBarchB	arbitrariBarberriBaramaBarakanBarabisBarabiBaquiloBaquelBaquariuBaquamanBaqsaBaqiBapupB	apuntandoBaprovaBapropoBapronBapricotBapresentadaBaprendeuBaprendBapptBappstorBappropoB
approachinBapposBappetitBapostoBapostlBapostasiBaponBapolitB	apoderadoBapocryphB	apocalyptB	apocalypsBapoBapniBapnayB
aplicativoBaplentiBapkoBaphaBapexBapetitoBapeshitBapefrikaBapatowBapanhaBapagarBapaanBapaaaBapaaBaokBaoaBanywayzBanythgBanyothBanutBanurodhBanucinsBantvBantoniaBantonB	antithesiBantistraightpplB
antissemitBantispamBantisociBantisjwB	antisemetBantinB
antimuslimBantiguanBantigayBantifeministBantifascistB
antifacistBantibiotBanthropologistBanthropologBanthBantarkampungB
antarcticaB
antagonistBantacidBansiBanshuBanselBanoutBanorexiaBannualBannoyiBannoBannikaBannhihilBannexBankaBanjirBanissaBanimosBanimistBanikahlBaniBangriliBangloBangiBangelfirBangelaBanerBanemBandtheywillcometomeandsayBandreaBandrastBandpeoplBandhraB
andhbhakhtBandddBancestBanatoliaBanathBanarchB
anaphylactBanandBanamistBanaknyaBanaBamtheyBamrindBamraBamputBamplifBamnesiaBammoBammendBammanBamkBamizadBamitshahBamitiBamistadBamiguitoBamigdBamidstBamidBamharahBamethystB	amerikkkaBamerikenB
americanshB	americanoBamercanBameobiBamejamBameaBambienBambaniBambalB	amazingliBamarBamanzaB
amantullahBamanhaBamanatsuBamanBamalanetworkBamalaBalzheimBalyanBalwaysnkeptBalwahBalumnusBaluminumBalumBaluBaltpressBalteracBaltarB	alsnjabsjBalsissiBalshababB
alsarabsssBalrBalquedaBalquaidaBalotaBalopeciaBaloootB	almuqaddaBallwayBallurBallthBalloBallllllBallllBallisonBalligBalleyBallergiBallegorBallatBallamaB	allahphobBallaahBalkiB	aljazeeraBalissaBalipurBalimoniBaliminBaligarhBaliarBalianuBalhumdulliahBalhumduallahBalhamdulilahBalguienBalguBalgoharBalgoBalgierBalgeriaBalfredoBaleynaBalexiB
alexandriaBalexaBalevitBaleviBalenaB	alejandraBalcBalbuBalbionBalbaniaBalayahBalawitBalaviBalaskanBalaskaBalaouiBalanyaBalanBalaksnBalahB	alabamianBakuraBaksunaB	aknowledgBaknBakldfBakjvBakiraBakhtarBakhirnyaBakhirBakhdarBakhandBakhBakenBakcBakalBakaiBajnabiBajjsgdhB	ajitdevelBajitBajeBajayBajatBajajajaBaiudfBaitaBairsickBairplanBairmanBairlinBairiBairforcBairbasBaintiBainnitBaimplbBaikidoBaienkubBaibBahyaBahttttBahsjjffBahoutBahoraBahomBaholdBahmadBahmBahluBahitBahinsaB	ahhhhhmazB.ahhhhhgkjhfdeathtoamericasomebodygottadiebitchBahhahahahhahaBahhahaBahhaahahhahahaBahhaBaheBahahhaBahahahahahahahahahB	ahahahahaBahahahaaB
ahahaahahaBahahaaBahadeBahaanaBaguileraB	aguantaraBaguantarBagresorBagreeablB
agonizandoBagntBagnosticBagnostBagniBagnanBaginstBagianstBagiaBaghhhBaggroBaggrevBaggregBaggravBaggrBaggiBagendBagenciaBagemBageistBageismBagberoBagaknyaBagaintBagaiB	aftermathB	afterburnBafterBaftBafrikaanBafricanamericanBafloatBafleveringenBafkBafiiBafichBafghstBafghaniBafgBaffBafabBafaBaewBaetnaB
aeropostalBaelijahBadxndilBadvisoriBadvisorB	adversariB
adventistaBadventB	adulthoodBadudhBadrienBadrianBadressB	adrenalinBadorariaBadolescBadobsonaBadobBadnanBadmitiuBadmBadlibBadjoinBadjacBadivinhaBadivasiB
adityanathBaditBadidaBadhaBadelainBadeethBadeboyBaddisonBaddeenBadayBadamaBadalahBacybBacusBacuB	actualluyBactonBactinBacquisitBacquaintBacostumbradoBacosoBacordBacontecendoBacontecBacluBacljBacklBacidprincessBaciBachoolBachinggggggBachiBachaitaBaceossBaceitarBaccrossBaccreditB	accomplicBaccoladBaccntBacchBaccessorBaccepetBaccdmidBacccidnelttBaccaBacapellaBacaiBacaciaBacabeiBacaBabyssBabvBabusaBabubakarBabsurdliBabstractBabstinB
absolutleyBabslutBabsentBabsencBabruptliBabrogstBabriremBabrasBabramBaboutBaboundBabotuBabotBablooBablestBablazBabjectBabhinavB
abercrombi
??

Const_5Const*
_output_shapes

:??*
dtype0	*??

value??
B??
	??"??
                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:       ;      ;      ;      ;      ;      ;      ;      ;      ;      	;      
;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;       ;      !;      ";      #;      $;      %;      &;      ';      (;      );      *;      +;      ,;      -;      .;      /;      0;      1;      2;      3;      4;      5;      6;      7;      8;      9;      :;      ;;      <;      =;      >;      ?;      @;      A;      B;      C;      D;      E;      F;      G;      H;      I;      J;      K;      L;      M;      N;      O;      P;      Q;      R;      S;      T;      U;      V;      W;      X;      Y;      Z;      [;      \;      ];      ^;      _;      `;      a;      b;      c;      d;      e;      f;      g;      h;      i;      j;      k;      l;      m;      n;      o;      p;      q;      r;      s;      t;      u;      v;      w;      x;      y;      z;      {;      |;      };      ~;      ;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;       <      <      <      <      <      <      <      <      <      	<      
<      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <       <      !<      "<      #<      $<      %<      &<      '<      (<      )<      *<      +<      ,<      -<      .<      /<      0<      1<      2<      3<      4<      5<      6<      7<      8<      9<      :<      ;<      <<      =<      ><      ?<      @<      A<      B<      C<      D<      E<      F<      G<      H<      I<      J<      K<      L<      M<      N<      O<      P<      Q<      R<      S<      T<      U<      V<      W<      X<      Y<      Z<      [<      \<      ]<      ^<      _<      `<      a<      b<      c<      d<      e<      f<      g<      h<      i<      j<      k<      l<      m<      n<      o<      p<      q<      r<      s<      t<      u<      v<      w<      x<      y<      z<      {<      |<      }<      ~<      <      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<       =      =      =      =      =      =      =      =      =      	=      
=      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =       =      !=      "=      #=      $=      %=      &=      '=      (=      )=      *=      +=      ,=      -=      .=      /=      0=      1=      2=      3=      4=      5=      6=      7=      8=      9=      :=      ;=      <=      ==      >=      ?=      @=      A=      B=      C=      D=      E=      F=      G=      H=      I=      J=      K=      L=      M=      N=      O=      P=      Q=      R=      S=      T=      U=      V=      W=      X=      Y=      Z=      [=      \=      ]=      ^=      _=      `=      a=      b=      c=      d=      e=      f=      g=      h=      i=      j=      k=      l=      m=      n=      o=      p=      q=      r=      s=      t=      u=      v=      w=      x=      y=      z=      {=      |=      }=      ~=      =      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=       >      >      >      >      >      >      >      >      >      	>      
>      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >       >      !>      ">      #>      $>      %>      &>      '>      (>      )>      *>      +>      ,>      ->      .>      />      0>      1>      2>      3>      4>      5>      6>      7>      8>      9>      :>      ;>      <>      =>      >>      ?>      @>      A>      B>      C>      D>      E>      F>      G>      H>      I>      J>      K>      L>      M>      N>      O>      P>      Q>      R>      S>      T>      U>      V>      W>      X>      Y>      Z>      [>      \>      ]>      ^>      _>      `>      a>      b>      c>      d>      e>      f>      g>      h>      i>      j>      k>      l>      m>      n>      o>      p>      q>      r>      s>      t>      u>      v>      w>      x>      y>      z>      {>      |>      }>      ~>      >      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>       ?      ?      ?      ?      ?      ?      ?      ?      ?      	?      
?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       ?      !?      "?      #?      $?      %?      &?      '?      (?      )?      *?      +?      ,?      -?      .?      /?      0?      1?      2?      3?      4?      5?      6?      7?      8?      9?      :?      ;?      <?      =?      >?      ??      @?      A?      B?      C?      D?      E?      F?      G?      H?      I?      J?      K?      L?      M?      N?      O?      P?      Q?      R?      S?      T?      U?      V?      W?      X?      Y?      Z?      [?      \?      ]?      ^?      _?      `?      a?      b?      c?      d?      e?      f?      g?      h?      i?      j?      k?      l?      m?      n?      o?      p?      q?      r?      s?      t?      u?      v?      w?      x?      y?      z?      {?      |?      }?      ~?      ?      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??       @      @      @      @      @      @      @      @      @      	@      
@      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      !@      "@      #@      $@      %@      &@      '@      (@      )@      *@      +@      ,@      -@      .@      /@      0@      1@      2@      3@      4@      5@      6@      7@      8@      9@      :@      ;@      <@      =@      >@      ?@      @@      A@      B@      C@      D@      E@      F@      G@      H@      I@      J@      K@      L@      M@      N@      O@      P@      Q@      R@      S@      T@      U@      V@      W@      X@      Y@      Z@      [@      \@      ]@      ^@      _@      `@      a@      b@      c@      d@      e@      f@      g@      h@      i@      j@      k@      l@      m@      n@      o@      p@      q@      r@      s@      t@      u@      v@      w@      x@      y@      z@      {@      |@      }@      ~@      @      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@       A      A      A      A      A      A      A      A      A      	A      
A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A       A      !A      "A      #A      $A      %A      &A      'A      (A      )A      *A      +A      ,A      -A      .A      /A      0A      1A      2A      3A      4A      5A      6A      7A      8A      9A      :A      ;A      <A      =A      >A      ?A      @A      AA      BA      CA      DA      EA      FA      GA      HA      IA      JA      KA      LA      MA      NA      OA      PA      QA      RA      SA      TA      UA      VA      WA      XA      YA      ZA      [A      \A      ]A      ^A      _A      `A      aA      bA      cA      dA      eA      fA      gA      hA      iA      jA      kA      lA      mA      nA      oA      pA      qA      rA      sA      tA      uA      vA      wA      xA      yA      zA      {A      |A      }A      ~A      A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A       B      B      B      B      B      B      B      B      B      	B      
B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B       B      !B      "B      #B      $B      %B      &B      'B      (B      )B      *B      +B      ,B      -B      .B      /B      0B      1B      2B      3B      4B      5B      6B      7B      8B      9B      :B      ;B      <B      =B      >B      ?B      @B      AB      BB      CB      DB      EB      FB      GB      HB      IB      JB      KB      LB      MB      NB      OB      PB      QB      RB      SB      TB      UB      VB      WB      XB      YB      ZB      [B      \B      ]B      ^B      _B      `B      aB      bB      cB      dB      eB      fB      gB      hB      iB      jB      kB      lB      mB      nB      oB      pB      qB      rB      sB      tB      uB      vB      wB      xB      yB      zB      {B      |B      }B      ~B      B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B       C      C      C      C      C      C      C      C      C      	C      
C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C       C      !C      "C      #C      $C      %C      &C      'C      (C      )C      *C      +C      ,C      -C      .C      /C      0C      1C      2C      3C      4C      5C      6C      7C      8C      9C      :C      ;C      <C      =C      >C      ?C      @C      AC      BC      CC      DC      EC      FC      GC      HC      IC      JC      KC      LC      MC      NC      OC      PC      QC      RC      SC      TC      UC      VC      WC      XC      YC      ZC      [C      \C      ]C      ^C      _C      `C      aC      bC      cC      dC      eC      fC      gC      hC      iC      jC      kC      lC      mC      nC      oC      pC      qC      rC      sC      tC      uC      vC      wC      xC      yC      zC      {C      |C      }C      ~C      C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C       D      D      D      D      D      D      D      D      D      	D      
D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D       D      !D      "D      #D      $D      %D      &D      'D      (D      )D      *D      +D      ,D      -D      .D      /D      0D      1D      2D      3D      4D      5D      6D      7D      8D      9D      :D      ;D      <D      =D      >D      ?D      @D      AD      BD      CD      DD      ED      FD      GD      HD      ID      JD      KD      LD      MD      ND      OD      PD      QD      RD      SD      TD      UD      VD      WD      XD      YD      ZD      [D      \D      ]D      ^D      _D      `D      aD      bD      cD      dD      eD      fD      gD      hD      iD      jD      kD      lD      mD      nD      oD      pD      qD      rD      sD      tD      uD      vD      wD      xD      yD      zD      {D      |D      }D      ~D      D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D       E      E      E      E      E      E      E      E      E      	E      
E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E       E      !E      "E      #E      $E      %E      &E      'E      (E      )E      *E      +E      ,E      -E      .E      /E      0E      1E      2E      3E      4E      5E      6E      7E      8E      9E      :E      ;E      <E      =E      >E      ?E      @E      AE      BE      CE      DE      EE      FE      GE      HE      IE      JE      KE      LE      ME      NE      OE      PE      QE      RE      SE      TE      UE      VE      WE      XE      YE      ZE      [E      \E      ]E      ^E      _E      `E      aE      bE      cE      dE      eE      fE      gE      hE      iE      jE      kE      lE      mE      nE      oE      pE      qE      rE      sE      tE      uE      vE      wE      xE      yE      zE      {E      |E      }E      ~E      E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E       F      F      F      F      F      F      F      F      F      	F      
F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F       F      !F      "F      #F      $F      %F      &F      'F      (F      )F      *F      +F      ,F      -F      .F      /F      0F      1F      2F      3F      4F      5F      6F      7F      8F      9F      :F      ;F      <F      =F      >F      ?F      @F      AF      BF      CF      DF      EF      FF      GF      HF      IF      JF      KF      LF      MF      NF      OF      PF      QF      RF      SF      TF      UF      VF      WF      XF      YF      ZF      [F      \F      ]F      ^F      _F      `F      aF      bF      cF      dF      eF      fF      gF      hF      iF      jF      kF      lF      mF      nF      oF      pF      qF      rF      sF      tF      uF      vF      wF      xF      yF      zF      {F      |F      }F      ~F      F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F       G      G      G      G      G      G      G      G      G      	G      
G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G       G      !G      "G      #G      $G      %G      &G      'G      (G      )G      *G      +G      ,G      -G      .G      /G      0G      1G      2G      3G      4G      5G      6G      7G      8G      9G      :G      ;G      <G      =G      >G      ?G      @G      AG      BG      CG      DG      EG      FG      GG      HG      IG      JG      KG      LG      MG      NG      OG      PG      QG      RG      SG      TG      UG      VG      WG      XG      YG      ZG      [G      \G      ]G      ^G      _G      `G      aG      bG      cG      dG      eG      fG      gG      hG      iG      jG      kG      lG      mG      nG      oG      pG      qG      rG      sG      tG      uG      vG      wG      xG      yG      zG      {G      |G      }G      ~G      G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G       H      H      H      H      H      H      H      H      H      	H      
H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H       H      !H      "H      #H      $H      %H      &H      'H      (H      )H      *H      +H      ,H      -H      .H      /H      0H      1H      2H      3H      4H      5H      6H      7H      8H      9H      :H      ;H      <H      =H      >H      ?H      @H      AH      BH      CH      DH      EH      FH      GH      HH      IH      JH      KH      LH      MH      NH      OH      PH      QH      RH      SH      TH      UH      VH      WH      XH      YH      ZH      [H      \H      ]H      ^H      _H      `H      aH      bH      cH      dH      eH      fH      gH      hH      iH      jH      kH      lH      mH      nH      oH      pH      qH      rH      sH      tH      uH      vH      wH      xH      yH      zH      {H      |H      }H      ~H      H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H       I      I      I      I      I      I      I      I      I      	I      
I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I       I      !I      "I      #I      $I      %I      &I      'I      (I      )I      *I      +I      ,I      -I      .I      /I      0I      1I      2I      3I      4I      5I      6I      7I      8I      9I      :I      ;I      <I      =I      >I      ?I      @I      AI      BI      CI      DI      EI      FI      GI      HI      II      JI      KI      LI      MI      NI      OI      PI      QI      RI      SI      TI      UI      VI      WI      XI      YI      ZI      [I      \I      ]I      ^I      _I      `I      aI      bI      cI      dI      eI      fI      gI      hI      iI      jI      kI      lI      mI      nI      oI      pI      qI      rI      sI      tI      uI      vI      wI      xI      yI      zI      {I      |I      }I      ~I      I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I       J      J      J      J      J      J      J      J      J      	J      
J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J       J      !J      "J      #J      $J      %J      &J      'J      (J      )J      *J      +J      ,J      -J      .J      /J      0J      1J      2J      3J      4J      5J      6J      7J      8J      9J      :J      ;J      <J      =J      >J      ?J      @J      AJ      BJ      CJ      DJ      EJ      FJ      GJ      HJ      IJ      JJ      KJ      LJ      MJ      NJ      OJ      PJ      QJ      RJ      SJ      TJ      UJ      VJ      WJ      XJ      YJ      ZJ      [J      \J      ]J      ^J      _J      `J      aJ      bJ      cJ      dJ      eJ      fJ      gJ      hJ      iJ      jJ      kJ      lJ      mJ      nJ      oJ      pJ      qJ      rJ      sJ      tJ      uJ      vJ      wJ      xJ      yJ      zJ      {J      |J      }J      ~J      J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J       K      K      K      K      K      K      K      K      K      	K      
K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K       K      !K      "K      #K      $K      %K      &K      'K      (K      )K      *K      +K      ,K      -K      .K      /K      0K      1K      2K      3K      4K      5K      6K      7K      8K      9K      :K      ;K      <K      =K      >K      ?K      @K      AK      BK      CK      DK      EK      FK      GK      HK      IK      JK      KK      LK      MK      NK      OK      PK      QK      RK      SK      TK      UK      VK      WK      XK      YK      ZK      [K      \K      ]K      ^K      _K      `K      aK      bK      cK      dK      eK      fK      gK      hK      iK      jK      kK      lK      mK      nK      oK      pK      qK      rK      sK      tK      uK      vK      wK      xK      yK      zK      {K      |K      }K      ~K      K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K       L      L      L      L      L      L      L      L      L      	L      
L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L       L      !L      "L      #L      $L      %L      &L      'L      (L      )L      *L      +L      ,L      -L      .L      /L      0L      1L      2L      3L      4L      5L      6L      7L      8L      9L      :L      ;L      <L      =L      >L      ?L      @L      AL      BL      CL      DL      EL      FL      GL      HL      IL      JL      KL      LL      ML      NL      OL      PL      QL      RL      SL      TL      UL      VL      WL      XL      YL      ZL      [L      \L      ]L      ^L      _L      `L      aL      bL      cL      dL      eL      fL      gL      hL      iL      jL      kL      lL      mL      nL      oL      pL      qL      rL      sL      tL      uL      vL      wL      xL      yL      zL      {L      |L      }L      ~L      L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L       M      M      M      M      M      M      M      M      M      	M      
M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M       M      !M      "M      #M      $M      %M      &M      'M      (M      )M      *M      +M      ,M      -M      .M      /M      0M      1M      2M      3M      4M      5M      6M      7M      8M      9M      :M      ;M      <M      =M      >M      ?M      @M      AM      BM      CM      DM      EM      FM      GM      HM      IM      JM      KM      LM      MM      NM      OM      PM      QM      RM      SM      TM      UM      VM      WM      XM      YM      ZM      [M      \M      ]M      ^M      _M      `M      aM      bM      cM      dM      eM      fM      gM      hM      iM      jM      kM      lM      mM      nM      oM      pM      qM      rM      sM      tM      uM      vM      wM      xM      yM      zM      {M      |M      }M      ~M      M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M       N      N      N      N      N      N      N      N      N      	N      
N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N       N      !N      "N      #N      $N      %N      &N      'N      (N      )N      *N      +N      ,N      -N      .N      /N      0N      1N      2N      3N      4N      5N      6N      7N      8N      9N      :N      ;N      <N      =N      >N      ?N      @N      AN      BN      CN      DN      EN      FN      GN      HN      IN      JN      KN      LN      MN      NN      ON      PN      QN      RN      SN      TN      UN      VN      WN      XN      YN      ZN      [N      \N      ]N      ^N      _N      `N      aN      bN      cN      dN      eN      fN      gN      hN      iN      jN      kN      lN      mN      nN      oN      pN      qN      rN      sN      tN      uN      vN      wN      xN      yN      zN      {N      |N      }N      ~N      N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N       O      O      O      O      O      O      O      O      O      	O      
O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O       O      !O      "O      #O      $O      %O      &O      'O      (O      )O      *O      +O      ,O      -O      .O      /O      0O      1O      2O      3O      4O      5O      6O      7O      8O      9O      :O      ;O      <O      =O      >O      ?O      @O      AO      BO      CO      DO      EO      FO      GO      HO      IO      JO      KO      LO      MO      NO      OO      PO      QO      RO      SO      TO      UO      VO      WO      XO      YO      ZO      [O      \O      ]O      ^O      _O      `O      aO      bO      cO      dO      eO      fO      gO      hO      iO      jO      kO      lO      mO      nO      oO      pO      qO      rO      sO      tO      uO      vO      wO      xO      yO      zO      {O      |O      }O      ~O      O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O       P      P      P      P      P      P      P      P      P      	P      
P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P       P      !P      "P      #P      $P      %P      &P      'P      (P      )P      *P      +P      ,P      -P      .P      /P      0P      1P      2P      3P      4P      5P      6P      7P      8P      9P      :P      ;P      <P      =P      >P      ?P      @P      AP      BP      CP      DP      EP      FP      GP      HP      IP      JP      KP      LP      MP      NP      OP      PP      QP      RP      SP      TP      UP      VP      WP      XP      YP      ZP      [P      \P      ]P      ^P      _P      `P      aP      bP      cP      dP      eP      fP      gP      hP      iP      jP      kP      lP      mP      nP      oP      pP      qP      rP      sP      tP      uP      vP      wP      xP      yP      zP      {P      |P      }P      ~P      P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P       Q      Q      Q      Q      Q      Q      Q      Q      Q      	Q      
Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q       Q      !Q      "Q      #Q      $Q      %Q      &Q      'Q      (Q      )Q      *Q      +Q      ,Q      -Q      .Q      /Q      0Q      1Q      2Q      3Q      4Q      5Q      6Q      7Q      8Q      9Q      :Q      ;Q      <Q      =Q      >Q      ?Q      @Q      AQ      BQ      CQ      DQ      EQ      FQ      GQ      HQ      IQ      JQ      KQ      LQ      MQ      NQ      OQ      PQ      QQ      RQ      SQ      TQ      UQ      VQ      WQ      XQ      YQ      ZQ      [Q      \Q      ]Q      ^Q      _Q      `Q      aQ      bQ      cQ      dQ      eQ      fQ      gQ      hQ      iQ      jQ      kQ      lQ      mQ      nQ      oQ      pQ      qQ      rQ      sQ      tQ      uQ      vQ      wQ      xQ      yQ      zQ      {Q      |Q      }Q      ~Q      Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q       R      R      R      R      R      R      R      R      R      	R      
R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R       R      !R      "R      #R      $R      %R      &R      'R      (R      )R      *R      +R      ,R      -R      .R      /R      0R      1R      2R      3R      4R      5R      6R      7R      8R      9R      :R      ;R      <R      =R      >R      ?R      @R      AR      BR      CR      DR      ER      FR      GR      HR      IR      JR      KR      LR      MR      NR      OR      PR      QR      RR      SR      TR      UR      VR      WR      XR      YR      ZR      [R      \R      ]R      ^R      _R      `R      aR      bR      cR      dR      eR      fR      gR      hR      iR      jR      kR      lR      mR      nR      oR      pR      qR      rR      sR      tR      uR      vR      wR      xR      yR      zR      {R      |R      }R      ~R      R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R       S      S      S      S      S      S      S      S      S      	S      
S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S       S      !S      "S      #S      $S      %S      &S      'S      (S      )S      *S      +S      ,S      -S      .S      /S      0S      1S      2S      3S      4S      5S      6S      7S      8S      9S      :S      ;S      <S      =S      >S      ?S      @S      AS      BS      CS      DS      ES      FS      GS      HS      IS      JS      KS      LS      MS      NS      OS      PS      QS      RS      SS      TS      US      VS      WS      XS      YS      ZS      [S      \S      ]S      ^S      _S      `S      aS      bS      cS      dS      eS      fS      gS      hS      iS      jS      kS      lS      mS      nS      oS      pS      qS      rS      sS      tS      uS      vS      wS      xS      yS      zS      {S      |S      }S      ~S      S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S       T      T      T      T      T      T      T      T      T      	T      
T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T       T      !T      "T      #T      $T      %T      &T      'T      (T      )T      *T      +T      ,T      -T      .T      /T      0T      1T      2T      3T      4T      5T      6T      7T      8T      9T      :T      ;T      <T      =T      >T      ?T      @T      AT      BT      CT      DT      ET      FT      GT      HT      IT      JT      KT      LT      MT      NT      OT      PT      QT      RT      ST      TT      UT      VT      WT      XT      YT      ZT      [T      \T      ]T      ^T      _T      `T      aT      bT      cT      dT      eT      fT      gT      hT      iT      jT      kT      lT      mT      nT      oT      pT      qT      rT      sT      tT      uT      vT      wT      xT      yT      zT      {T      |T      }T      ~T      T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_266102
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_266107
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?o
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?n
value?nB?n B?n
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
?

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2_random_generator
3__call__
*4&call_and_return_all_conditional_losses* 
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses* 
?
Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
?

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[_random_generator
\__call__
*]&call_and_return_all_conditional_losses* 
?
^axis
	_gamma
`beta
amoving_mean
bmoving_variance
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
?

ikernel
jbias
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
?
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_ratem?&m?'m?5m?6m?Em?Fm?Om?Pm?_m?`m?im?jm?v?&v?'v?5v?6v?Ev?Fv?Ov?Pv?_v?`v?iv?jv?*
?
1
&2
'3
54
65
E6
F7
G8
H9
O10
P11
_12
`13
a14
b15
i16
j17*
b
0
&1
'2
53
64
E5
F6
O7
P8
_9
`10
i11
j12*
* 
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

{serving_default* 
7
|lookup_table
}token_counts
~	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 
* 
* 
* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
E0
F1
G2
H3*

E0
F1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 
* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
_0
`1
a2
b3*

_0
`1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

i0
j1*

i0
j1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
 
G1
H2
a3
b4*
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

?0
?1*
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

G0
H1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

a0
b1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
`
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
(serving_default_text_vectorization_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall(serving_default_text_vectorization_input
hash_tableConstConst_1Const_2embedding/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betadense_6/kerneldense_6/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betadense_7/kerneldense_7/bias*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_265637
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst_6*C
Tin<
:28		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_266300
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_6/kerneldense_6/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttrue_positivesfalse_negativesAdam/embedding/embeddings/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/dense_6/kernel/mAdam/dense_6/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/embedding/embeddings/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/dense_6/kernel/vAdam/dense_6/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*A
Tin:
826*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_266469??
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_264515

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
-
__inference__destroyer_266067
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
E__inference_embedding_layer_call_and_return_conditional_losses_265702

inputs	,
embedding_lookup_265696:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_265696inputs*
Tindices0	**
_class 
loc:@embedding_lookup/265696*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/265696*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_266034

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
*__inference_dropout_2_layer_call_fn_265917

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_264676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
/
__inference__initializer_266062
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
*__inference_embedding_layer_call_fn_265693

inputs	
unknown:???
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_264488u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_4_layer_call_fn_265722

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_264504p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_layer_call_fn_265833

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264331o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_dense_6_layer_call_fn_265896

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_264561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_265934

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_save_fn_266086
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
݈
?

H__inference_sequential_3_layer_call_and_return_conditional_losses_265098
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
embedding_265052:???"
dense_4_265056:
??
dense_4_265058:	?!
dense_5_265062:	? 
dense_5_265064: (
batch_normalization_265068: (
batch_normalization_265070: (
batch_normalization_265072: (
batch_normalization_265074:  
dense_6_265077:  
dense_6_265079: *
batch_normalization_1_265083: *
batch_normalization_1_265085: *
batch_normalization_1_265087: *
batch_normalization_1_265089:  
dense_7_265092: 
dense_7_265094:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2p
text_vectorization/StringLowerStringLowertext_vectorization_input*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_265052*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_264488?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_264257?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_265056dense_4_265058*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_264504?
dropout/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_264515?
dense_5/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_5_265062dense_5_265064*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_264528?
dropout_1/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_264539?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0batch_normalization_265068batch_normalization_265070batch_normalization_265072batch_normalization_265074*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264284?
dense_6/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_6_265077dense_6_265079*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_264561?
dropout_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_264572?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0batch_normalization_1_265083batch_normalization_1_265085batch_normalization_1_265087batch_normalization_1_265089*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264366?
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0dense_7_265092dense_7_265094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_264594w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?D
?
__inference_adapt_step_265686
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265588

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	6
!embedding_embedding_lookup_265468:???:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	? 5
'dense_5_biasadd_readvariableop_resource: I
;batch_normalization_assignmovingavg_readvariableop_resource: K
=batch_normalization_assignmovingavg_1_readvariableop_resource: G
9batch_normalization_batchnorm_mul_readvariableop_resource: C
5batch_normalization_batchnorm_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource:  5
'dense_6_biasadd_readvariableop_resource: K
=batch_normalization_1_assignmovingavg_readvariableop_resource: M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identity??#batch_normalization/AssignMovingAvg?2batch_normalization/AssignMovingAvg/ReadVariableOp?%batch_normalization/AssignMovingAvg_1?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?,batch_normalization/batchnorm/ReadVariableOp?0batch_normalization/batchnorm/mul/ReadVariableOp?%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?2batch_normalization_1/batchnorm/mul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_265468?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/265468*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/265468*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d_1/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_4/MatMulMatMul(global_average_pooling1d_1/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
dense_4/EluEludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMuldense_4/Elu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????^
dropout/dropout/ShapeShapedense_4/Elu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed
c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_5/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
dense_5/EluEludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:????????? \
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_1/dropout/MulMuldense_5/Elu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? `
dropout_1/dropout/ShapeShapedense_5/Elu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed
*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? ?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? ?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? |
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
 batch_normalization/moments/meanMeandropout_1/dropout/Mul_1:z:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes

: ?
-batch_normalization/moments/SquaredDifferenceSquaredDifferencedropout_1/dropout/Mul_1:z:01batch_normalization/moments/StopGradient:output:0*
T0*'
_output_shapes
:????????? ?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 ?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 n
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes
: ?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0p
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes
: ?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: x
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: ?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
#batch_normalization/batchnorm/mul_1Muldropout_1/dropout/Mul_1:z:0%batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? ?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: ?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0?
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? ?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0?
dense_6/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
dense_6/EluEludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? \
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_2/dropout/MulMuldense_6/Elu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? `
dropout_2/dropout/ShapeShapedense_6/Elu:activations:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed
*
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? ?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? ?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? ~
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
"batch_normalization_1/moments/meanMeandropout_2/dropout/Mul_1:z:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes

: ?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencedropout_2/dropout/Mul_1:z:03batch_normalization_1/moments/StopGradient:output:0*
T0*'
_output_shapes
:????????? ?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 ?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 p
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
: ?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
: ?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: |
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: ?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
%batch_normalization_1/batchnorm/mul_1Muldropout_2/dropout/Mul_1:z:0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? ?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: ?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0?
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? ?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_7/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?!
"__inference__traced_restore_266469
file_prefix:
%assignvariableop_embedding_embeddings:???5
!assignvariableop_1_dense_4_kernel:
??.
assignvariableop_2_dense_4_bias:	?4
!assignvariableop_3_dense_5_kernel:	? -
assignvariableop_4_dense_5_bias: :
,assignvariableop_5_batch_normalization_gamma: 9
+assignvariableop_6_batch_normalization_beta: @
2assignvariableop_7_batch_normalization_moving_mean: D
6assignvariableop_8_batch_normalization_moving_variance: 3
!assignvariableop_9_dense_6_kernel:  .
 assignvariableop_10_dense_6_bias: =
/assignvariableop_11_batch_normalization_1_gamma: <
.assignvariableop_12_batch_normalization_1_beta: C
5assignvariableop_13_batch_normalization_1_moving_mean: G
9assignvariableop_14_batch_normalization_1_moving_variance: 4
"assignvariableop_15_dense_7_kernel: .
 assignvariableop_16_dense_7_bias:'
assignvariableop_17_adam_iter:	 )
assignvariableop_18_adam_beta_1: )
assignvariableop_19_adam_beta_2: (
assignvariableop_20_adam_decay: 0
&assignvariableop_21_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_22_total: #
assignvariableop_23_count: 0
"assignvariableop_24_true_positives:1
#assignvariableop_25_false_negatives:D
/assignvariableop_26_adam_embedding_embeddings_m:???=
)assignvariableop_27_adam_dense_4_kernel_m:
??6
'assignvariableop_28_adam_dense_4_bias_m:	?<
)assignvariableop_29_adam_dense_5_kernel_m:	? 5
'assignvariableop_30_adam_dense_5_bias_m: B
4assignvariableop_31_adam_batch_normalization_gamma_m: A
3assignvariableop_32_adam_batch_normalization_beta_m: ;
)assignvariableop_33_adam_dense_6_kernel_m:  5
'assignvariableop_34_adam_dense_6_bias_m: D
6assignvariableop_35_adam_batch_normalization_1_gamma_m: C
5assignvariableop_36_adam_batch_normalization_1_beta_m: ;
)assignvariableop_37_adam_dense_7_kernel_m: 5
'assignvariableop_38_adam_dense_7_bias_m:D
/assignvariableop_39_adam_embedding_embeddings_v:???=
)assignvariableop_40_adam_dense_4_kernel_v:
??6
'assignvariableop_41_adam_dense_4_bias_v:	?<
)assignvariableop_42_adam_dense_5_kernel_v:	? 5
'assignvariableop_43_adam_dense_5_bias_v: B
4assignvariableop_44_adam_batch_normalization_gamma_v: A
3assignvariableop_45_adam_batch_normalization_beta_v: ;
)assignvariableop_46_adam_dense_6_kernel_v:  5
'assignvariableop_47_adam_dense_6_bias_v: D
6assignvariableop_48_adam_batch_normalization_1_gamma_v: C
5assignvariableop_49_adam_batch_normalization_1_beta_v: ;
)assignvariableop_50_adam_dense_7_kernel_v: 5
'assignvariableop_51_adam_dense_7_bias_v:
identity_53??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
value?B?7B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_4_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_4_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_5_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_5_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_batch_normalization_gammaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp+assignvariableop_6_batch_normalization_betaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_batch_normalization_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp6assignvariableop_8_batch_normalization_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_6_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_6_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_1_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp.assignvariableop_12_batch_normalization_1_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp5assignvariableop_13_batch_normalization_1_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_batch_normalization_1_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_7_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp assignvariableop_16_dense_7_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_iterIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_decayIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adam_learning_rateIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:22RestoreV2:tensors:23*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_true_positivesIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_false_negativesIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp/assignvariableop_26_adam_embedding_embeddings_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_4_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_4_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_5_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_5_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_batch_normalization_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_batch_normalization_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_6_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_6_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_batch_normalization_1_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adam_batch_normalization_1_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_7_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_7_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp/assignvariableop_39_adam_embedding_embeddings_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_4_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_4_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_5_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_5_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp4assignvariableop_44_adam_batch_normalization_gamma_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp3assignvariableop_45_adam_batch_normalization_beta_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_6_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_6_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_1_gamma_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_batch_normalization_1_beta_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_7_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_7_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?	
Identity_52Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_53IdentityIdentity_52:output:0^NoOp_1*
T0*
_output_shapes
: ?	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_53Identity_53:output:0*
_input_shapesn
l: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
?
(__inference_dense_7_layer_call_fn_266023

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_264594o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_265853

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
-
__inference__destroyer_266052
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
G
__inference__creator_266057
identity: ??MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

?
C__inference_dense_5_layer_call_and_return_conditional_losses_264528

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? N
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:????????? `
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264366

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_264709

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_265795

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_265790

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_264709o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
ٌ
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_264909

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
embedding_264863:???"
dense_4_264867:
??
dense_4_264869:	?!
dense_5_264873:	? 
dense_5_264875: (
batch_normalization_264879: (
batch_normalization_264881: (
batch_normalization_264883: (
batch_normalization_264885:  
dense_6_264888:  
dense_6_264890: *
batch_normalization_1_264894: *
batch_normalization_1_264896: *
batch_normalization_1_264898: *
batch_normalization_1_264900:  
dense_7_264903: 
dense_7_264905:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_264863*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_264488?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_264257?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_264867dense_4_264869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_264504?
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_264742?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_5_264873dense_5_264875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_264528?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_264709?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0batch_normalization_264879batch_normalization_264881batch_normalization_264883batch_normalization_264885*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264331?
dense_6/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_6_264888dense_6_264890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_264561?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_264676?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0batch_normalization_1_264894batch_normalization_1_264896batch_normalization_1_264898batch_normalization_1_264900*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264413?
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0dense_7_264903dense_7_264905*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_264594w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?%
?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_266014

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

b
C__inference_dropout_layer_call_and_return_conditional_losses_265760

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_265748

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_4_layer_call_and_return_conditional_losses_265733

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
;
__inference__creator_266039
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2028*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
-__inference_sequential_3_layer_call_fn_265248

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???
	unknown_4:
??
	unknown_5:	?
	unknown_6:	? 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:  

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_264601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
6__inference_batch_normalization_1_layer_call_fn_265960

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
D
(__inference_dropout_layer_call_fn_265738

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_264515a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_264539

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
W
;__inference_global_average_pooling1d_1_layer_call_fn_265707

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_264257i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_265713

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
+
__inference_<lambda>_266107
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
-__inference_sequential_3_layer_call_fn_265001
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???
	unknown_4:
??
	unknown_5:	?
	unknown_6:	? 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:  

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_264909o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_265922

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
C__inference_dense_4_layer_call_and_return_conditional_losses_264504

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_2_layer_call_fn_265912

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_264572`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_1_layer_call_fn_265947

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
C__inference_dense_6_layer_call_and_return_conditional_losses_264561

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? N
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:????????? `
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_restore_fn_266094
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
-__inference_sequential_3_layer_call_fn_264646
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???
	unknown_4:
??
	unknown_5:	?
	unknown_6:	? 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:  

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_264601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?%
?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264331

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264284

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_265785

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_264539`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
-__inference_sequential_3_layer_call_fn_265295

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???
	unknown_4:
??
	unknown_5:	?
	unknown_6:	? 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:  

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_264909o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_264257

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

b
C__inference_dropout_layer_call_and_return_conditional_losses_264742

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264413

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265195
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
embedding_265149:???"
dense_4_265153:
??
dense_4_265155:	?!
dense_5_265159:	? 
dense_5_265161: (
batch_normalization_265165: (
batch_normalization_265167: (
batch_normalization_265169: (
batch_normalization_265171:  
dense_6_265174:  
dense_6_265176: *
batch_normalization_1_265180: *
batch_normalization_1_265182: *
batch_normalization_1_265184: *
batch_normalization_1_265186:  
dense_7_265189: 
dense_7_265191:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2p
text_vectorization/StringLowerStringLowertext_vectorization_input*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_265149*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_264488?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_264257?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_265153dense_4_265155*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_264504?
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_264742?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_5_265159dense_5_265161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_264528?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_264709?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0batch_normalization_265165batch_normalization_265167batch_normalization_265169batch_normalization_265171*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264331?
dense_6/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_6_265174dense_6_265176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_264561?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_264676?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0batch_normalization_1_265180batch_normalization_1_265182batch_normalization_1_265184batch_normalization_1_265186*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264413?
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0dense_7_265189dense_7_265191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_264594w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_2661027
3key_value_init2027_lookuptableimportv2_table_handle/
+key_value_init2027_lookuptableimportv2_keys1
-key_value_init2027_lookuptableimportv2_values	
identity??&key_value_init2027/LookupTableImportV2?
&key_value_init2027/LookupTableImportV2LookupTableImportV23key_value_init2027_lookuptableimportv2_table_handle+key_value_init2027_lookuptableimportv2_keys-key_value_init2027_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init2027/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init2027/LookupTableImportV2&key_value_init2027/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
?
?
(__inference_dense_5_layer_call_fn_265769

inputs
unknown:	? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_264528o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_6_layer_call_and_return_conditional_losses_265907

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? N
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:????????? `
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_264572

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_264247
text_vectorization_input\
Xsequential_3_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle]
Ysequential_3_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	9
5sequential_3_text_vectorization_string_lookup_equal_y<
8sequential_3_text_vectorization_string_lookup_selectv2_t	C
.sequential_3_embedding_embedding_lookup_264176:???G
3sequential_3_dense_4_matmul_readvariableop_resource:
??C
4sequential_3_dense_4_biasadd_readvariableop_resource:	?F
3sequential_3_dense_5_matmul_readvariableop_resource:	? B
4sequential_3_dense_5_biasadd_readvariableop_resource: P
Bsequential_3_batch_normalization_batchnorm_readvariableop_resource: T
Fsequential_3_batch_normalization_batchnorm_mul_readvariableop_resource: R
Dsequential_3_batch_normalization_batchnorm_readvariableop_1_resource: R
Dsequential_3_batch_normalization_batchnorm_readvariableop_2_resource: E
3sequential_3_dense_6_matmul_readvariableop_resource:  B
4sequential_3_dense_6_biasadd_readvariableop_resource: R
Dsequential_3_batch_normalization_1_batchnorm_readvariableop_resource: V
Hsequential_3_batch_normalization_1_batchnorm_mul_readvariableop_resource: T
Fsequential_3_batch_normalization_1_batchnorm_readvariableop_1_resource: T
Fsequential_3_batch_normalization_1_batchnorm_readvariableop_2_resource: E
3sequential_3_dense_7_matmul_readvariableop_resource: B
4sequential_3_dense_7_biasadd_readvariableop_resource:
identity??9sequential_3/batch_normalization/batchnorm/ReadVariableOp?;sequential_3/batch_normalization/batchnorm/ReadVariableOp_1?;sequential_3/batch_normalization/batchnorm/ReadVariableOp_2?=sequential_3/batch_normalization/batchnorm/mul/ReadVariableOp?;sequential_3/batch_normalization_1/batchnorm/ReadVariableOp?=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_1?=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_2??sequential_3/batch_normalization_1/batchnorm/mul/ReadVariableOp?+sequential_3/dense_4/BiasAdd/ReadVariableOp?*sequential_3/dense_4/MatMul/ReadVariableOp?+sequential_3/dense_5/BiasAdd/ReadVariableOp?*sequential_3/dense_5/MatMul/ReadVariableOp?+sequential_3/dense_6/BiasAdd/ReadVariableOp?*sequential_3/dense_6/MatMul/ReadVariableOp?+sequential_3/dense_7/BiasAdd/ReadVariableOp?*sequential_3/dense_7/MatMul/ReadVariableOp?'sequential_3/embedding/embedding_lookup?Ksequential_3/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2}
+sequential_3/text_vectorization/StringLowerStringLowertext_vectorization_input*'
_output_shapes
:??????????
2sequential_3/text_vectorization/StaticRegexReplaceStaticRegexReplace4sequential_3/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
'sequential_3/text_vectorization/SqueezeSqueeze;sequential_3/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????r
1sequential_3/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
9sequential_3/text_vectorization/StringSplit/StringSplitV2StringSplitV20sequential_3/text_vectorization/Squeeze:output:0:sequential_3/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
?sequential_3/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Asequential_3/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Asequential_3/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
9sequential_3/text_vectorization/StringSplit/strided_sliceStridedSliceCsequential_3/text_vectorization/StringSplit/StringSplitV2:indices:0Hsequential_3/text_vectorization/StringSplit/strided_slice/stack:output:0Jsequential_3/text_vectorization/StringSplit/strided_slice/stack_1:output:0Jsequential_3/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Asequential_3/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Csequential_3/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Csequential_3/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential_3/text_vectorization/StringSplit/strided_slice_1StridedSliceAsequential_3/text_vectorization/StringSplit/StringSplitV2:shape:0Jsequential_3/text_vectorization/StringSplit/strided_slice_1/stack:output:0Lsequential_3/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Lsequential_3/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
bsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastBsequential_3/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
dsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastDsequential_3/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
lsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapefsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
lsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
ksequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdusequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0usequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
psequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatertsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ysequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
ksequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastrsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
jsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxfsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
lsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
jsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ssequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0usequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
jsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulosequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumhsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumhsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
nsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
osequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountfsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0wsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
isequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumvsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0rsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
msequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
isequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2vsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0jsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0rsequential_3/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Ksequential_3/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Xsequential_3_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleBsequential_3/text_vectorization/StringSplit/StringSplitV2:values:0Ysequential_3_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
3sequential_3/text_vectorization/string_lookup/EqualEqualBsequential_3/text_vectorization/StringSplit/StringSplitV2:values:05sequential_3_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
6sequential_3/text_vectorization/string_lookup/SelectV2SelectV27sequential_3/text_vectorization/string_lookup/Equal:z:08sequential_3_text_vectorization_string_lookup_selectv2_tTsequential_3/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
6sequential_3/text_vectorization/string_lookup/IdentityIdentity?sequential_3/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????~
<sequential_3/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
4sequential_3/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
Csequential_3/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor=sequential_3/text_vectorization/RaggedToTensor/Const:output:0?sequential_3/text_vectorization/string_lookup/Identity:output:0Esequential_3/text_vectorization/RaggedToTensor/default_value:output:0Dsequential_3/text_vectorization/StringSplit/strided_slice_1:output:0Bsequential_3/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'sequential_3/embedding/embedding_lookupResourceGather.sequential_3_embedding_embedding_lookup_264176Lsequential_3/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*A
_class7
53loc:@sequential_3/embedding/embedding_lookup/264176*-
_output_shapes
:???????????*
dtype0?
0sequential_3/embedding/embedding_lookup/IdentityIdentity0sequential_3/embedding/embedding_lookup:output:0*
T0*A
_class7
53loc:@sequential_3/embedding/embedding_lookup/264176*-
_output_shapes
:????????????
2sequential_3/embedding/embedding_lookup/Identity_1Identity9sequential_3/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
>sequential_3/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
,sequential_3/global_average_pooling1d_1/MeanMean;sequential_3/embedding/embedding_lookup/Identity_1:output:0Gsequential_3/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
*sequential_3/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_3/dense_4/MatMulMatMul5sequential_3/global_average_pooling1d_1/Mean:output:02sequential_3/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_3/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_3/dense_4/BiasAddBiasAdd%sequential_3/dense_4/MatMul:product:03sequential_3/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
sequential_3/dense_4/EluElu%sequential_3/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
sequential_3/dropout/IdentityIdentity&sequential_3/dense_4/Elu:activations:0*
T0*(
_output_shapes
:???????????
*sequential_3/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_5_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
sequential_3/dense_5/MatMulMatMul&sequential_3/dropout/Identity:output:02sequential_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_3/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_3/dense_5/BiasAddBiasAdd%sequential_3/dense_5/MatMul:product:03sequential_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
sequential_3/dense_5/EluElu%sequential_3/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
sequential_3/dropout_1/IdentityIdentity&sequential_3/dense_5/Elu:activations:0*
T0*'
_output_shapes
:????????? ?
9sequential_3/batch_normalization/batchnorm/ReadVariableOpReadVariableOpBsequential_3_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0u
0sequential_3/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
.sequential_3/batch_normalization/batchnorm/addAddV2Asequential_3/batch_normalization/batchnorm/ReadVariableOp:value:09sequential_3/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: ?
0sequential_3/batch_normalization/batchnorm/RsqrtRsqrt2sequential_3/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: ?
=sequential_3/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpFsequential_3_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0?
.sequential_3/batch_normalization/batchnorm/mulMul4sequential_3/batch_normalization/batchnorm/Rsqrt:y:0Esequential_3/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
0sequential_3/batch_normalization/batchnorm/mul_1Mul(sequential_3/dropout_1/Identity:output:02sequential_3/batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? ?
;sequential_3/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpDsequential_3_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0?
0sequential_3/batch_normalization/batchnorm/mul_2MulCsequential_3/batch_normalization/batchnorm/ReadVariableOp_1:value:02sequential_3/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: ?
;sequential_3/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpDsequential_3_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0?
.sequential_3/batch_normalization/batchnorm/subSubCsequential_3/batch_normalization/batchnorm/ReadVariableOp_2:value:04sequential_3/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ?
0sequential_3/batch_normalization/batchnorm/add_1AddV24sequential_3/batch_normalization/batchnorm/mul_1:z:02sequential_3/batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? ?
*sequential_3/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0?
sequential_3/dense_6/MatMulMatMul4sequential_3/batch_normalization/batchnorm/add_1:z:02sequential_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_3/dense_6/BiasAddBiasAdd%sequential_3/dense_6/MatMul:product:03sequential_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
sequential_3/dense_6/EluElu%sequential_3/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
sequential_3/dropout_2/IdentityIdentity&sequential_3/dense_6/Elu:activations:0*
T0*'
_output_shapes
:????????? ?
;sequential_3/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0w
2sequential_3/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
0sequential_3/batch_normalization_1/batchnorm/addAddV2Csequential_3/batch_normalization_1/batchnorm/ReadVariableOp:value:0;sequential_3/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: ?
2sequential_3/batch_normalization_1/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: ?
?sequential_3/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0?
0sequential_3/batch_normalization_1/batchnorm/mulMul6sequential_3/batch_normalization_1/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
2sequential_3/batch_normalization_1/batchnorm/mul_1Mul(sequential_3/dropout_2/Identity:output:04sequential_3/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? ?
=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_3_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0?
2sequential_3/batch_normalization_1/batchnorm/mul_2MulEsequential_3/batch_normalization_1/batchnorm/ReadVariableOp_1:value:04sequential_3/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: ?
=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_3_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0?
0sequential_3/batch_normalization_1/batchnorm/subSubEsequential_3/batch_normalization_1/batchnorm/ReadVariableOp_2:value:06sequential_3/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ?
2sequential_3/batch_normalization_1/batchnorm/add_1AddV26sequential_3/batch_normalization_1/batchnorm/mul_1:z:04sequential_3/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? ?
*sequential_3/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential_3/dense_7/MatMulMatMul6sequential_3/batch_normalization_1/batchnorm/add_1:z:02sequential_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_3/dense_7/BiasAddBiasAdd%sequential_3/dense_7/MatMul:product:03sequential_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_3/dense_7/SoftmaxSoftmax%sequential_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&sequential_3/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp:^sequential_3/batch_normalization/batchnorm/ReadVariableOp<^sequential_3/batch_normalization/batchnorm/ReadVariableOp_1<^sequential_3/batch_normalization/batchnorm/ReadVariableOp_2>^sequential_3/batch_normalization/batchnorm/mul/ReadVariableOp<^sequential_3/batch_normalization_1/batchnorm/ReadVariableOp>^sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_1>^sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_2@^sequential_3/batch_normalization_1/batchnorm/mul/ReadVariableOp,^sequential_3/dense_4/BiasAdd/ReadVariableOp+^sequential_3/dense_4/MatMul/ReadVariableOp,^sequential_3/dense_5/BiasAdd/ReadVariableOp+^sequential_3/dense_5/MatMul/ReadVariableOp,^sequential_3/dense_6/BiasAdd/ReadVariableOp+^sequential_3/dense_6/MatMul/ReadVariableOp,^sequential_3/dense_7/BiasAdd/ReadVariableOp+^sequential_3/dense_7/MatMul/ReadVariableOp(^sequential_3/embedding/embedding_lookupL^sequential_3/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2v
9sequential_3/batch_normalization/batchnorm/ReadVariableOp9sequential_3/batch_normalization/batchnorm/ReadVariableOp2z
;sequential_3/batch_normalization/batchnorm/ReadVariableOp_1;sequential_3/batch_normalization/batchnorm/ReadVariableOp_12z
;sequential_3/batch_normalization/batchnorm/ReadVariableOp_2;sequential_3/batch_normalization/batchnorm/ReadVariableOp_22~
=sequential_3/batch_normalization/batchnorm/mul/ReadVariableOp=sequential_3/batch_normalization/batchnorm/mul/ReadVariableOp2z
;sequential_3/batch_normalization_1/batchnorm/ReadVariableOp;sequential_3/batch_normalization_1/batchnorm/ReadVariableOp2~
=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_1=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_12~
=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_2=sequential_3/batch_normalization_1/batchnorm/ReadVariableOp_22?
?sequential_3/batch_normalization_1/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_1/batchnorm/mul/ReadVariableOp2Z
+sequential_3/dense_4/BiasAdd/ReadVariableOp+sequential_3/dense_4/BiasAdd/ReadVariableOp2X
*sequential_3/dense_4/MatMul/ReadVariableOp*sequential_3/dense_4/MatMul/ReadVariableOp2Z
+sequential_3/dense_5/BiasAdd/ReadVariableOp+sequential_3/dense_5/BiasAdd/ReadVariableOp2X
*sequential_3/dense_5/MatMul/ReadVariableOp*sequential_3/dense_5/MatMul/ReadVariableOp2Z
+sequential_3/dense_6/BiasAdd/ReadVariableOp+sequential_3/dense_6/BiasAdd/ReadVariableOp2X
*sequential_3/dense_6/MatMul/ReadVariableOp*sequential_3/dense_6/MatMul/ReadVariableOp2Z
+sequential_3/dense_7/BiasAdd/ReadVariableOp+sequential_3/dense_7/BiasAdd/ReadVariableOp2X
*sequential_3/dense_7/MatMul/ReadVariableOp*sequential_3/dense_7/MatMul/ReadVariableOp2R
'sequential_3/embedding/embedding_lookup'sequential_3/embedding/embedding_lookup2?
Ksequential_3/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Ksequential_3/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?

H__inference_sequential_3_layer_call_and_return_conditional_losses_264601

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
embedding_264489:???"
dense_4_264505:
??
dense_4_264507:	?!
dense_5_264529:	? 
dense_5_264531: (
batch_normalization_264541: (
batch_normalization_264543: (
batch_normalization_264545: (
batch_normalization_264547:  
dense_6_264562:  
dense_6_264564: *
batch_normalization_1_264574: *
batch_normalization_1_264576: *
batch_normalization_1_264578: *
batch_normalization_1_264580:  
dense_7_264595: 
dense_7_264597:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_264489*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_264488?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_264257?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_264505dense_4_264507*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_264504?
dropout/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_264515?
dense_5/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_5_264529dense_5_264531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_264528?
dropout_1/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_264539?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0batch_normalization_264541batch_normalization_264543batch_normalization_264545batch_normalization_264547*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264284?
dense_6/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_6_264562dense_6_264564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_264561?
dropout_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_264572?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0batch_normalization_1_264574batch_normalization_1_264576batch_normalization_1_264578batch_normalization_1_264580*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_264366?
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0dense_7_264595dense_7_264597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_264594w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
a
(__inference_dropout_layer_call_fn_265743

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_264742p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265417

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	6
!embedding_embedding_lookup_265346:???:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	? 5
'dense_5_biasadd_readvariableop_resource: C
5batch_normalization_batchnorm_readvariableop_resource: G
9batch_normalization_batchnorm_mul_readvariableop_resource: E
7batch_normalization_batchnorm_readvariableop_1_resource: E
7batch_normalization_batchnorm_readvariableop_2_resource: 8
&dense_6_matmul_readvariableop_resource:  5
'dense_6_biasadd_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: G
9batch_normalization_1_batchnorm_readvariableop_1_resource: G
9batch_normalization_1_batchnorm_readvariableop_2_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identity??,batch_normalization/batchnorm/ReadVariableOp?.batch_normalization/batchnorm/ReadVariableOp_1?.batch_normalization/batchnorm/ReadVariableOp_2?0batch_normalization/batchnorm/mul/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?0batch_normalization_1/batchnorm/ReadVariableOp_1?0batch_normalization_1/batchnorm/ReadVariableOp_2?2batch_normalization_1/batchnorm/mul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_265346?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/265346*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/265346*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d_1/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_4/MatMulMatMul(global_average_pooling1d_1/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
dense_4/EluEludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????j
dropout/IdentityIdentitydense_4/Elu:activations:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_5/MatMulMatMuldropout/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
dense_5/EluEludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:????????? k
dropout_1/IdentityIdentitydense_5/Elu:activations:0*
T0*'
_output_shapes
:????????? ?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: x
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: ?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
#batch_normalization/batchnorm/mul_1Muldropout_1/Identity:output:0%batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? ?
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0?
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: ?
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0?
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? ?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0?
dense_6/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
dense_6/EluEludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? k
dropout_2/IdentityIdentitydense_6/Elu:activations:0*
T0*'
_output_shapes
:????????? ?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: |
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: ?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
%batch_normalization_1/batchnorm/mul_1Muldropout_2/Identity:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? ?
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0?
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: ?
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0?
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? ?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_7/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_265807

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_layer_call_fn_265820

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_264284o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference__initializer_2660477
3key_value_init2027_lookuptableimportv2_table_handle/
+key_value_init2027_lookuptableimportv2_keys1
-key_value_init2027_lookuptableimportv2_values	
identity??&key_value_init2027/LookupTableImportV2?
&key_value_init2027/LookupTableImportV2LookupTableImportV23key_value_init2027_lookuptableimportv2_table_handle+key_value_init2027_lookuptableimportv2_keys-key_value_init2027_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init2027/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init2027/LookupTableImportV2&key_value_init2027/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
?m
?
__inference__traced_save_266300
file_prefix3
/savev2_embedding_embeddings_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
value?B?7B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_negatives_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *E
dtypes;
927		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :???:
??:?:	? : : : : : :  : : : : : : :: : : : : ::: : :::???:
??:?:	? : : : :  : : : : ::???:
??:?:	? : : : :  : : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:???:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	? : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: :$
 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::'#
!
_output_shapes
:???:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:% !

_output_shapes
:	? : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: :$$ 

_output_shapes

:  : %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
: :$( 

_output_shapes

: : )

_output_shapes
::'*#
!
_output_shapes
:???:&+"
 
_output_shapes
:
??:!,

_output_shapes	
:?:%-!

_output_shapes
:	? : .

_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: :$1 

_output_shapes

:  : 2

_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: :$5 

_output_shapes

: : 6

_output_shapes
::7

_output_shapes
: 
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_264594

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
C__inference_dense_5_layer_call_and_return_conditional_losses_265780

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? N
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:????????? `
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_265980

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_264676

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?%
?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_265887

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_265637
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???
	unknown_4:
??
	unknown_5:	?
	unknown_6:	? 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:  

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_264247o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_embedding_layer_call_and_return_conditional_losses_264488

inputs	,
embedding_lookup_264482:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_264482inputs*
Tindices0	**
_class 
loc:@embedding_lookup/264482*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/264482*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
text_vectorization_inputA
*serving_default_text_vectorization_input:0?????????=
dense_72
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
?

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2_random_generator
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[_random_generator
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?
^axis
	_gamma
`beta
amoving_mean
bmoving_variance
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?

ikernel
jbias
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
?
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_ratem?&m?'m?5m?6m?Em?Fm?Om?Pm?_m?`m?im?jm?v?&v?'v?5v?6v?Ev?Fv?Ov?Pv?_v?`v?iv?jv?"
	optimizer
?
1
&2
'3
54
65
E6
F7
G8
H9
O10
P11
_12
`13
a14
b15
i16
j17"
trackable_list_wrapper
~
0
&1
'2
53
64
E5
F6
O7
P8
_9
`10
i11
j12"
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_sequential_3_layer_call_fn_264646
-__inference_sequential_3_layer_call_fn_265248
-__inference_sequential_3_layer_call_fn_265295
-__inference_sequential_3_layer_call_fn_265001?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265417
H__inference_sequential_3_layer_call_and_return_conditional_losses_265588
H__inference_sequential_3_layer_call_and_return_conditional_losses_265098
H__inference_sequential_3_layer_call_and_return_conditional_losses_265195?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_264247text_vectorization_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
{serving_default"
signature_map
L
|lookup_table
}token_counts
~	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_265686?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
):'???2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_embedding_layer_call_fn_265693?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_embedding_layer_call_and_return_conditional_losses_265702?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
?2?
;__inference_global_average_pooling1d_1_layer_call_fn_265707?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_265713?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
": 
??2dense_4/kernel
:?2dense_4/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_4_layer_call_fn_265722?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_4_layer_call_and_return_conditional_losses_265733?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
(__inference_dropout_layer_call_fn_265738
(__inference_dropout_layer_call_fn_265743?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dropout_layer_call_and_return_conditional_losses_265748
C__inference_dropout_layer_call_and_return_conditional_losses_265760?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:	? 2dense_5/kernel
: 2dense_5/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_5_layer_call_fn_265769?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_5_layer_call_and_return_conditional_losses_265780?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
*__inference_dropout_1_layer_call_fn_265785
*__inference_dropout_1_layer_call_fn_265790?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_265795
E__inference_dropout_1_layer_call_and_return_conditional_losses_265807?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
':% 2batch_normalization/gamma
&:$ 2batch_normalization/beta
/:-  (2batch_normalization/moving_mean
3:1  (2#batch_normalization/moving_variance
<
E0
F1
G2
H3"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
?2?
4__inference_batch_normalization_layer_call_fn_265820
4__inference_batch_normalization_layer_call_fn_265833?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_265853
O__inference_batch_normalization_layer_call_and_return_conditional_losses_265887?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 :  2dense_6/kernel
: 2dense_6/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_6_layer_call_fn_265896?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_6_layer_call_and_return_conditional_losses_265907?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
*__inference_dropout_2_layer_call_fn_265912
*__inference_dropout_2_layer_call_fn_265917?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_2_layer_call_and_return_conditional_losses_265922
E__inference_dropout_2_layer_call_and_return_conditional_losses_265934?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
<
_0
`1
a2
b3"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
?2?
6__inference_batch_normalization_1_layer_call_fn_265947
6__inference_batch_normalization_1_layer_call_fn_265960?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_265980
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_266014?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 : 2dense_7/kernel
:2dense_7/bias
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_7_layer_call_fn_266023?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_7_layer_call_and_return_conditional_losses_266034?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
G1
H2
a3
b4"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_265637text_vectorization_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
v
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_266039?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_266047?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_266052?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_266057?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_266062?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_266067?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,???2Adam/embedding/embeddings/m
':%
??2Adam/dense_4/kernel/m
 :?2Adam/dense_4/bias/m
&:$	? 2Adam/dense_5/kernel/m
: 2Adam/dense_5/bias/m
,:* 2 Adam/batch_normalization/gamma/m
+:) 2Adam/batch_normalization/beta/m
%:#  2Adam/dense_6/kernel/m
: 2Adam/dense_6/bias/m
.:, 2"Adam/batch_normalization_1/gamma/m
-:+ 2!Adam/batch_normalization_1/beta/m
%:# 2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
.:,???2Adam/embedding/embeddings/v
':%
??2Adam/dense_4/kernel/v
 :?2Adam/dense_4/bias/v
&:$	? 2Adam/dense_5/kernel/v
: 2Adam/dense_5/bias/v
,:* 2 Adam/batch_normalization/gamma/v
+:) 2Adam/batch_normalization/beta/v
%:#  2Adam/dense_6/kernel/v
: 2Adam/dense_6/bias/v
.:, 2"Adam/batch_normalization_1/gamma/v
-:+ 2!Adam/batch_normalization_1/beta/v
%:# 2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
?B?
__inference_save_fn_266086checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_266094restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_57
__inference__creator_266039?

? 
? "? 7
__inference__creator_266057?

? 
? "? 9
__inference__destroyer_266052?

? 
? "? 9
__inference__destroyer_266067?

? 
? "? B
__inference__initializer_266047|???

? 
? "? ;
__inference__initializer_266062?

? 
? "? ?
!__inference__wrapped_model_264247?|???&'56HEGFOPb_a`ijA?>
7?4
2?/
text_vectorization_input?????????
? "1?.
,
dense_7!?
dense_7?????????o
__inference_adapt_step_265686N}?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_265980bb_a`3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_266014bab_`3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
6__inference_batch_normalization_1_layer_call_fn_265947Ub_a`3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
6__inference_batch_normalization_1_layer_call_fn_265960Uab_`3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_265853bHEGF3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
O__inference_batch_normalization_layer_call_and_return_conditional_losses_265887bGHEF3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
4__inference_batch_normalization_layer_call_fn_265820UHEGF3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
4__inference_batch_normalization_layer_call_fn_265833UGHEF3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
C__inference_dense_4_layer_call_and_return_conditional_losses_265733^&'0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_4_layer_call_fn_265722Q&'0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_5_layer_call_and_return_conditional_losses_265780]560?-
&?#
!?
inputs??????????
? "%?"
?
0????????? 
? |
(__inference_dense_5_layer_call_fn_265769P560?-
&?#
!?
inputs??????????
? "?????????? ?
C__inference_dense_6_layer_call_and_return_conditional_losses_265907\OP/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? {
(__inference_dense_6_layer_call_fn_265896OOP/?,
%?"
 ?
inputs????????? 
? "?????????? ?
C__inference_dense_7_layer_call_and_return_conditional_losses_266034\ij/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_7_layer_call_fn_266023Oij/?,
%?"
 ?
inputs????????? 
? "???????????
E__inference_dropout_1_layer_call_and_return_conditional_losses_265795\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_265807\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? }
*__inference_dropout_1_layer_call_fn_265785O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? }
*__inference_dropout_1_layer_call_fn_265790O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_265922\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_265934\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? }
*__inference_dropout_2_layer_call_fn_265912O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? }
*__inference_dropout_2_layer_call_fn_265917O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
C__inference_dropout_layer_call_and_return_conditional_losses_265748^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_dropout_layer_call_and_return_conditional_losses_265760^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_dropout_layer_call_fn_265738Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_dropout_layer_call_fn_265743Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_embedding_layer_call_and_return_conditional_losses_265702b0?-
&?#
!?
inputs??????????	
? "+?(
!?
0???????????
? ?
*__inference_embedding_layer_call_fn_265693U0?-
&?#
!?
inputs??????????	
? "?????????????
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_265713{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling1d_1_layer_call_fn_265707nI?F
??<
6?3
inputs'???????????????????????????

 
? "!???????????????????z
__inference_restore_fn_266094Y}K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_266086?}&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265098?|???&'56HEGFOPb_a`ijI?F
??<
2?/
text_vectorization_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265195?|???&'56GHEFOPab_`ijI?F
??<
2?/
text_vectorization_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265417z|???&'56HEGFOPb_a`ij7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_265588z|???&'56GHEFOPab_`ij7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_3_layer_call_fn_264646|???&'56HEGFOPb_a`ijI?F
??<
2?/
text_vectorization_input?????????
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_265001|???&'56GHEFOPab_`ijI?F
??<
2?/
text_vectorization_input?????????
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_265248m|???&'56HEGFOPb_a`ij7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_265295m|???&'56GHEFOPab_`ij7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_265637?|???&'56HEGFOPb_a`ij]?Z
? 
S?P
N
text_vectorization_input2?/
text_vectorization_input?????????"1?.
,
dense_7!?
dense_7?????????