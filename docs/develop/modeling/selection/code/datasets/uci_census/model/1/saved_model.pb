’Г
Ь(х'
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
ґ
AsString

input"T

output"
Ttype:
	2	
"
	precisionint€€€€€€€€€"

scientificbool( "
shortestbool( "
widthint€€€€€€€€€"
fillstring 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
°
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
TvaltypeИ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Н
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
delete_old_dirsbool(И

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
п
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
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
0
Sigmoid
x"T
y"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ј
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
Г
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
ц
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.7.02v1.7.0-3-g024aecf414тр
Р
-global_step/Initializer/zeros/shape_as_tensorConst*
valueB *
_class
loc:@global_step*
dtype0*
_output_shapes
: 
Е
#global_step/Initializer/zeros/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step
ћ
global_step/Initializer/zerosFill-global_step/Initializer/zeros/shape_as_tensor#global_step/Initializer/zeros/Const*
T0	*

index_type0*
_class
loc:@global_step*
_output_shapes
: 
П
global_step
VariableV2*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
U
ParseExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_5Const*
_output_shapes
: *
valueB	 *
dtype0	
W
ParseExample/Const_6Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_7Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_8Const*
_output_shapes
: *
valueB *
dtype0
W
ParseExample/Const_9Const*
_output_shapes
: *
valueB *
dtype0
X
ParseExample/Const_10Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_11Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_12Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_13Const*
dtype0*
_output_shapes
: *
valueB 
b
ParseExample/ParseExample/namesConst*
dtype0*
_output_shapes
: *
valueB 
j
&ParseExample/ParseExample/dense_keys_0Const*
valueB	 BAge*
dtype0*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_1Const*
valueB BCapital-Gain*
dtype0*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_2Const*
valueB BCapital-Loss*
dtype0*
_output_shapes
: 
n
&ParseExample/ParseExample/dense_keys_3Const*
valueB BCountry*
dtype0*
_output_shapes
: 
p
&ParseExample/ParseExample/dense_keys_4Const*
valueB B	Education*
dtype0*
_output_shapes
: 
t
&ParseExample/ParseExample/dense_keys_5Const*
valueB BEducation-Num*
dtype0*
_output_shapes
: 
u
&ParseExample/ParseExample/dense_keys_6Const*
valueB BHours-per-week*
dtype0*
_output_shapes
: 
u
&ParseExample/ParseExample/dense_keys_7Const*
valueB BMarital-Status*
dtype0*
_output_shapes
: 
q
&ParseExample/ParseExample/dense_keys_8Const*
valueB B
Occupation*
dtype0*
_output_shapes
: 
k
&ParseExample/ParseExample/dense_keys_9Const*
valueB
 BRace*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_10Const*
_output_shapes
: *
valueB BRelationship*
dtype0
k
'ParseExample/ParseExample/dense_keys_11Const*
_output_shapes
: *
valueB	 BSex*
dtype0
n
'ParseExample/ParseExample/dense_keys_12Const*
valueB BTarget*
dtype0*
_output_shapes
: 
q
'ParseExample/ParseExample/dense_keys_13Const*
valueB B	Workclass*
dtype0*
_output_shapes
: 
і

ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7&ParseExample/ParseExample/dense_keys_8&ParseExample/ParseExample/dense_keys_9'ParseExample/ParseExample/dense_keys_10'ParseExample/ParseExample/dense_keys_11'ParseExample/ParseExample/dense_keys_12'ParseExample/ParseExample/dense_keys_13ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11ParseExample/Const_12ParseExample/Const_13*
Ndense*и
_output_shapes’
“:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Nsparse *
sparse_types
 *.
dense_shapes
: : : : : : : : : : : : : : *
Tdense
2						
q
&linear/linear_model/Age/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
±
"linear/linear_model/Age/ExpandDims
ExpandDimsParseExample/ParseExample&linear/linear_model/Age/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:€€€€€€€€€
М
linear/linear_model/Age/ToFloatCast"linear/linear_model/Age/ExpandDims*

SrcT0	*'
_output_shapes
:€€€€€€€€€*

DstT0
|
linear/linear_model/Age/ShapeShapelinear/linear_model/Age/ToFloat*
_output_shapes
:*
T0*
out_type0
u
+linear/linear_model/Age/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-linear/linear_model/Age/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-linear/linear_model/Age/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
с
%linear/linear_model/Age/strided_sliceStridedSlicelinear/linear_model/Age/Shape+linear/linear_model/Age/strided_slice/stack-linear/linear_model/Age/strided_slice/stack_1-linear/linear_model/Age/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
i
'linear/linear_model/Age/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ј
%linear/linear_model/Age/Reshape/shapePack%linear/linear_model/Age/strided_slice'linear/linear_model/Age/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
≤
linear/linear_model/Age/ReshapeReshapelinear/linear_model/Age/ToFloat%linear/linear_model/Age/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
‘
Hlinear/linear_model/Age/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *9
_class/
-+loc:@linear/linear_model/Age/weights/part_0*
dtype0*
_output_shapes
:
Њ
>linear/linear_model/Age/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@linear/linear_model/Age/weights/part_0*
dtype0*
_output_shapes
: 
ј
8linear/linear_model/Age/weights/part_0/Initializer/zerosFillHlinear/linear_model/Age/weights/part_0/Initializer/zeros/shape_as_tensor>linear/linear_model/Age/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*9
_class/
-+loc:@linear/linear_model/Age/weights/part_0*
_output_shapes

:
’
&linear/linear_model/Age/weights/part_0
VariableV2*
shared_name *9
_class/
-+loc:@linear/linear_model/Age/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
¶
-linear/linear_model/Age/weights/part_0/AssignAssign&linear/linear_model/Age/weights/part_08linear/linear_model/Age/weights/part_0/Initializer/zeros*9
_class/
-+loc:@linear/linear_model/Age/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
√
+linear/linear_model/Age/weights/part_0/readIdentity&linear/linear_model/Age/weights/part_0*
_output_shapes

:*
T0*9
_class/
-+loc:@linear/linear_model/Age/weights/part_0
Б
linear/linear_model/Age/weightsIdentity+linear/linear_model/Age/weights/part_0/read*
T0*
_output_shapes

:
»
$linear/linear_model/Age/weighted_sumMatMullinear/linear_model/Age/Reshapelinear/linear_model/Age/weights*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
z
/linear/linear_model/Capital-Gain/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
≈
+linear/linear_model/Capital-Gain/ExpandDims
ExpandDimsParseExample/ParseExample:1/linear/linear_model/Capital-Gain/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:€€€€€€€€€
Ю
(linear/linear_model/Capital-Gain/ToFloatCast+linear/linear_model/Capital-Gain/ExpandDims*

SrcT0	*'
_output_shapes
:€€€€€€€€€*

DstT0
О
&linear/linear_model/Capital-Gain/ShapeShape(linear/linear_model/Capital-Gain/ToFloat*
T0*
out_type0*
_output_shapes
:
~
4linear/linear_model/Capital-Gain/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
А
6linear/linear_model/Capital-Gain/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6linear/linear_model/Capital-Gain/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.linear/linear_model/Capital-Gain/strided_sliceStridedSlice&linear/linear_model/Capital-Gain/Shape4linear/linear_model/Capital-Gain/strided_slice/stack6linear/linear_model/Capital-Gain/strided_slice/stack_16linear/linear_model/Capital-Gain/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
0linear/linear_model/Capital-Gain/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
“
.linear/linear_model/Capital-Gain/Reshape/shapePack.linear/linear_model/Capital-Gain/strided_slice0linear/linear_model/Capital-Gain/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Ќ
(linear/linear_model/Capital-Gain/ReshapeReshape(linear/linear_model/Capital-Gain/ToFloat.linear/linear_model/Capital-Gain/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
ж
Qlinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0*
dtype0*
_output_shapes
:
–
Glinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0*
dtype0*
_output_shapes
: 
д
Alinear/linear_model/Capital-Gain/weights/part_0/Initializer/zerosFillQlinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros/shape_as_tensorGlinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros/Const*
_output_shapes

:*
T0*

index_type0*B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0
з
/linear/linear_model/Capital-Gain/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0*
	container *
shape
:
 
6linear/linear_model/Capital-Gain/weights/part_0/AssignAssign/linear/linear_model/Capital-Gain/weights/part_0Alinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0*
validate_shape(*
_output_shapes

:
ё
4linear/linear_model/Capital-Gain/weights/part_0/readIdentity/linear/linear_model/Capital-Gain/weights/part_0*
_output_shapes

:*
T0*B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0
У
(linear/linear_model/Capital-Gain/weightsIdentity4linear/linear_model/Capital-Gain/weights/part_0/read*
_output_shapes

:*
T0
г
-linear/linear_model/Capital-Gain/weighted_sumMatMul(linear/linear_model/Capital-Gain/Reshape(linear/linear_model/Capital-Gain/weights*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
z
/linear/linear_model/Capital-Loss/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
≈
+linear/linear_model/Capital-Loss/ExpandDims
ExpandDimsParseExample/ParseExample:2/linear/linear_model/Capital-Loss/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:€€€€€€€€€
Ю
(linear/linear_model/Capital-Loss/ToFloatCast+linear/linear_model/Capital-Loss/ExpandDims*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
О
&linear/linear_model/Capital-Loss/ShapeShape(linear/linear_model/Capital-Loss/ToFloat*
T0*
out_type0*
_output_shapes
:
~
4linear/linear_model/Capital-Loss/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6linear/linear_model/Capital-Loss/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6linear/linear_model/Capital-Loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.linear/linear_model/Capital-Loss/strided_sliceStridedSlice&linear/linear_model/Capital-Loss/Shape4linear/linear_model/Capital-Loss/strided_slice/stack6linear/linear_model/Capital-Loss/strided_slice/stack_16linear/linear_model/Capital-Loss/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
0linear/linear_model/Capital-Loss/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
“
.linear/linear_model/Capital-Loss/Reshape/shapePack.linear/linear_model/Capital-Loss/strided_slice0linear/linear_model/Capital-Loss/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
Ќ
(linear/linear_model/Capital-Loss/ReshapeReshape(linear/linear_model/Capital-Loss/ToFloat.linear/linear_model/Capital-Loss/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ж
Qlinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      *B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0
–
Glinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0*
dtype0*
_output_shapes
: 
д
Alinear/linear_model/Capital-Loss/weights/part_0/Initializer/zerosFillQlinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros/shape_as_tensorGlinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros/Const*
_output_shapes

:*
T0*

index_type0*B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0
з
/linear/linear_model/Capital-Loss/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0*
	container *
shape
:
 
6linear/linear_model/Capital-Loss/weights/part_0/AssignAssign/linear/linear_model/Capital-Loss/weights/part_0Alinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0*
validate_shape(
ё
4linear/linear_model/Capital-Loss/weights/part_0/readIdentity/linear/linear_model/Capital-Loss/weights/part_0*B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0*
_output_shapes

:*
T0
У
(linear/linear_model/Capital-Loss/weightsIdentity4linear/linear_model/Capital-Loss/weights/part_0/read*
T0*
_output_shapes

:
г
-linear/linear_model/Capital-Loss/weighted_sumMatMul(linear/linear_model/Capital-Loss/Reshape(linear/linear_model/Capital-Loss/weights*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
u
*linear/linear_model/Country/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ї
&linear/linear_model/Country/ExpandDims
ExpandDimsParseExample/ParseExample:3*linear/linear_model/Country/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
{
:linear/linear_model/Country/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
÷
4linear/linear_model/Country/to_sparse_input/NotEqualNotEqual&linear/linear_model/Country/ExpandDims:linear/linear_model/Country/to_sparse_input/ignore_value/x*'
_output_shapes
:€€€€€€€€€*
T0
§
3linear/linear_model/Country/to_sparse_input/indicesWhere4linear/linear_model/Country/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€*
T0

я
2linear/linear_model/Country/to_sparse_input/valuesGatherNd&linear/linear_model/Country/ExpandDims3linear/linear_model/Country/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:€€€€€€€€€
Э
7linear/linear_model/Country/to_sparse_input/dense_shapeShape&linear/linear_model/Country/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Э
0linear/linear_model/Country/Country_lookup/ConstConst*Є
valueЃBЂ*BUnited-StatesBCubaBJamaicaBIndiaB?BMexicoBSouthBPuerto-RicoBHondurasBEnglandBCanadaBGermanyBIranBPhilippinesBItalyBPolandBColumbiaBCambodiaBThailandBEcuadorBLaosBTaiwanBHaitiBPortugalBDominican-RepublicBEl-SalvadorBFranceB	GuatemalaBChinaBJapanB
YugoslaviaBPeruBOutlying-US(Guam-USVI-etc)BScotlandBTrinadad&TobagoBGreeceB	NicaraguaBVietnamBHongBIrelandBHungaryBHoland-Netherlands*
dtype0*
_output_shapes
:*
q
/linear/linear_model/Country/Country_lookup/SizeConst*
value	B :**
dtype0*
_output_shapes
: 
x
6linear/linear_model/Country/Country_lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
x
6linear/linear_model/Country/Country_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
В
0linear/linear_model/Country/Country_lookup/rangeRange6linear/linear_model/Country/Country_lookup/range/start/linear/linear_model/Country/Country_lookup/Size6linear/linear_model/Country/Country_lookup/range/delta*

Tidx0*
_output_shapes
:*
†
2linear/linear_model/Country/Country_lookup/ToInt64Cast0linear/linear_model/Country/Country_lookup/range*
_output_shapes
:**

DstT0	*

SrcT0
Ѕ
5linear/linear_model/Country/Country_lookup/hash_tableHashTableV2*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *
shared_name 
Ж
;linear/linear_model/Country/Country_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
К
@linear/linear_model/Country/Country_lookup/hash_table/table_initInitializeTableV25linear/linear_model/Country/Country_lookup/hash_table0linear/linear_model/Country/Country_lookup/Const2linear/linear_model/Country/Country_lookup/ToInt64*

Tkey0*

Tval0	
¶
-linear/linear_model/Country/hash_table_LookupLookupTableFindV25linear/linear_model/Country/Country_lookup/hash_table2linear/linear_model/Country/to_sparse_input/values;linear/linear_model/Country/Country_lookup/hash_table/Const*#
_output_shapes
:€€€€€€€€€*	
Tin0*

Tout0	
Ы
&linear/linear_model/Country/Shape/CastCast7linear/linear_model/Country/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
y
/linear/linear_model/Country/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
{
1linear/linear_model/Country/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
{
1linear/linear_model/Country/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
К
)linear/linear_model/Country/strided_sliceStridedSlice&linear/linear_model/Country/Shape/Cast/linear/linear_model/Country/strided_slice/stack1linear/linear_model/Country/strided_slice/stack_11linear/linear_model/Country/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
$linear/linear_model/Country/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
µ
"linear/linear_model/Country/Cast/xPack)linear/linear_model/Country/strided_slice$linear/linear_model/Country/Cast/x/1*
_output_shapes
:*
T0*

axis *
N
А
 linear/linear_model/Country/CastCast"linear/linear_model/Country/Cast/x*
_output_shapes
:*

DstT0	*

SrcT0
щ
)linear/linear_model/Country/SparseReshapeSparseReshape3linear/linear_model/Country/to_sparse_input/indices7linear/linear_model/Country/to_sparse_input/dense_shape linear/linear_model/Country/Cast*-
_output_shapes
:€€€€€€€€€:
Ы
2linear/linear_model/Country/SparseReshape/IdentityIdentity-linear/linear_model/Country/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
№
Llinear/linear_model/Country/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"*      *=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
dtype0*
_output_shapes
:
∆
Blinear/linear_model/Country/weights/part_0/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *=
_class3
1/loc:@linear/linear_model/Country/weights/part_0
–
<linear/linear_model/Country/weights/part_0/Initializer/zerosFillLlinear/linear_model/Country/weights/part_0/Initializer/zeros/shape_as_tensorBlinear/linear_model/Country/weights/part_0/Initializer/zeros/Const*

index_type0*=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
_output_shapes

:**
T0
Ё
*linear/linear_model/Country/weights/part_0
VariableV2*
dtype0*
_output_shapes

:**
shared_name *=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
	container *
shape
:*
ґ
1linear/linear_model/Country/weights/part_0/AssignAssign*linear/linear_model/Country/weights/part_0<linear/linear_model/Country/weights/part_0/Initializer/zeros*
T0*=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
validate_shape(*
_output_shapes

:**
use_locking(
ѕ
/linear/linear_model/Country/weights/part_0/readIdentity*linear/linear_model/Country/weights/part_0*
T0*=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
_output_shapes

:*
~
4linear/linear_model/Country/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
}
3linear/linear_model/Country/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Б
.linear/linear_model/Country/weighted_sum/SliceSlice+linear/linear_model/Country/SparseReshape:14linear/linear_model/Country/weighted_sum/Slice/begin3linear/linear_model/Country/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
x
.linear/linear_model/Country/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
”
-linear/linear_model/Country/weighted_sum/ProdProd.linear/linear_model/Country/weighted_sum/Slice.linear/linear_model/Country/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
y
7linear/linear_model/Country/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
о
/linear/linear_model/Country/weighted_sum/GatherGather+linear/linear_model/Country/SparseReshape:17linear/linear_model/Country/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
—
/linear/linear_model/Country/weighted_sum/Cast/xPack-linear/linear_model/Country/weighted_sum/Prod/linear/linear_model/Country/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
€
6linear/linear_model/Country/weighted_sum/SparseReshapeSparseReshape)linear/linear_model/Country/SparseReshape+linear/linear_model/Country/SparseReshape:1/linear/linear_model/Country/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
≠
?linear/linear_model/Country/weighted_sum/SparseReshape/IdentityIdentity2linear/linear_model/Country/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
y
7linear/linear_model/Country/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
н
5linear/linear_model/Country/weighted_sum/GreaterEqualGreaterEqual?linear/linear_model/Country/weighted_sum/SparseReshape/Identity7linear/linear_model/Country/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
†
.linear/linear_model/Country/weighted_sum/WhereWhere5linear/linear_model/Country/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

Й
6linear/linear_model/Country/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
я
0linear/linear_model/Country/weighted_sum/ReshapeReshape.linear/linear_model/Country/weighted_sum/Where6linear/linear_model/Country/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
Е
1linear/linear_model/Country/weighted_sum/Gather_1Gather6linear/linear_model/Country/weighted_sum/SparseReshape0linear/linear_model/Country/weighted_sum/Reshape*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0	*
validate_indices(
К
1linear/linear_model/Country/weighted_sum/Gather_2Gather?linear/linear_model/Country/weighted_sum/SparseReshape/Identity0linear/linear_model/Country/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
Ь
1linear/linear_model/Country/weighted_sum/IdentityIdentity8linear/linear_model/Country/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Д
Blinear/linear_model/Country/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
£
Plinear/linear_model/Country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows1linear/linear_model/Country/weighted_sum/Gather_11linear/linear_model/Country/weighted_sum/Gather_21linear/linear_model/Country/weighted_sum/IdentityBlinear/linear_model/Country/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
•
Tlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
І
Vlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
І
Vlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
’
Nlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicePlinear/linear_model/Country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsTlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice/stackVlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Vlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
Џ
Elinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/CastCastNlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
с
Glinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/UniqueUniqueRlinear/linear_model/Country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ф
Qlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/embedding_lookupGather/linear/linear_model/Country/weights/part_0/readGlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*'
_output_shapes
:€€€€€€€€€
ч
@linear/linear_model/Country/weighted_sum/embedding_lookup_sparseSparseSegmentSumQlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/embedding_lookupIlinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/Unique:1Elinear/linear_model/Country/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Й
8linear/linear_model/Country/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Л
2linear/linear_model/Country/weighted_sum/Reshape_1ReshapeRlinear/linear_model/Country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:28linear/linear_model/Country/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

Ѓ
.linear/linear_model/Country/weighted_sum/ShapeShape@linear/linear_model/Country/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
Ж
<linear/linear_model/Country/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
И
>linear/linear_model/Country/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
И
>linear/linear_model/Country/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∆
6linear/linear_model/Country/weighted_sum/strided_sliceStridedSlice.linear/linear_model/Country/weighted_sum/Shape<linear/linear_model/Country/weighted_sum/strided_slice/stack>linear/linear_model/Country/weighted_sum/strided_slice/stack_1>linear/linear_model/Country/weighted_sum/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
0linear/linear_model/Country/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Џ
.linear/linear_model/Country/weighted_sum/stackPack0linear/linear_model/Country/weighted_sum/stack/06linear/linear_model/Country/weighted_sum/strided_slice*

axis *
N*
_output_shapes
:*
T0
ж
-linear/linear_model/Country/weighted_sum/TileTile2linear/linear_model/Country/weighted_sum/Reshape_1.linear/linear_model/Country/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

і
3linear/linear_model/Country/weighted_sum/zeros_like	ZerosLike@linear/linear_model/Country/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
К
(linear/linear_model/Country/weighted_sumSelect-linear/linear_model/Country/weighted_sum/Tile3linear/linear_model/Country/weighted_sum/zeros_like@linear/linear_model/Country/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ш
/linear/linear_model/Country/weighted_sum/Cast_1Cast+linear/linear_model/Country/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
А
6linear/linear_model/Country/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/Country/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Л
0linear/linear_model/Country/weighted_sum/Slice_1Slice/linear/linear_model/Country/weighted_sum/Cast_16linear/linear_model/Country/weighted_sum/Slice_1/begin5linear/linear_model/Country/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ш
0linear/linear_model/Country/weighted_sum/Shape_1Shape(linear/linear_model/Country/weighted_sum*
_output_shapes
:*
T0*
out_type0
А
6linear/linear_model/Country/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
И
5linear/linear_model/Country/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
М
0linear/linear_model/Country/weighted_sum/Slice_2Slice0linear/linear_model/Country/weighted_sum/Shape_16linear/linear_model/Country/weighted_sum/Slice_2/begin5linear/linear_model/Country/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
v
4linear/linear_model/Country/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
П
/linear/linear_model/Country/weighted_sum/concatConcatV20linear/linear_model/Country/weighted_sum/Slice_10linear/linear_model/Country/weighted_sum/Slice_24linear/linear_model/Country/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ў
2linear/linear_model/Country/weighted_sum/Reshape_2Reshape(linear/linear_model/Country/weighted_sum/linear/linear_model/Country/weighted_sum/concat*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
w
,linear/linear_model/Education/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
њ
(linear/linear_model/Education/ExpandDims
ExpandDimsParseExample/ParseExample:4,linear/linear_model/Education/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
}
<linear/linear_model/Education/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
№
6linear/linear_model/Education/to_sparse_input/NotEqualNotEqual(linear/linear_model/Education/ExpandDims<linear/linear_model/Education/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:€€€€€€€€€
®
5linear/linear_model/Education/to_sparse_input/indicesWhere6linear/linear_model/Education/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€*
T0

е
4linear/linear_model/Education/to_sparse_input/valuesGatherNd(linear/linear_model/Education/ExpandDims5linear/linear_model/Education/to_sparse_input/indices*#
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0
°
9linear/linear_model/Education/to_sparse_input/dense_shapeShape(linear/linear_model/Education/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Х
4linear/linear_model/Education/Education_lookup/ConstConst*ђ
valueҐBЯB	BachelorsBHS-gradB11thBMastersB9thBSome-collegeB
Assoc-acdmB	Assoc-vocB7th-8thB	DoctorateBProf-schoolB5th-6thB10thB1st-4thB	PreschoolB12th*
dtype0*
_output_shapes
:
u
3linear/linear_model/Education/Education_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
|
:linear/linear_model/Education/Education_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
|
:linear/linear_model/Education/Education_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Т
4linear/linear_model/Education/Education_lookup/rangeRange:linear/linear_model/Education/Education_lookup/range/start3linear/linear_model/Education/Education_lookup/Size:linear/linear_model/Education/Education_lookup/range/delta*
_output_shapes
:*

Tidx0
®
6linear/linear_model/Education/Education_lookup/ToInt64Cast4linear/linear_model/Education/Education_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
≈
9linear/linear_model/Education/Education_lookup/hash_tableHashTableV2*
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
К
?linear/linear_model/Education/Education_lookup/hash_table/ConstConst*
_output_shapes
: *
valueB	 R
€€€€€€€€€*
dtype0	
Ъ
Dlinear/linear_model/Education/Education_lookup/hash_table/table_initInitializeTableV29linear/linear_model/Education/Education_lookup/hash_table4linear/linear_model/Education/Education_lookup/Const6linear/linear_model/Education/Education_lookup/ToInt64*

Tkey0*

Tval0	
≤
/linear/linear_model/Education/hash_table_LookupLookupTableFindV29linear/linear_model/Education/Education_lookup/hash_table4linear/linear_model/Education/to_sparse_input/values?linear/linear_model/Education/Education_lookup/hash_table/Const*#
_output_shapes
:€€€€€€€€€*	
Tin0*

Tout0	
Я
(linear/linear_model/Education/Shape/CastCast9linear/linear_model/Education/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
{
1linear/linear_model/Education/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
}
3linear/linear_model/Education/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
}
3linear/linear_model/Education/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
+linear/linear_model/Education/strided_sliceStridedSlice(linear/linear_model/Education/Shape/Cast1linear/linear_model/Education/strided_slice/stack3linear/linear_model/Education/strided_slice/stack_13linear/linear_model/Education/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
&linear/linear_model/Education/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ї
$linear/linear_model/Education/Cast/xPack+linear/linear_model/Education/strided_slice&linear/linear_model/Education/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Д
"linear/linear_model/Education/CastCast$linear/linear_model/Education/Cast/x*
_output_shapes
:*

DstT0	*

SrcT0
Б
+linear/linear_model/Education/SparseReshapeSparseReshape5linear/linear_model/Education/to_sparse_input/indices9linear/linear_model/Education/to_sparse_input/dense_shape"linear/linear_model/Education/Cast*-
_output_shapes
:€€€€€€€€€:
Я
4linear/linear_model/Education/SparseReshape/IdentityIdentity/linear/linear_model/Education/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
а
Nlinear/linear_model/Education/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
dtype0*
_output_shapes
:
 
Dlinear/linear_model/Education/weights/part_0/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *?
_class5
31loc:@linear/linear_model/Education/weights/part_0
Ў
>linear/linear_model/Education/weights/part_0/Initializer/zerosFillNlinear/linear_model/Education/weights/part_0/Initializer/zeros/shape_as_tensorDlinear/linear_model/Education/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
_output_shapes

:
б
,linear/linear_model/Education/weights/part_0
VariableV2*
shared_name *?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Њ
3linear/linear_model/Education/weights/part_0/AssignAssign,linear/linear_model/Education/weights/part_0>linear/linear_model/Education/weights/part_0/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
validate_shape(*
_output_shapes

:
’
1linear/linear_model/Education/weights/part_0/readIdentity,linear/linear_model/Education/weights/part_0*
T0*?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
_output_shapes

:
А
6linear/linear_model/Education/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/Education/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Й
0linear/linear_model/Education/weighted_sum/SliceSlice-linear/linear_model/Education/SparseReshape:16linear/linear_model/Education/weighted_sum/Slice/begin5linear/linear_model/Education/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
z
0linear/linear_model/Education/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ў
/linear/linear_model/Education/weighted_sum/ProdProd0linear/linear_model/Education/weighted_sum/Slice0linear/linear_model/Education/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
{
9linear/linear_model/Education/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ф
1linear/linear_model/Education/weighted_sum/GatherGather-linear/linear_model/Education/SparseReshape:19linear/linear_model/Education/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
„
1linear/linear_model/Education/weighted_sum/Cast/xPack/linear/linear_model/Education/weighted_sum/Prod1linear/linear_model/Education/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
З
8linear/linear_model/Education/weighted_sum/SparseReshapeSparseReshape+linear/linear_model/Education/SparseReshape-linear/linear_model/Education/SparseReshape:11linear/linear_model/Education/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
±
Alinear/linear_model/Education/weighted_sum/SparseReshape/IdentityIdentity4linear/linear_model/Education/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
{
9linear/linear_model/Education/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
у
7linear/linear_model/Education/weighted_sum/GreaterEqualGreaterEqualAlinear/linear_model/Education/weighted_sum/SparseReshape/Identity9linear/linear_model/Education/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
§
0linear/linear_model/Education/weighted_sum/WhereWhere7linear/linear_model/Education/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Л
8linear/linear_model/Education/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
е
2linear/linear_model/Education/weighted_sum/ReshapeReshape0linear/linear_model/Education/weighted_sum/Where8linear/linear_model/Education/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Л
3linear/linear_model/Education/weighted_sum/Gather_1Gather8linear/linear_model/Education/weighted_sum/SparseReshape2linear/linear_model/Education/weighted_sum/Reshape*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Р
3linear/linear_model/Education/weighted_sum/Gather_2GatherAlinear/linear_model/Education/weighted_sum/SparseReshape/Identity2linear/linear_model/Education/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
†
3linear/linear_model/Education/weighted_sum/IdentityIdentity:linear/linear_model/Education/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ж
Dlinear/linear_model/Education/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
≠
Rlinear/linear_model/Education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows3linear/linear_model/Education/weighted_sum/Gather_13linear/linear_model/Education/weighted_sum/Gather_23linear/linear_model/Education/weighted_sum/IdentityDlinear/linear_model/Education/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
І
Vlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
©
Xlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
©
Xlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
я
Plinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceRlinear/linear_model/Education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsVlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice/stackXlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Xlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0
ё
Glinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/CastCastPlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
х
Ilinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/UniqueUniqueTlinear/linear_model/Education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
ь
Slinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/embedding_lookupGather1linear/linear_model/Education/weights/part_0/readIlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/Unique*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0*
validate_indices(*?
_class5
31loc:@linear/linear_model/Education/weights/part_0
€
Blinear/linear_model/Education/weighted_sum/embedding_lookup_sparseSparseSegmentSumSlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/embedding_lookupKlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/Unique:1Glinear/linear_model/Education/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
Л
:linear/linear_model/Education/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
С
4linear/linear_model/Education/weighted_sum/Reshape_1ReshapeTlinear/linear_model/Education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2:linear/linear_model/Education/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
≤
0linear/linear_model/Education/weighted_sum/ShapeShapeBlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
И
>linear/linear_model/Education/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
К
@linear/linear_model/Education/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@linear/linear_model/Education/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
–
8linear/linear_model/Education/weighted_sum/strided_sliceStridedSlice0linear/linear_model/Education/weighted_sum/Shape>linear/linear_model/Education/weighted_sum/strided_slice/stack@linear/linear_model/Education/weighted_sum/strided_slice/stack_1@linear/linear_model/Education/weighted_sum/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
2linear/linear_model/Education/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
а
0linear/linear_model/Education/weighted_sum/stackPack2linear/linear_model/Education/weighted_sum/stack/08linear/linear_model/Education/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
м
/linear/linear_model/Education/weighted_sum/TileTile4linear/linear_model/Education/weighted_sum/Reshape_10linear/linear_model/Education/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Є
5linear/linear_model/Education/weighted_sum/zeros_like	ZerosLikeBlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Т
*linear/linear_model/Education/weighted_sumSelect/linear/linear_model/Education/weighted_sum/Tile5linear/linear_model/Education/weighted_sum/zeros_likeBlinear/linear_model/Education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ь
1linear/linear_model/Education/weighted_sum/Cast_1Cast-linear/linear_model/Education/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
В
8linear/linear_model/Education/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
7linear/linear_model/Education/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
У
2linear/linear_model/Education/weighted_sum/Slice_1Slice1linear/linear_model/Education/weighted_sum/Cast_18linear/linear_model/Education/weighted_sum/Slice_1/begin7linear/linear_model/Education/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ь
2linear/linear_model/Education/weighted_sum/Shape_1Shape*linear/linear_model/Education/weighted_sum*
out_type0*
_output_shapes
:*
T0
В
8linear/linear_model/Education/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
К
7linear/linear_model/Education/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ф
2linear/linear_model/Education/weighted_sum/Slice_2Slice2linear/linear_model/Education/weighted_sum/Shape_18linear/linear_model/Education/weighted_sum/Slice_2/begin7linear/linear_model/Education/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
x
6linear/linear_model/Education/weighted_sum/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ч
1linear/linear_model/Education/weighted_sum/concatConcatV22linear/linear_model/Education/weighted_sum/Slice_12linear/linear_model/Education/weighted_sum/Slice_26linear/linear_model/Education/weighted_sum/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
ё
4linear/linear_model/Education/weighted_sum/Reshape_2Reshape*linear/linear_model/Education/weighted_sum1linear/linear_model/Education/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
{
0linear/linear_model/Education-Num/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
«
,linear/linear_model/Education-Num/ExpandDims
ExpandDimsParseExample/ParseExample:50linear/linear_model/Education-Num/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0	
†
)linear/linear_model/Education-Num/ToFloatCast,linear/linear_model/Education-Num/ExpandDims*

SrcT0	*'
_output_shapes
:€€€€€€€€€*

DstT0
Р
'linear/linear_model/Education-Num/ShapeShape)linear/linear_model/Education-Num/ToFloat*
_output_shapes
:*
T0*
out_type0

5linear/linear_model/Education-Num/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Б
7linear/linear_model/Education-Num/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Б
7linear/linear_model/Education-Num/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
£
/linear/linear_model/Education-Num/strided_sliceStridedSlice'linear/linear_model/Education-Num/Shape5linear/linear_model/Education-Num/strided_slice/stack7linear/linear_model/Education-Num/strided_slice/stack_17linear/linear_model/Education-Num/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
1linear/linear_model/Education-Num/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
’
/linear/linear_model/Education-Num/Reshape/shapePack/linear/linear_model/Education-Num/strided_slice1linear/linear_model/Education-Num/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
–
)linear/linear_model/Education-Num/ReshapeReshape)linear/linear_model/Education-Num/ToFloat/linear/linear_model/Education-Num/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
и
Rlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
dtype0*
_output_shapes
:
“
Hlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
dtype0*
_output_shapes
: 
и
Blinear/linear_model/Education-Num/weights/part_0/Initializer/zerosFillRlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros/shape_as_tensorHlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
_output_shapes

:
й
0linear/linear_model/Education-Num/weights/part_0
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
	container 
ќ
7linear/linear_model/Education-Num/weights/part_0/AssignAssign0linear/linear_model/Education-Num/weights/part_0Blinear/linear_model/Education-Num/weights/part_0/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
validate_shape(
б
5linear/linear_model/Education-Num/weights/part_0/readIdentity0linear/linear_model/Education-Num/weights/part_0*
_output_shapes

:*
T0*C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0
Х
)linear/linear_model/Education-Num/weightsIdentity5linear/linear_model/Education-Num/weights/part_0/read*
T0*
_output_shapes

:
ж
.linear/linear_model/Education-Num/weighted_sumMatMul)linear/linear_model/Education-Num/Reshape)linear/linear_model/Education-Num/weights*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
|
1linear/linear_model/Hours-per-week/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
…
-linear/linear_model/Hours-per-week/ExpandDims
ExpandDimsParseExample/ParseExample:61linear/linear_model/Hours-per-week/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0	
Ґ
*linear/linear_model/Hours-per-week/ToFloatCast-linear/linear_model/Hours-per-week/ExpandDims*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
Т
(linear/linear_model/Hours-per-week/ShapeShape*linear/linear_model/Hours-per-week/ToFloat*
T0*
out_type0*
_output_shapes
:
А
6linear/linear_model/Hours-per-week/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
В
8linear/linear_model/Hours-per-week/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
В
8linear/linear_model/Hours-per-week/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
®
0linear/linear_model/Hours-per-week/strided_sliceStridedSlice(linear/linear_model/Hours-per-week/Shape6linear/linear_model/Hours-per-week/strided_slice/stack8linear/linear_model/Hours-per-week/strided_slice/stack_18linear/linear_model/Hours-per-week/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
2linear/linear_model/Hours-per-week/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ў
0linear/linear_model/Hours-per-week/Reshape/shapePack0linear/linear_model/Hours-per-week/strided_slice2linear/linear_model/Hours-per-week/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
”
*linear/linear_model/Hours-per-week/ReshapeReshape*linear/linear_model/Hours-per-week/ToFloat0linear/linear_model/Hours-per-week/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
к
Slinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
dtype0*
_output_shapes
:
‘
Ilinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
dtype0*
_output_shapes
: 
м
Clinear/linear_model/Hours-per-week/weights/part_0/Initializer/zerosFillSlinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros/shape_as_tensorIlinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
_output_shapes

:
л
1linear/linear_model/Hours-per-week/weights/part_0
VariableV2*D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
“
8linear/linear_model/Hours-per-week/weights/part_0/AssignAssign1linear/linear_model/Hours-per-week/weights/part_0Clinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
validate_shape(
д
6linear/linear_model/Hours-per-week/weights/part_0/readIdentity1linear/linear_model/Hours-per-week/weights/part_0*
T0*D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
_output_shapes

:
Ч
*linear/linear_model/Hours-per-week/weightsIdentity6linear/linear_model/Hours-per-week/weights/part_0/read*
T0*
_output_shapes

:
й
/linear/linear_model/Hours-per-week/weighted_sumMatMul*linear/linear_model/Hours-per-week/Reshape*linear/linear_model/Hours-per-week/weights*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( *
T0
|
1linear/linear_model/Marital-Status/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
…
-linear/linear_model/Marital-Status/ExpandDims
ExpandDimsParseExample/ParseExample:71linear/linear_model/Marital-Status/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
В
Alinear/linear_model/Marital-Status/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
л
;linear/linear_model/Marital-Status/to_sparse_input/NotEqualNotEqual-linear/linear_model/Marital-Status/ExpandDimsAlinear/linear_model/Marital-Status/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:€€€€€€€€€
≤
:linear/linear_model/Marital-Status/to_sparse_input/indicesWhere;linear/linear_model/Marital-Status/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€*
T0

ф
9linear/linear_model/Marital-Status/to_sparse_input/valuesGatherNd-linear/linear_model/Marital-Status/ExpandDims:linear/linear_model/Marital-Status/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:€€€€€€€€€
Ђ
>linear/linear_model/Marital-Status/to_sparse_input/dense_shapeShape-linear/linear_model/Marital-Status/ExpandDims*
out_type0	*
_output_shapes
:*
T0
р
>linear/linear_model/Marital-Status/Marital-Status_lookup/ConstConst*~
valueuBsBNever-marriedBMarried-civ-spouseBDivorcedBMarried-spouse-absentB	SeparatedBMarried-AF-spouseBWidowed*
dtype0*
_output_shapes
:

=linear/linear_model/Marital-Status/Marital-Status_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
Dlinear/linear_model/Marital-Status/Marital-Status_lookup/range/startConst*
_output_shapes
: *
value	B : *
dtype0
Ж
Dlinear/linear_model/Marital-Status/Marital-Status_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ї
>linear/linear_model/Marital-Status/Marital-Status_lookup/rangeRangeDlinear/linear_model/Marital-Status/Marital-Status_lookup/range/start=linear/linear_model/Marital-Status/Marital-Status_lookup/SizeDlinear/linear_model/Marital-Status/Marital-Status_lookup/range/delta*

Tidx0*
_output_shapes
:
Љ
@linear/linear_model/Marital-Status/Marital-Status_lookup/ToInt64Cast>linear/linear_model/Marital-Status/Marital-Status_lookup/range*
_output_shapes
:*

DstT0	*

SrcT0
ѕ
Clinear/linear_model/Marital-Status/Marital-Status_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container 
Ф
Ilinear/linear_model/Marital-Status/Marital-Status_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
¬
Nlinear/linear_model/Marital-Status/Marital-Status_lookup/hash_table/table_initInitializeTableV2Clinear/linear_model/Marital-Status/Marital-Status_lookup/hash_table>linear/linear_model/Marital-Status/Marital-Status_lookup/Const@linear/linear_model/Marital-Status/Marital-Status_lookup/ToInt64*

Tkey0*

Tval0	
–
4linear/linear_model/Marital-Status/hash_table_LookupLookupTableFindV2Clinear/linear_model/Marital-Status/Marital-Status_lookup/hash_table9linear/linear_model/Marital-Status/to_sparse_input/valuesIlinear/linear_model/Marital-Status/Marital-Status_lookup/hash_table/Const*#
_output_shapes
:€€€€€€€€€*	
Tin0*

Tout0	
©
-linear/linear_model/Marital-Status/Shape/CastCast>linear/linear_model/Marital-Status/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
А
6linear/linear_model/Marital-Status/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
В
8linear/linear_model/Marital-Status/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
В
8linear/linear_model/Marital-Status/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
≠
0linear/linear_model/Marital-Status/strided_sliceStridedSlice-linear/linear_model/Marital-Status/Shape/Cast6linear/linear_model/Marital-Status/strided_slice/stack8linear/linear_model/Marital-Status/strided_slice/stack_18linear/linear_model/Marital-Status/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
+linear/linear_model/Marital-Status/Cast/x/1Const*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
 
)linear/linear_model/Marital-Status/Cast/xPack0linear/linear_model/Marital-Status/strided_slice+linear/linear_model/Marital-Status/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
О
'linear/linear_model/Marital-Status/CastCast)linear/linear_model/Marital-Status/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
Х
0linear/linear_model/Marital-Status/SparseReshapeSparseReshape:linear/linear_model/Marital-Status/to_sparse_input/indices>linear/linear_model/Marital-Status/to_sparse_input/dense_shape'linear/linear_model/Marital-Status/Cast*-
_output_shapes
:€€€€€€€€€:
©
9linear/linear_model/Marital-Status/SparseReshape/IdentityIdentity4linear/linear_model/Marital-Status/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
к
Slinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
dtype0*
_output_shapes
:
‘
Ilinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
dtype0*
_output_shapes
: 
м
Clinear/linear_model/Marital-Status/weights/part_0/Initializer/zerosFillSlinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros/shape_as_tensorIlinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
_output_shapes

:
л
1linear/linear_model/Marital-Status/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
	container *
shape
:
“
8linear/linear_model/Marital-Status/weights/part_0/AssignAssign1linear/linear_model/Marital-Status/weights/part_0Clinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros*
T0*D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
д
6linear/linear_model/Marital-Status/weights/part_0/readIdentity1linear/linear_model/Marital-Status/weights/part_0*
T0*D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
_output_shapes

:
Е
;linear/linear_model/Marital-Status/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Д
:linear/linear_model/Marital-Status/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Э
5linear/linear_model/Marital-Status/weighted_sum/SliceSlice2linear/linear_model/Marital-Status/SparseReshape:1;linear/linear_model/Marital-Status/weighted_sum/Slice/begin:linear/linear_model/Marital-Status/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:

5linear/linear_model/Marital-Status/weighted_sum/ConstConst*
_output_shapes
:*
valueB: *
dtype0
и
4linear/linear_model/Marital-Status/weighted_sum/ProdProd5linear/linear_model/Marital-Status/weighted_sum/Slice5linear/linear_model/Marital-Status/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
А
>linear/linear_model/Marital-Status/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Г
6linear/linear_model/Marital-Status/weighted_sum/GatherGather2linear/linear_model/Marital-Status/SparseReshape:1>linear/linear_model/Marital-Status/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
ж
6linear/linear_model/Marital-Status/weighted_sum/Cast/xPack4linear/linear_model/Marital-Status/weighted_sum/Prod6linear/linear_model/Marital-Status/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
Ы
=linear/linear_model/Marital-Status/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/Marital-Status/SparseReshape2linear/linear_model/Marital-Status/SparseReshape:16linear/linear_model/Marital-Status/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
ї
Flinear/linear_model/Marital-Status/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/Marital-Status/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
А
>linear/linear_model/Marital-Status/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
В
<linear/linear_model/Marital-Status/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/Marital-Status/weighted_sum/SparseReshape/Identity>linear/linear_model/Marital-Status/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Ѓ
5linear/linear_model/Marital-Status/weighted_sum/WhereWhere<linear/linear_model/Marital-Status/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Р
=linear/linear_model/Marital-Status/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
ф
7linear/linear_model/Marital-Status/weighted_sum/ReshapeReshape5linear/linear_model/Marital-Status/weighted_sum/Where=linear/linear_model/Marital-Status/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ъ
8linear/linear_model/Marital-Status/weighted_sum/Gather_1Gather=linear/linear_model/Marital-Status/weighted_sum/SparseReshape7linear/linear_model/Marital-Status/weighted_sum/Reshape*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0	*
validate_indices(
Я
8linear/linear_model/Marital-Status/weighted_sum/Gather_2GatherFlinear/linear_model/Marital-Status/weighted_sum/SparseReshape/Identity7linear/linear_model/Marital-Status/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
™
8linear/linear_model/Marital-Status/weighted_sum/IdentityIdentity?linear/linear_model/Marital-Status/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Л
Ilinear/linear_model/Marital-Status/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
∆
Wlinear/linear_model/Marital-Status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows8linear/linear_model/Marital-Status/weighted_sum/Gather_18linear/linear_model/Marital-Status/weighted_sum/Gather_28linear/linear_model/Marital-Status/weighted_sum/IdentityIlinear/linear_model/Marital-Status/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
ђ
[linear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Ѓ
]linear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ѓ
]linear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ш
Ulinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/Marital-Status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
и
Llinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
€
Nlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/Marital-Status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
Xlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/embedding_lookupGather6linear/linear_model/Marital-Status/weights/part_0/readNlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/Unique*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0*
validate_indices(*D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0
У
Glinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Р
?linear/linear_model/Marital-Status/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
†
9linear/linear_model/Marital-Status/weighted_sum/Reshape_1ReshapeYlinear/linear_model/Marital-Status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/Marital-Status/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Љ
5linear/linear_model/Marital-Status/weighted_sum/ShapeShapeGlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Н
Clinear/linear_model/Marital-Status/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
П
Elinear/linear_model/Marital-Status/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
П
Elinear/linear_model/Marital-Status/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
=linear/linear_model/Marital-Status/weighted_sum/strided_sliceStridedSlice5linear/linear_model/Marital-Status/weighted_sum/ShapeClinear/linear_model/Marital-Status/weighted_sum/strided_slice/stackElinear/linear_model/Marital-Status/weighted_sum/strided_slice/stack_1Elinear/linear_model/Marital-Status/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
y
7linear/linear_model/Marital-Status/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
п
5linear/linear_model/Marital-Status/weighted_sum/stackPack7linear/linear_model/Marital-Status/weighted_sum/stack/0=linear/linear_model/Marital-Status/weighted_sum/strided_slice*
_output_shapes
:*
T0*

axis *
N
ы
4linear/linear_model/Marital-Status/weighted_sum/TileTile9linear/linear_model/Marital-Status/weighted_sum/Reshape_15linear/linear_model/Marital-Status/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

¬
:linear/linear_model/Marital-Status/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¶
/linear/linear_model/Marital-Status/weighted_sumSelect4linear/linear_model/Marital-Status/weighted_sum/Tile:linear/linear_model/Marital-Status/weighted_sum/zeros_likeGlinear/linear_model/Marital-Status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¶
6linear/linear_model/Marital-Status/weighted_sum/Cast_1Cast2linear/linear_model/Marital-Status/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
З
=linear/linear_model/Marital-Status/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ж
<linear/linear_model/Marital-Status/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
І
7linear/linear_model/Marital-Status/weighted_sum/Slice_1Slice6linear/linear_model/Marital-Status/weighted_sum/Cast_1=linear/linear_model/Marital-Status/weighted_sum/Slice_1/begin<linear/linear_model/Marital-Status/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
¶
7linear/linear_model/Marital-Status/weighted_sum/Shape_1Shape/linear/linear_model/Marital-Status/weighted_sum*
_output_shapes
:*
T0*
out_type0
З
=linear/linear_model/Marital-Status/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
П
<linear/linear_model/Marital-Status/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
®
7linear/linear_model/Marital-Status/weighted_sum/Slice_2Slice7linear/linear_model/Marital-Status/weighted_sum/Shape_1=linear/linear_model/Marital-Status/weighted_sum/Slice_2/begin<linear/linear_model/Marital-Status/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
}
;linear/linear_model/Marital-Status/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
6linear/linear_model/Marital-Status/weighted_sum/concatConcatV27linear/linear_model/Marital-Status/weighted_sum/Slice_17linear/linear_model/Marital-Status/weighted_sum/Slice_2;linear/linear_model/Marital-Status/weighted_sum/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
н
9linear/linear_model/Marital-Status/weighted_sum/Reshape_2Reshape/linear/linear_model/Marital-Status/weighted_sum6linear/linear_model/Marital-Status/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
x
-linear/linear_model/Occupation/ExpandDims/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
Ѕ
)linear/linear_model/Occupation/ExpandDims
ExpandDimsParseExample/ParseExample:8-linear/linear_model/Occupation/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
~
=linear/linear_model/Occupation/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
я
7linear/linear_model/Occupation/to_sparse_input/NotEqualNotEqual)linear/linear_model/Occupation/ExpandDims=linear/linear_model/Occupation/to_sparse_input/ignore_value/x*'
_output_shapes
:€€€€€€€€€*
T0
™
6linear/linear_model/Occupation/to_sparse_input/indicesWhere7linear/linear_model/Occupation/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:€€€€€€€€€
и
5linear/linear_model/Occupation/to_sparse_input/valuesGatherNd)linear/linear_model/Occupation/ExpandDims6linear/linear_model/Occupation/to_sparse_input/indices*#
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0
£
:linear/linear_model/Occupation/to_sparse_input/dense_shapeShape)linear/linear_model/Occupation/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Ё
6linear/linear_model/Occupation/Occupation_lookup/ConstConst*т
valueиBеBAdm-clericalBExec-managerialBHandlers-cleanersBProf-specialtyBOther-serviceBSalesBCraft-repairBTransport-movingBFarming-fishingBMachine-op-inspctBTech-supportB?BProtective-servBArmed-ForcesBPriv-house-serv*
dtype0*
_output_shapes
:
w
5linear/linear_model/Occupation/Occupation_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
~
<linear/linear_model/Occupation/Occupation_lookup/range/startConst*
_output_shapes
: *
value	B : *
dtype0
~
<linear/linear_model/Occupation/Occupation_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
6linear/linear_model/Occupation/Occupation_lookup/rangeRange<linear/linear_model/Occupation/Occupation_lookup/range/start5linear/linear_model/Occupation/Occupation_lookup/Size<linear/linear_model/Occupation/Occupation_lookup/range/delta*
_output_shapes
:*

Tidx0
ђ
8linear/linear_model/Occupation/Occupation_lookup/ToInt64Cast6linear/linear_model/Occupation/Occupation_lookup/range*
_output_shapes
:*

DstT0	*

SrcT0
«
;linear/linear_model/Occupation/Occupation_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container 
М
Alinear/linear_model/Occupation/Occupation_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
Ґ
Flinear/linear_model/Occupation/Occupation_lookup/hash_table/table_initInitializeTableV2;linear/linear_model/Occupation/Occupation_lookup/hash_table6linear/linear_model/Occupation/Occupation_lookup/Const8linear/linear_model/Occupation/Occupation_lookup/ToInt64*

Tkey0*

Tval0	
Є
0linear/linear_model/Occupation/hash_table_LookupLookupTableFindV2;linear/linear_model/Occupation/Occupation_lookup/hash_table5linear/linear_model/Occupation/to_sparse_input/valuesAlinear/linear_model/Occupation/Occupation_lookup/hash_table/Const*#
_output_shapes
:€€€€€€€€€*	
Tin0*

Tout0	
°
)linear/linear_model/Occupation/Shape/CastCast:linear/linear_model/Occupation/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
|
2linear/linear_model/Occupation/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4linear/linear_model/Occupation/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4linear/linear_model/Occupation/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Щ
,linear/linear_model/Occupation/strided_sliceStridedSlice)linear/linear_model/Occupation/Shape/Cast2linear/linear_model/Occupation/strided_slice/stack4linear/linear_model/Occupation/strided_slice/stack_14linear/linear_model/Occupation/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
'linear/linear_model/Occupation/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Њ
%linear/linear_model/Occupation/Cast/xPack,linear/linear_model/Occupation/strided_slice'linear/linear_model/Occupation/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Ж
#linear/linear_model/Occupation/CastCast%linear/linear_model/Occupation/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
Е
,linear/linear_model/Occupation/SparseReshapeSparseReshape6linear/linear_model/Occupation/to_sparse_input/indices:linear/linear_model/Occupation/to_sparse_input/dense_shape#linear/linear_model/Occupation/Cast*-
_output_shapes
:€€€€€€€€€:
°
5linear/linear_model/Occupation/SparseReshape/IdentityIdentity0linear/linear_model/Occupation/hash_table_Lookup*#
_output_shapes
:€€€€€€€€€*
T0	
в
Olinear/linear_model/Occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
dtype0*
_output_shapes
:
ћ
Elinear/linear_model/Occupation/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
dtype0*
_output_shapes
: 
№
?linear/linear_model/Occupation/weights/part_0/Initializer/zerosFillOlinear/linear_model/Occupation/weights/part_0/Initializer/zeros/shape_as_tensorElinear/linear_model/Occupation/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
_output_shapes

:
г
-linear/linear_model/Occupation/weights/part_0
VariableV2*
shared_name *@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
¬
4linear/linear_model/Occupation/weights/part_0/AssignAssign-linear/linear_model/Occupation/weights/part_0?linear/linear_model/Occupation/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0
Ў
2linear/linear_model/Occupation/weights/part_0/readIdentity-linear/linear_model/Occupation/weights/part_0*
T0*@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
_output_shapes

:
Б
7linear/linear_model/Occupation/weighted_sum/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
А
6linear/linear_model/Occupation/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Н
1linear/linear_model/Occupation/weighted_sum/SliceSlice.linear/linear_model/Occupation/SparseReshape:17linear/linear_model/Occupation/weighted_sum/Slice/begin6linear/linear_model/Occupation/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
{
1linear/linear_model/Occupation/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
№
0linear/linear_model/Occupation/weighted_sum/ProdProd1linear/linear_model/Occupation/weighted_sum/Slice1linear/linear_model/Occupation/weighted_sum/Const*
T0	*
_output_shapes
: *

Tidx0*
	keep_dims( 
|
:linear/linear_model/Occupation/weighted_sum/Gather/indicesConst*
_output_shapes
: *
value	B :*
dtype0
ч
2linear/linear_model/Occupation/weighted_sum/GatherGather.linear/linear_model/Occupation/SparseReshape:1:linear/linear_model/Occupation/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
Џ
2linear/linear_model/Occupation/weighted_sum/Cast/xPack0linear/linear_model/Occupation/weighted_sum/Prod2linear/linear_model/Occupation/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
Л
9linear/linear_model/Occupation/weighted_sum/SparseReshapeSparseReshape,linear/linear_model/Occupation/SparseReshape.linear/linear_model/Occupation/SparseReshape:12linear/linear_model/Occupation/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
≥
Blinear/linear_model/Occupation/weighted_sum/SparseReshape/IdentityIdentity5linear/linear_model/Occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
|
:linear/linear_model/Occupation/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ц
8linear/linear_model/Occupation/weighted_sum/GreaterEqualGreaterEqualBlinear/linear_model/Occupation/weighted_sum/SparseReshape/Identity:linear/linear_model/Occupation/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
¶
1linear/linear_model/Occupation/weighted_sum/WhereWhere8linear/linear_model/Occupation/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
М
9linear/linear_model/Occupation/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
и
3linear/linear_model/Occupation/weighted_sum/ReshapeReshape1linear/linear_model/Occupation/weighted_sum/Where9linear/linear_model/Occupation/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
T0	*
Tshape0
О
4linear/linear_model/Occupation/weighted_sum/Gather_1Gather9linear/linear_model/Occupation/weighted_sum/SparseReshape3linear/linear_model/Occupation/weighted_sum/Reshape*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€*
Tindices0	
У
4linear/linear_model/Occupation/weighted_sum/Gather_2GatherBlinear/linear_model/Occupation/weighted_sum/SparseReshape/Identity3linear/linear_model/Occupation/weighted_sum/Reshape*#
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0	*
validate_indices(
Ґ
4linear/linear_model/Occupation/weighted_sum/IdentityIdentity;linear/linear_model/Occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
З
Elinear/linear_model/Occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
≤
Slinear/linear_model/Occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows4linear/linear_model/Occupation/weighted_sum/Gather_14linear/linear_model/Occupation/weighted_sum/Gather_24linear/linear_model/Occupation/weighted_sum/IdentityElinear/linear_model/Occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
®
Wlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
™
Ylinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
™
Ylinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
д
Qlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceSlinear/linear_model/Occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsWlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackYlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Ylinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	
а
Hlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/CastCastQlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
ч
Jlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/UniqueUniqueUlinear/linear_model/Occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
А
Tlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGather2linear/linear_model/Occupation/weights/part_0/readJlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*'
_output_shapes
:€€€€€€€€€
Г
Clinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSumTlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupLlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/Unique:1Hlinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
М
;linear/linear_model/Occupation/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Ф
5linear/linear_model/Occupation/weighted_sum/Reshape_1ReshapeUlinear/linear_model/Occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2;linear/linear_model/Occupation/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
і
1linear/linear_model/Occupation/weighted_sum/ShapeShapeClinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Й
?linear/linear_model/Occupation/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Л
Alinear/linear_model/Occupation/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
Alinear/linear_model/Occupation/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
’
9linear/linear_model/Occupation/weighted_sum/strided_sliceStridedSlice1linear/linear_model/Occupation/weighted_sum/Shape?linear/linear_model/Occupation/weighted_sum/strided_slice/stackAlinear/linear_model/Occupation/weighted_sum/strided_slice/stack_1Alinear/linear_model/Occupation/weighted_sum/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
u
3linear/linear_model/Occupation/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
г
1linear/linear_model/Occupation/weighted_sum/stackPack3linear/linear_model/Occupation/weighted_sum/stack/09linear/linear_model/Occupation/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
п
0linear/linear_model/Occupation/weighted_sum/TileTile5linear/linear_model/Occupation/weighted_sum/Reshape_11linear/linear_model/Occupation/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ї
6linear/linear_model/Occupation/weighted_sum/zeros_like	ZerosLikeClinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ц
+linear/linear_model/Occupation/weighted_sumSelect0linear/linear_model/Occupation/weighted_sum/Tile6linear/linear_model/Occupation/weighted_sum/zeros_likeClinear/linear_model/Occupation/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ю
2linear/linear_model/Occupation/weighted_sum/Cast_1Cast.linear/linear_model/Occupation/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Г
9linear/linear_model/Occupation/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
В
8linear/linear_model/Occupation/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ч
3linear/linear_model/Occupation/weighted_sum/Slice_1Slice2linear/linear_model/Occupation/weighted_sum/Cast_19linear/linear_model/Occupation/weighted_sum/Slice_1/begin8linear/linear_model/Occupation/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
Ю
3linear/linear_model/Occupation/weighted_sum/Shape_1Shape+linear/linear_model/Occupation/weighted_sum*
T0*
out_type0*
_output_shapes
:
Г
9linear/linear_model/Occupation/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Л
8linear/linear_model/Occupation/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ш
3linear/linear_model/Occupation/weighted_sum/Slice_2Slice3linear/linear_model/Occupation/weighted_sum/Shape_19linear/linear_model/Occupation/weighted_sum/Slice_2/begin8linear/linear_model/Occupation/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
y
7linear/linear_model/Occupation/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ы
2linear/linear_model/Occupation/weighted_sum/concatConcatV23linear/linear_model/Occupation/weighted_sum/Slice_13linear/linear_model/Occupation/weighted_sum/Slice_27linear/linear_model/Occupation/weighted_sum/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
б
5linear/linear_model/Occupation/weighted_sum/Reshape_2Reshape+linear/linear_model/Occupation/weighted_sum2linear/linear_model/Occupation/weighted_sum/concat*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
r
'linear/linear_model/Race/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
µ
#linear/linear_model/Race/ExpandDims
ExpandDimsParseExample/ParseExample:9'linear/linear_model/Race/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
x
7linear/linear_model/Race/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
Ќ
1linear/linear_model/Race/to_sparse_input/NotEqualNotEqual#linear/linear_model/Race/ExpandDims7linear/linear_model/Race/to_sparse_input/ignore_value/x*'
_output_shapes
:€€€€€€€€€*
T0
Ю
0linear/linear_model/Race/to_sparse_input/indicesWhere1linear/linear_model/Race/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:€€€€€€€€€
÷
/linear/linear_model/Race/to_sparse_input/valuesGatherNd#linear/linear_model/Race/ExpandDims0linear/linear_model/Race/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:€€€€€€€€€
Ч
4linear/linear_model/Race/to_sparse_input/dense_shapeShape#linear/linear_model/Race/ExpandDims*
_output_shapes
:*
T0*
out_type0	
Ѓ
*linear/linear_model/Race/Race_lookup/ConstConst*P
valueGBEBWhiteBBlackBAsian-Pac-IslanderBAmer-Indian-EskimoBOther*
dtype0*
_output_shapes
:
k
)linear/linear_model/Race/Race_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
0linear/linear_model/Race/Race_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
r
0linear/linear_model/Race/Race_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
к
*linear/linear_model/Race/Race_lookup/rangeRange0linear/linear_model/Race/Race_lookup/range/start)linear/linear_model/Race/Race_lookup/Size0linear/linear_model/Race/Race_lookup/range/delta*
_output_shapes
:*

Tidx0
Ф
,linear/linear_model/Race/Race_lookup/ToInt64Cast*linear/linear_model/Race/Race_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
ї
/linear/linear_model/Race/Race_lookup/hash_tableHashTableV2*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *
shared_name 
А
5linear/linear_model/Race/Race_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
т
:linear/linear_model/Race/Race_lookup/hash_table/table_initInitializeTableV2/linear/linear_model/Race/Race_lookup/hash_table*linear/linear_model/Race/Race_lookup/Const,linear/linear_model/Race/Race_lookup/ToInt64*

Tkey0*

Tval0	
Ф
*linear/linear_model/Race/hash_table_LookupLookupTableFindV2/linear/linear_model/Race/Race_lookup/hash_table/linear/linear_model/Race/to_sparse_input/values5linear/linear_model/Race/Race_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
Х
#linear/linear_model/Race/Shape/CastCast4linear/linear_model/Race/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
v
,linear/linear_model/Race/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
.linear/linear_model/Race/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
x
.linear/linear_model/Race/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ы
&linear/linear_model/Race/strided_sliceStridedSlice#linear/linear_model/Race/Shape/Cast,linear/linear_model/Race/strided_slice/stack.linear/linear_model/Race/strided_slice/stack_1.linear/linear_model/Race/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
l
!linear/linear_model/Race/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
ђ
linear/linear_model/Race/Cast/xPack&linear/linear_model/Race/strided_slice!linear/linear_model/Race/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
z
linear/linear_model/Race/CastCastlinear/linear_model/Race/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
н
&linear/linear_model/Race/SparseReshapeSparseReshape0linear/linear_model/Race/to_sparse_input/indices4linear/linear_model/Race/to_sparse_input/dense_shapelinear/linear_model/Race/Cast*-
_output_shapes
:€€€€€€€€€:
Х
/linear/linear_model/Race/SparseReshape/IdentityIdentity*linear/linear_model/Race/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
÷
Ilinear/linear_model/Race/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*
dtype0*
_output_shapes
:
ј
?linear/linear_model/Race/weights/part_0/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *:
_class0
.,loc:@linear/linear_model/Race/weights/part_0
ƒ
9linear/linear_model/Race/weights/part_0/Initializer/zerosFillIlinear/linear_model/Race/weights/part_0/Initializer/zeros/shape_as_tensor?linear/linear_model/Race/weights/part_0/Initializer/zeros/Const*
_output_shapes

:*
T0*

index_type0*:
_class0
.,loc:@linear/linear_model/Race/weights/part_0
„
'linear/linear_model/Race/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*
	container *
shape
:
™
.linear/linear_model/Race/weights/part_0/AssignAssign'linear/linear_model/Race/weights/part_09linear/linear_model/Race/weights/part_0/Initializer/zeros*
T0*:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
∆
,linear/linear_model/Race/weights/part_0/readIdentity'linear/linear_model/Race/weights/part_0*
T0*:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*
_output_shapes

:
{
1linear/linear_model/Race/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
z
0linear/linear_model/Race/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
+linear/linear_model/Race/weighted_sum/SliceSlice(linear/linear_model/Race/SparseReshape:11linear/linear_model/Race/weighted_sum/Slice/begin0linear/linear_model/Race/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
u
+linear/linear_model/Race/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
*linear/linear_model/Race/weighted_sum/ProdProd+linear/linear_model/Race/weighted_sum/Slice+linear/linear_model/Race/weighted_sum/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
v
4linear/linear_model/Race/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
е
,linear/linear_model/Race/weighted_sum/GatherGather(linear/linear_model/Race/SparseReshape:14linear/linear_model/Race/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
»
,linear/linear_model/Race/weighted_sum/Cast/xPack*linear/linear_model/Race/weighted_sum/Prod,linear/linear_model/Race/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
у
3linear/linear_model/Race/weighted_sum/SparseReshapeSparseReshape&linear/linear_model/Race/SparseReshape(linear/linear_model/Race/SparseReshape:1,linear/linear_model/Race/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
І
<linear/linear_model/Race/weighted_sum/SparseReshape/IdentityIdentity/linear/linear_model/Race/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
v
4linear/linear_model/Race/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
д
2linear/linear_model/Race/weighted_sum/GreaterEqualGreaterEqual<linear/linear_model/Race/weighted_sum/SparseReshape/Identity4linear/linear_model/Race/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Ъ
+linear/linear_model/Race/weighted_sum/WhereWhere2linear/linear_model/Race/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

Ж
3linear/linear_model/Race/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
÷
-linear/linear_model/Race/weighted_sum/ReshapeReshape+linear/linear_model/Race/weighted_sum/Where3linear/linear_model/Race/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
T0	*
Tshape0
ь
.linear/linear_model/Race/weighted_sum/Gather_1Gather3linear/linear_model/Race/weighted_sum/SparseReshape-linear/linear_model/Race/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
Б
.linear/linear_model/Race/weighted_sum/Gather_2Gather<linear/linear_model/Race/weighted_sum/SparseReshape/Identity-linear/linear_model/Race/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
Ц
.linear/linear_model/Race/weighted_sum/IdentityIdentity5linear/linear_model/Race/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Б
?linear/linear_model/Race/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ф
Mlinear/linear_model/Race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows.linear/linear_model/Race/weighted_sum/Gather_1.linear/linear_model/Race/weighted_sum/Gather_2.linear/linear_model/Race/weighted_sum/Identity?linear/linear_model/Race/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
Ґ
Qlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
§
Slinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
§
Slinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
∆
Klinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceMlinear/linear_model/Race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsQlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice/stackSlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Slinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0
‘
Blinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/CastCastKlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
л
Dlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/UniqueUniqueOlinear/linear_model/Race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
и
Nlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/embedding_lookupGather,linear/linear_model/Race/weights/part_0/readDlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*'
_output_shapes
:€€€€€€€€€
л
=linear/linear_model/Race/weighted_sum/embedding_lookup_sparseSparseSegmentSumNlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/embedding_lookupFlinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/Unique:1Blinear/linear_model/Race/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
Ж
5linear/linear_model/Race/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
В
/linear/linear_model/Race/weighted_sum/Reshape_1ReshapeOlinear/linear_model/Race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:25linear/linear_model/Race/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
®
+linear/linear_model/Race/weighted_sum/ShapeShape=linear/linear_model/Race/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Г
9linear/linear_model/Race/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Е
;linear/linear_model/Race/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Е
;linear/linear_model/Race/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ј
3linear/linear_model/Race/weighted_sum/strided_sliceStridedSlice+linear/linear_model/Race/weighted_sum/Shape9linear/linear_model/Race/weighted_sum/strided_slice/stack;linear/linear_model/Race/weighted_sum/strided_slice/stack_1;linear/linear_model/Race/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
o
-linear/linear_model/Race/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
—
+linear/linear_model/Race/weighted_sum/stackPack-linear/linear_model/Race/weighted_sum/stack/03linear/linear_model/Race/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ё
*linear/linear_model/Race/weighted_sum/TileTile/linear/linear_model/Race/weighted_sum/Reshape_1+linear/linear_model/Race/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ѓ
0linear/linear_model/Race/weighted_sum/zeros_like	ZerosLike=linear/linear_model/Race/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ю
%linear/linear_model/Race/weighted_sumSelect*linear/linear_model/Race/weighted_sum/Tile0linear/linear_model/Race/weighted_sum/zeros_like=linear/linear_model/Race/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Т
,linear/linear_model/Race/weighted_sum/Cast_1Cast(linear/linear_model/Race/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
}
3linear/linear_model/Race/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
|
2linear/linear_model/Race/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
€
-linear/linear_model/Race/weighted_sum/Slice_1Slice,linear/linear_model/Race/weighted_sum/Cast_13linear/linear_model/Race/weighted_sum/Slice_1/begin2linear/linear_model/Race/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
Т
-linear/linear_model/Race/weighted_sum/Shape_1Shape%linear/linear_model/Race/weighted_sum*
out_type0*
_output_shapes
:*
T0
}
3linear/linear_model/Race/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Е
2linear/linear_model/Race/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
А
-linear/linear_model/Race/weighted_sum/Slice_2Slice-linear/linear_model/Race/weighted_sum/Shape_13linear/linear_model/Race/weighted_sum/Slice_2/begin2linear/linear_model/Race/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
s
1linear/linear_model/Race/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Г
,linear/linear_model/Race/weighted_sum/concatConcatV2-linear/linear_model/Race/weighted_sum/Slice_1-linear/linear_model/Race/weighted_sum/Slice_21linear/linear_model/Race/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ѕ
/linear/linear_model/Race/weighted_sum/Reshape_2Reshape%linear/linear_model/Race/weighted_sum,linear/linear_model/Race/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
z
/linear/linear_model/Relationship/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
∆
+linear/linear_model/Relationship/ExpandDims
ExpandDimsParseExample/ParseExample:10/linear/linear_model/Relationship/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
А
?linear/linear_model/Relationship/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
е
9linear/linear_model/Relationship/to_sparse_input/NotEqualNotEqual+linear/linear_model/Relationship/ExpandDims?linear/linear_model/Relationship/to_sparse_input/ignore_value/x*'
_output_shapes
:€€€€€€€€€*
T0
Ѓ
8linear/linear_model/Relationship/to_sparse_input/indicesWhere9linear/linear_model/Relationship/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:€€€€€€€€€
о
7linear/linear_model/Relationship/to_sparse_input/valuesGatherNd+linear/linear_model/Relationship/ExpandDims8linear/linear_model/Relationship/to_sparse_input/indices*#
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0
І
<linear/linear_model/Relationship/to_sparse_input/dense_shapeShape+linear/linear_model/Relationship/ExpandDims*
T0*
out_type0	*
_output_shapes
:
≈
:linear/linear_model/Relationship/Relationship_lookup/ConstConst*
dtype0*
_output_shapes
:*W
valueNBLBNot-in-familyBHusbandBWifeB	Own-childB	UnmarriedBOther-relative
{
9linear/linear_model/Relationship/Relationship_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
В
@linear/linear_model/Relationship/Relationship_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
В
@linear/linear_model/Relationship/Relationship_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
™
:linear/linear_model/Relationship/Relationship_lookup/rangeRange@linear/linear_model/Relationship/Relationship_lookup/range/start9linear/linear_model/Relationship/Relationship_lookup/Size@linear/linear_model/Relationship/Relationship_lookup/range/delta*

Tidx0*
_output_shapes
:
і
<linear/linear_model/Relationship/Relationship_lookup/ToInt64Cast:linear/linear_model/Relationship/Relationship_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
Ћ
?linear/linear_model/Relationship/Relationship_lookup/hash_tableHashTableV2*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *
shared_name 
Р
Elinear/linear_model/Relationship/Relationship_lookup/hash_table/ConstConst*
_output_shapes
: *
valueB	 R
€€€€€€€€€*
dtype0	
≤
Jlinear/linear_model/Relationship/Relationship_lookup/hash_table/table_initInitializeTableV2?linear/linear_model/Relationship/Relationship_lookup/hash_table:linear/linear_model/Relationship/Relationship_lookup/Const<linear/linear_model/Relationship/Relationship_lookup/ToInt64*

Tkey0*

Tval0	
ƒ
2linear/linear_model/Relationship/hash_table_LookupLookupTableFindV2?linear/linear_model/Relationship/Relationship_lookup/hash_table7linear/linear_model/Relationship/to_sparse_input/valuesElinear/linear_model/Relationship/Relationship_lookup/hash_table/Const*#
_output_shapes
:€€€€€€€€€*	
Tin0*

Tout0	
•
+linear/linear_model/Relationship/Shape/CastCast<linear/linear_model/Relationship/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
~
4linear/linear_model/Relationship/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
А
6linear/linear_model/Relationship/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6linear/linear_model/Relationship/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
£
.linear/linear_model/Relationship/strided_sliceStridedSlice+linear/linear_model/Relationship/Shape/Cast4linear/linear_model/Relationship/strided_slice/stack6linear/linear_model/Relationship/strided_slice/stack_16linear/linear_model/Relationship/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
t
)linear/linear_model/Relationship/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ƒ
'linear/linear_model/Relationship/Cast/xPack.linear/linear_model/Relationship/strided_slice)linear/linear_model/Relationship/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
К
%linear/linear_model/Relationship/CastCast'linear/linear_model/Relationship/Cast/x*
_output_shapes
:*

DstT0	*

SrcT0
Н
.linear/linear_model/Relationship/SparseReshapeSparseReshape8linear/linear_model/Relationship/to_sparse_input/indices<linear/linear_model/Relationship/to_sparse_input/dense_shape%linear/linear_model/Relationship/Cast*-
_output_shapes
:€€€€€€€€€:
•
7linear/linear_model/Relationship/SparseReshape/IdentityIdentity2linear/linear_model/Relationship/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
ж
Qlinear/linear_model/Relationship/weights/part_0/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      *B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0
–
Glinear/linear_model/Relationship/weights/part_0/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*
dtype0
д
Alinear/linear_model/Relationship/weights/part_0/Initializer/zerosFillQlinear/linear_model/Relationship/weights/part_0/Initializer/zeros/shape_as_tensorGlinear/linear_model/Relationship/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*
_output_shapes

:
з
/linear/linear_model/Relationship/weights/part_0
VariableV2*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
 
6linear/linear_model/Relationship/weights/part_0/AssignAssign/linear/linear_model/Relationship/weights/part_0Alinear/linear_model/Relationship/weights/part_0/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*
validate_shape(*
_output_shapes

:
ё
4linear/linear_model/Relationship/weights/part_0/readIdentity/linear/linear_model/Relationship/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*
_output_shapes

:
Г
9linear/linear_model/Relationship/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
В
8linear/linear_model/Relationship/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Х
3linear/linear_model/Relationship/weighted_sum/SliceSlice0linear/linear_model/Relationship/SparseReshape:19linear/linear_model/Relationship/weighted_sum/Slice/begin8linear/linear_model/Relationship/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
}
3linear/linear_model/Relationship/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
2linear/linear_model/Relationship/weighted_sum/ProdProd3linear/linear_model/Relationship/weighted_sum/Slice3linear/linear_model/Relationship/weighted_sum/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
~
<linear/linear_model/Relationship/weighted_sum/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
э
4linear/linear_model/Relationship/weighted_sum/GatherGather0linear/linear_model/Relationship/SparseReshape:1<linear/linear_model/Relationship/weighted_sum/Gather/indices*
_output_shapes
: *
Tindices0*
Tparams0	*
validate_indices(
а
4linear/linear_model/Relationship/weighted_sum/Cast/xPack2linear/linear_model/Relationship/weighted_sum/Prod4linear/linear_model/Relationship/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
У
;linear/linear_model/Relationship/weighted_sum/SparseReshapeSparseReshape.linear/linear_model/Relationship/SparseReshape0linear/linear_model/Relationship/SparseReshape:14linear/linear_model/Relationship/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ј
Dlinear/linear_model/Relationship/weighted_sum/SparseReshape/IdentityIdentity7linear/linear_model/Relationship/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
~
<linear/linear_model/Relationship/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
ь
:linear/linear_model/Relationship/weighted_sum/GreaterEqualGreaterEqualDlinear/linear_model/Relationship/weighted_sum/SparseReshape/Identity<linear/linear_model/Relationship/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
™
3linear/linear_model/Relationship/weighted_sum/WhereWhere:linear/linear_model/Relationship/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

О
;linear/linear_model/Relationship/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
о
5linear/linear_model/Relationship/weighted_sum/ReshapeReshape3linear/linear_model/Relationship/weighted_sum/Where;linear/linear_model/Relationship/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ф
6linear/linear_model/Relationship/weighted_sum/Gather_1Gather;linear/linear_model/Relationship/weighted_sum/SparseReshape5linear/linear_model/Relationship/weighted_sum/Reshape*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0	*
validate_indices(
Щ
6linear/linear_model/Relationship/weighted_sum/Gather_2GatherDlinear/linear_model/Relationship/weighted_sum/SparseReshape/Identity5linear/linear_model/Relationship/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
¶
6linear/linear_model/Relationship/weighted_sum/IdentityIdentity=linear/linear_model/Relationship/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Й
Glinear/linear_model/Relationship/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Љ
Ulinear/linear_model/Relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows6linear/linear_model/Relationship/weighted_sum/Gather_16linear/linear_model/Relationship/weighted_sum/Gather_26linear/linear_model/Relationship/weighted_sum/IdentityGlinear/linear_model/Relationship/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
™
Ylinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ђ
[linear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
ђ
[linear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
о
Slinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceUlinear/linear_model/Relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsYlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack[linear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1[linear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0*
shrink_axis_mask
д
Jlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/CastCastSlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
ы
Llinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/UniqueUniqueWlinear/linear_model/Relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
И
Vlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupGather4linear/linear_model/Relationship/weights/part_0/readLlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/Unique*
Tparams0*
validate_indices(*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Л
Elinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparseSparseSegmentSumVlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupNlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/Unique:1Jlinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
О
=linear/linear_model/Relationship/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Ъ
7linear/linear_model/Relationship/weighted_sum/Reshape_1ReshapeWlinear/linear_model/Relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2=linear/linear_model/Relationship/weighted_sum/Reshape_1/shape*'
_output_shapes
:€€€€€€€€€*
T0
*
Tshape0
Є
3linear/linear_model/Relationship/weighted_sum/ShapeShapeElinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Л
Alinear/linear_model/Relationship/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Н
Clinear/linear_model/Relationship/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Clinear/linear_model/Relationship/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;linear/linear_model/Relationship/weighted_sum/strided_sliceStridedSlice3linear/linear_model/Relationship/weighted_sum/ShapeAlinear/linear_model/Relationship/weighted_sum/strided_slice/stackClinear/linear_model/Relationship/weighted_sum/strided_slice/stack_1Clinear/linear_model/Relationship/weighted_sum/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
w
5linear/linear_model/Relationship/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
й
3linear/linear_model/Relationship/weighted_sum/stackPack5linear/linear_model/Relationship/weighted_sum/stack/0;linear/linear_model/Relationship/weighted_sum/strided_slice*

axis *
N*
_output_shapes
:*
T0
х
2linear/linear_model/Relationship/weighted_sum/TileTile7linear/linear_model/Relationship/weighted_sum/Reshape_13linear/linear_model/Relationship/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

Њ
8linear/linear_model/Relationship/weighted_sum/zeros_like	ZerosLikeElinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ю
-linear/linear_model/Relationship/weighted_sumSelect2linear/linear_model/Relationship/weighted_sum/Tile8linear/linear_model/Relationship/weighted_sum/zeros_likeElinear/linear_model/Relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
4linear/linear_model/Relationship/weighted_sum/Cast_1Cast0linear/linear_model/Relationship/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Е
;linear/linear_model/Relationship/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
Д
:linear/linear_model/Relationship/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Я
5linear/linear_model/Relationship/weighted_sum/Slice_1Slice4linear/linear_model/Relationship/weighted_sum/Cast_1;linear/linear_model/Relationship/weighted_sum/Slice_1/begin:linear/linear_model/Relationship/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
Ґ
5linear/linear_model/Relationship/weighted_sum/Shape_1Shape-linear/linear_model/Relationship/weighted_sum*
T0*
out_type0*
_output_shapes
:
Е
;linear/linear_model/Relationship/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Н
:linear/linear_model/Relationship/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
†
5linear/linear_model/Relationship/weighted_sum/Slice_2Slice5linear/linear_model/Relationship/weighted_sum/Shape_1;linear/linear_model/Relationship/weighted_sum/Slice_2/begin:linear/linear_model/Relationship/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
{
9linear/linear_model/Relationship/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
£
4linear/linear_model/Relationship/weighted_sum/concatConcatV25linear/linear_model/Relationship/weighted_sum/Slice_15linear/linear_model/Relationship/weighted_sum/Slice_29linear/linear_model/Relationship/weighted_sum/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
з
7linear/linear_model/Relationship/weighted_sum/Reshape_2Reshape-linear/linear_model/Relationship/weighted_sum4linear/linear_model/Relationship/weighted_sum/concat*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
q
&linear/linear_model/Sex/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
і
"linear/linear_model/Sex/ExpandDims
ExpandDimsParseExample/ParseExample:11&linear/linear_model/Sex/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
w
6linear/linear_model/Sex/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
 
0linear/linear_model/Sex/to_sparse_input/NotEqualNotEqual"linear/linear_model/Sex/ExpandDims6linear/linear_model/Sex/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:€€€€€€€€€
Ь
/linear/linear_model/Sex/to_sparse_input/indicesWhere0linear/linear_model/Sex/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€*
T0

”
.linear/linear_model/Sex/to_sparse_input/valuesGatherNd"linear/linear_model/Sex/ExpandDims/linear/linear_model/Sex/to_sparse_input/indices*#
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0
Х
3linear/linear_model/Sex/to_sparse_input/dense_shapeShape"linear/linear_model/Sex/ExpandDims*
T0*
out_type0	*
_output_shapes
:
}
(linear/linear_model/Sex/Sex_lookup/ConstConst*!
valueBBMaleBFemale*
dtype0*
_output_shapes
:
i
'linear/linear_model/Sex/Sex_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
p
.linear/linear_model/Sex/Sex_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
p
.linear/linear_model/Sex/Sex_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
в
(linear/linear_model/Sex/Sex_lookup/rangeRange.linear/linear_model/Sex/Sex_lookup/range/start'linear/linear_model/Sex/Sex_lookup/Size.linear/linear_model/Sex/Sex_lookup/range/delta*
_output_shapes
:*

Tidx0
Р
*linear/linear_model/Sex/Sex_lookup/ToInt64Cast(linear/linear_model/Sex/Sex_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
є
-linear/linear_model/Sex/Sex_lookup/hash_tableHashTableV2*
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
~
3linear/linear_model/Sex/Sex_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
к
8linear/linear_model/Sex/Sex_lookup/hash_table/table_initInitializeTableV2-linear/linear_model/Sex/Sex_lookup/hash_table(linear/linear_model/Sex/Sex_lookup/Const*linear/linear_model/Sex/Sex_lookup/ToInt64*

Tkey0*

Tval0	
О
)linear/linear_model/Sex/hash_table_LookupLookupTableFindV2-linear/linear_model/Sex/Sex_lookup/hash_table.linear/linear_model/Sex/to_sparse_input/values3linear/linear_model/Sex/Sex_lookup/hash_table/Const*#
_output_shapes
:€€€€€€€€€*	
Tin0*

Tout0	
У
"linear/linear_model/Sex/Shape/CastCast3linear/linear_model/Sex/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
u
+linear/linear_model/Sex/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
w
-linear/linear_model/Sex/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-linear/linear_model/Sex/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ц
%linear/linear_model/Sex/strided_sliceStridedSlice"linear/linear_model/Sex/Shape/Cast+linear/linear_model/Sex/strided_slice/stack-linear/linear_model/Sex/strided_slice/stack_1-linear/linear_model/Sex/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
k
 linear/linear_model/Sex/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
©
linear/linear_model/Sex/Cast/xPack%linear/linear_model/Sex/strided_slice linear/linear_model/Sex/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
x
linear/linear_model/Sex/CastCastlinear/linear_model/Sex/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
й
%linear/linear_model/Sex/SparseReshapeSparseReshape/linear/linear_model/Sex/to_sparse_input/indices3linear/linear_model/Sex/to_sparse_input/dense_shapelinear/linear_model/Sex/Cast*-
_output_shapes
:€€€€€€€€€:
У
.linear/linear_model/Sex/SparseReshape/IdentityIdentity)linear/linear_model/Sex/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
‘
Hlinear/linear_model/Sex/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"      *9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
dtype0*
_output_shapes
:
Њ
>linear/linear_model/Sex/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
dtype0*
_output_shapes
: 
ј
8linear/linear_model/Sex/weights/part_0/Initializer/zerosFillHlinear/linear_model/Sex/weights/part_0/Initializer/zeros/shape_as_tensor>linear/linear_model/Sex/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
_output_shapes

:
’
&linear/linear_model/Sex/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
	container *
shape
:
¶
-linear/linear_model/Sex/weights/part_0/AssignAssign&linear/linear_model/Sex/weights/part_08linear/linear_model/Sex/weights/part_0/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
validate_shape(*
_output_shapes

:
√
+linear/linear_model/Sex/weights/part_0/readIdentity&linear/linear_model/Sex/weights/part_0*9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
_output_shapes

:*
T0
z
0linear/linear_model/Sex/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
y
/linear/linear_model/Sex/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
с
*linear/linear_model/Sex/weighted_sum/SliceSlice'linear/linear_model/Sex/SparseReshape:10linear/linear_model/Sex/weighted_sum/Slice/begin/linear/linear_model/Sex/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
t
*linear/linear_model/Sex/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
«
)linear/linear_model/Sex/weighted_sum/ProdProd*linear/linear_model/Sex/weighted_sum/Slice*linear/linear_model/Sex/weighted_sum/Const*
T0	*
_output_shapes
: *

Tidx0*
	keep_dims( 
u
3linear/linear_model/Sex/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
в
+linear/linear_model/Sex/weighted_sum/GatherGather'linear/linear_model/Sex/SparseReshape:13linear/linear_model/Sex/weighted_sum/Gather/indices*
_output_shapes
: *
Tindices0*
Tparams0	*
validate_indices(
≈
+linear/linear_model/Sex/weighted_sum/Cast/xPack)linear/linear_model/Sex/weighted_sum/Prod+linear/linear_model/Sex/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
п
2linear/linear_model/Sex/weighted_sum/SparseReshapeSparseReshape%linear/linear_model/Sex/SparseReshape'linear/linear_model/Sex/SparseReshape:1+linear/linear_model/Sex/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
•
;linear/linear_model/Sex/weighted_sum/SparseReshape/IdentityIdentity.linear/linear_model/Sex/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
u
3linear/linear_model/Sex/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
б
1linear/linear_model/Sex/weighted_sum/GreaterEqualGreaterEqual;linear/linear_model/Sex/weighted_sum/SparseReshape/Identity3linear/linear_model/Sex/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Ш
*linear/linear_model/Sex/weighted_sum/WhereWhere1linear/linear_model/Sex/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Е
2linear/linear_model/Sex/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
”
,linear/linear_model/Sex/weighted_sum/ReshapeReshape*linear/linear_model/Sex/weighted_sum/Where2linear/linear_model/Sex/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
щ
-linear/linear_model/Sex/weighted_sum/Gather_1Gather2linear/linear_model/Sex/weighted_sum/SparseReshape,linear/linear_model/Sex/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
ю
-linear/linear_model/Sex/weighted_sum/Gather_2Gather;linear/linear_model/Sex/weighted_sum/SparseReshape/Identity,linear/linear_model/Sex/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
Ф
-linear/linear_model/Sex/weighted_sum/IdentityIdentity4linear/linear_model/Sex/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
А
>linear/linear_model/Sex/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
П
Llinear/linear_model/Sex/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows-linear/linear_model/Sex/weighted_sum/Gather_1-linear/linear_model/Sex/weighted_sum/Gather_2-linear/linear_model/Sex/weighted_sum/Identity>linear/linear_model/Sex/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
°
Plinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
£
Rlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
£
Rlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ѕ
Jlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceLlinear/linear_model/Sex/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsPlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice/stackRlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Rlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0*
shrink_axis_mask
“
Alinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/CastCastJlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
й
Clinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/UniqueUniqueNlinear/linear_model/Sex/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
д
Mlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/embedding_lookupGather+linear/linear_model/Sex/weights/part_0/readClinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/Unique*9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0*
validate_indices(
з
<linear/linear_model/Sex/weighted_sum/embedding_lookup_sparseSparseSegmentSumMlinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/embedding_lookupElinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/Unique:1Alinear/linear_model/Sex/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Е
4linear/linear_model/Sex/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"€€€€   *
dtype0
€
.linear/linear_model/Sex/weighted_sum/Reshape_1ReshapeNlinear/linear_model/Sex/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:24linear/linear_model/Sex/weighted_sum/Reshape_1/shape*'
_output_shapes
:€€€€€€€€€*
T0
*
Tshape0
¶
*linear/linear_model/Sex/weighted_sum/ShapeShape<linear/linear_model/Sex/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
В
8linear/linear_model/Sex/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Д
:linear/linear_model/Sex/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Д
:linear/linear_model/Sex/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
≤
2linear/linear_model/Sex/weighted_sum/strided_sliceStridedSlice*linear/linear_model/Sex/weighted_sum/Shape8linear/linear_model/Sex/weighted_sum/strided_slice/stack:linear/linear_model/Sex/weighted_sum/strided_slice/stack_1:linear/linear_model/Sex/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
n
,linear/linear_model/Sex/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ќ
*linear/linear_model/Sex/weighted_sum/stackPack,linear/linear_model/Sex/weighted_sum/stack/02linear/linear_model/Sex/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Џ
)linear/linear_model/Sex/weighted_sum/TileTile.linear/linear_model/Sex/weighted_sum/Reshape_1*linear/linear_model/Sex/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

ђ
/linear/linear_model/Sex/weighted_sum/zeros_like	ZerosLike<linear/linear_model/Sex/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ъ
$linear/linear_model/Sex/weighted_sumSelect)linear/linear_model/Sex/weighted_sum/Tile/linear/linear_model/Sex/weighted_sum/zeros_like<linear/linear_model/Sex/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Р
+linear/linear_model/Sex/weighted_sum/Cast_1Cast'linear/linear_model/Sex/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
|
2linear/linear_model/Sex/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
{
1linear/linear_model/Sex/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ы
,linear/linear_model/Sex/weighted_sum/Slice_1Slice+linear/linear_model/Sex/weighted_sum/Cast_12linear/linear_model/Sex/weighted_sum/Slice_1/begin1linear/linear_model/Sex/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
Р
,linear/linear_model/Sex/weighted_sum/Shape_1Shape$linear/linear_model/Sex/weighted_sum*
T0*
out_type0*
_output_shapes
:
|
2linear/linear_model/Sex/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Д
1linear/linear_model/Sex/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ь
,linear/linear_model/Sex/weighted_sum/Slice_2Slice,linear/linear_model/Sex/weighted_sum/Shape_12linear/linear_model/Sex/weighted_sum/Slice_2/begin1linear/linear_model/Sex/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
r
0linear/linear_model/Sex/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
€
+linear/linear_model/Sex/weighted_sum/concatConcatV2,linear/linear_model/Sex/weighted_sum/Slice_1,linear/linear_model/Sex/weighted_sum/Slice_20linear/linear_model/Sex/weighted_sum/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
ћ
.linear/linear_model/Sex/weighted_sum/Reshape_2Reshape$linear/linear_model/Sex/weighted_sum+linear/linear_model/Sex/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
w
,linear/linear_model/Workclass/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ј
(linear/linear_model/Workclass/ExpandDims
ExpandDimsParseExample/ParseExample:13,linear/linear_model/Workclass/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
}
<linear/linear_model/Workclass/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
№
6linear/linear_model/Workclass/to_sparse_input/NotEqualNotEqual(linear/linear_model/Workclass/ExpandDims<linear/linear_model/Workclass/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:€€€€€€€€€
®
5linear/linear_model/Workclass/to_sparse_input/indicesWhere6linear/linear_model/Workclass/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:€€€€€€€€€
е
4linear/linear_model/Workclass/to_sparse_input/valuesGatherNd(linear/linear_model/Workclass/ExpandDims5linear/linear_model/Workclass/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:€€€€€€€€€
°
9linear/linear_model/Workclass/to_sparse_input/dense_shapeShape(linear/linear_model/Workclass/ExpandDims*
T0*
out_type0	*
_output_shapes
:
е
4linear/linear_model/Workclass/Workclass_lookup/ConstConst*}
valuetBr	B	State-govBSelf-emp-not-incBPrivateBFederal-govB	Local-govB?BSelf-emp-incBWithout-payBNever-worked*
dtype0*
_output_shapes
:	
u
3linear/linear_model/Workclass/Workclass_lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :	
|
:linear/linear_model/Workclass/Workclass_lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
|
:linear/linear_model/Workclass/Workclass_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
4linear/linear_model/Workclass/Workclass_lookup/rangeRange:linear/linear_model/Workclass/Workclass_lookup/range/start3linear/linear_model/Workclass/Workclass_lookup/Size:linear/linear_model/Workclass/Workclass_lookup/range/delta*
_output_shapes
:	*

Tidx0
®
6linear/linear_model/Workclass/Workclass_lookup/ToInt64Cast4linear/linear_model/Workclass/Workclass_lookup/range*

SrcT0*
_output_shapes
:	*

DstT0	
≈
9linear/linear_model/Workclass/Workclass_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container 
К
?linear/linear_model/Workclass/Workclass_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
Ъ
Dlinear/linear_model/Workclass/Workclass_lookup/hash_table/table_initInitializeTableV29linear/linear_model/Workclass/Workclass_lookup/hash_table4linear/linear_model/Workclass/Workclass_lookup/Const6linear/linear_model/Workclass/Workclass_lookup/ToInt64*

Tkey0*

Tval0	
≤
/linear/linear_model/Workclass/hash_table_LookupLookupTableFindV29linear/linear_model/Workclass/Workclass_lookup/hash_table4linear/linear_model/Workclass/to_sparse_input/values?linear/linear_model/Workclass/Workclass_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
Я
(linear/linear_model/Workclass/Shape/CastCast9linear/linear_model/Workclass/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
{
1linear/linear_model/Workclass/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
}
3linear/linear_model/Workclass/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
}
3linear/linear_model/Workclass/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ф
+linear/linear_model/Workclass/strided_sliceStridedSlice(linear/linear_model/Workclass/Shape/Cast1linear/linear_model/Workclass/strided_slice/stack3linear/linear_model/Workclass/strided_slice/stack_13linear/linear_model/Workclass/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
q
&linear/linear_model/Workclass/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
ї
$linear/linear_model/Workclass/Cast/xPack+linear/linear_model/Workclass/strided_slice&linear/linear_model/Workclass/Cast/x/1*
N*
_output_shapes
:*
T0*

axis 
Д
"linear/linear_model/Workclass/CastCast$linear/linear_model/Workclass/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
Б
+linear/linear_model/Workclass/SparseReshapeSparseReshape5linear/linear_model/Workclass/to_sparse_input/indices9linear/linear_model/Workclass/to_sparse_input/dense_shape"linear/linear_model/Workclass/Cast*-
_output_shapes
:€€€€€€€€€:
Я
4linear/linear_model/Workclass/SparseReshape/IdentityIdentity/linear/linear_model/Workclass/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
а
Nlinear/linear_model/Workclass/weights/part_0/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"	      *?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0
 
Dlinear/linear_model/Workclass/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0*
dtype0*
_output_shapes
: 
Ў
>linear/linear_model/Workclass/weights/part_0/Initializer/zerosFillNlinear/linear_model/Workclass/weights/part_0/Initializer/zeros/shape_as_tensorDlinear/linear_model/Workclass/weights/part_0/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0*
_output_shapes

:	
б
,linear/linear_model/Workclass/weights/part_0
VariableV2*
dtype0*
_output_shapes

:	*
shared_name *?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0*
	container *
shape
:	
Њ
3linear/linear_model/Workclass/weights/part_0/AssignAssign,linear/linear_model/Workclass/weights/part_0>linear/linear_model/Workclass/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:	*
use_locking(*
T0*?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0
’
1linear/linear_model/Workclass/weights/part_0/readIdentity,linear/linear_model/Workclass/weights/part_0*
T0*?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0*
_output_shapes

:	
А
6linear/linear_model/Workclass/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/Workclass/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Й
0linear/linear_model/Workclass/weighted_sum/SliceSlice-linear/linear_model/Workclass/SparseReshape:16linear/linear_model/Workclass/weighted_sum/Slice/begin5linear/linear_model/Workclass/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
z
0linear/linear_model/Workclass/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ў
/linear/linear_model/Workclass/weighted_sum/ProdProd0linear/linear_model/Workclass/weighted_sum/Slice0linear/linear_model/Workclass/weighted_sum/Const*
T0	*
_output_shapes
: *

Tidx0*
	keep_dims( 
{
9linear/linear_model/Workclass/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ф
1linear/linear_model/Workclass/weighted_sum/GatherGather-linear/linear_model/Workclass/SparseReshape:19linear/linear_model/Workclass/weighted_sum/Gather/indices*
_output_shapes
: *
Tindices0*
Tparams0	*
validate_indices(
„
1linear/linear_model/Workclass/weighted_sum/Cast/xPack/linear/linear_model/Workclass/weighted_sum/Prod1linear/linear_model/Workclass/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
З
8linear/linear_model/Workclass/weighted_sum/SparseReshapeSparseReshape+linear/linear_model/Workclass/SparseReshape-linear/linear_model/Workclass/SparseReshape:11linear/linear_model/Workclass/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
±
Alinear/linear_model/Workclass/weighted_sum/SparseReshape/IdentityIdentity4linear/linear_model/Workclass/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
{
9linear/linear_model/Workclass/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
у
7linear/linear_model/Workclass/weighted_sum/GreaterEqualGreaterEqualAlinear/linear_model/Workclass/weighted_sum/SparseReshape/Identity9linear/linear_model/Workclass/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
§
0linear/linear_model/Workclass/weighted_sum/WhereWhere7linear/linear_model/Workclass/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Л
8linear/linear_model/Workclass/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
е
2linear/linear_model/Workclass/weighted_sum/ReshapeReshape0linear/linear_model/Workclass/weighted_sum/Where8linear/linear_model/Workclass/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Л
3linear/linear_model/Workclass/weighted_sum/Gather_1Gather8linear/linear_model/Workclass/weighted_sum/SparseReshape2linear/linear_model/Workclass/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
Р
3linear/linear_model/Workclass/weighted_sum/Gather_2GatherAlinear/linear_model/Workclass/weighted_sum/SparseReshape/Identity2linear/linear_model/Workclass/weighted_sum/Reshape*#
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0	*
validate_indices(
†
3linear/linear_model/Workclass/weighted_sum/IdentityIdentity:linear/linear_model/Workclass/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ж
Dlinear/linear_model/Workclass/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
≠
Rlinear/linear_model/Workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows3linear/linear_model/Workclass/weighted_sum/Gather_13linear/linear_model/Workclass/weighted_sum/Gather_23linear/linear_model/Workclass/weighted_sum/IdentityDlinear/linear_model/Workclass/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
І
Vlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
©
Xlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
©
Xlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
я
Plinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceRlinear/linear_model/Workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsVlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackXlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Xlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0
ё
Glinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/CastCastPlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
х
Ilinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/UniqueUniqueTlinear/linear_model/Workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
ь
Slinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupGather1linear/linear_model/Workclass/weights/part_0/readIlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/Unique*'
_output_shapes
:€€€€€€€€€*
Tindices0	*
Tparams0*
validate_indices(*?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0
€
Blinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparseSparseSegmentSumSlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupKlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/Unique:1Glinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Л
:linear/linear_model/Workclass/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
С
4linear/linear_model/Workclass/weighted_sum/Reshape_1ReshapeTlinear/linear_model/Workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2:linear/linear_model/Workclass/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
≤
0linear/linear_model/Workclass/weighted_sum/ShapeShapeBlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
И
>linear/linear_model/Workclass/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
К
@linear/linear_model/Workclass/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@linear/linear_model/Workclass/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
–
8linear/linear_model/Workclass/weighted_sum/strided_sliceStridedSlice0linear/linear_model/Workclass/weighted_sum/Shape>linear/linear_model/Workclass/weighted_sum/strided_slice/stack@linear/linear_model/Workclass/weighted_sum/strided_slice/stack_1@linear/linear_model/Workclass/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
t
2linear/linear_model/Workclass/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
а
0linear/linear_model/Workclass/weighted_sum/stackPack2linear/linear_model/Workclass/weighted_sum/stack/08linear/linear_model/Workclass/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
м
/linear/linear_model/Workclass/weighted_sum/TileTile4linear/linear_model/Workclass/weighted_sum/Reshape_10linear/linear_model/Workclass/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

Є
5linear/linear_model/Workclass/weighted_sum/zeros_like	ZerosLikeBlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Т
*linear/linear_model/Workclass/weighted_sumSelect/linear/linear_model/Workclass/weighted_sum/Tile5linear/linear_model/Workclass/weighted_sum/zeros_likeBlinear/linear_model/Workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ь
1linear/linear_model/Workclass/weighted_sum/Cast_1Cast-linear/linear_model/Workclass/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
В
8linear/linear_model/Workclass/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
7linear/linear_model/Workclass/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
У
2linear/linear_model/Workclass/weighted_sum/Slice_1Slice1linear/linear_model/Workclass/weighted_sum/Cast_18linear/linear_model/Workclass/weighted_sum/Slice_1/begin7linear/linear_model/Workclass/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ь
2linear/linear_model/Workclass/weighted_sum/Shape_1Shape*linear/linear_model/Workclass/weighted_sum*
T0*
out_type0*
_output_shapes
:
В
8linear/linear_model/Workclass/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
К
7linear/linear_model/Workclass/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ф
2linear/linear_model/Workclass/weighted_sum/Slice_2Slice2linear/linear_model/Workclass/weighted_sum/Shape_18linear/linear_model/Workclass/weighted_sum/Slice_2/begin7linear/linear_model/Workclass/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
x
6linear/linear_model/Workclass/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
1linear/linear_model/Workclass/weighted_sum/concatConcatV22linear/linear_model/Workclass/weighted_sum/Slice_12linear/linear_model/Workclass/weighted_sum/Slice_26linear/linear_model/Workclass/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ё
4linear/linear_model/Workclass/weighted_sum/Reshape_2Reshape*linear/linear_model/Workclass/weighted_sum1linear/linear_model/Workclass/weighted_sum/concat*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
ь
(linear/linear_model/weighted_sum_no_biasAddN$linear/linear_model/Age/weighted_sum-linear/linear_model/Capital-Gain/weighted_sum-linear/linear_model/Capital-Loss/weighted_sum2linear/linear_model/Country/weighted_sum/Reshape_24linear/linear_model/Education/weighted_sum/Reshape_2.linear/linear_model/Education-Num/weighted_sum/linear/linear_model/Hours-per-week/weighted_sum9linear/linear_model/Marital-Status/weighted_sum/Reshape_25linear/linear_model/Occupation/weighted_sum/Reshape_2/linear/linear_model/Race/weighted_sum/Reshape_27linear/linear_model/Relationship/weighted_sum/Reshape_2.linear/linear_model/Sex/weighted_sum/Reshape_24linear/linear_model/Workclass/weighted_sum/Reshape_2*
N*'
_output_shapes
:€€€€€€€€€*
T0
ѕ
Ilinear/linear_model/bias_weights/part_0/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
ј
?linear/linear_model/bias_weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
: 
ј
9linear/linear_model/bias_weights/part_0/Initializer/zerosFillIlinear/linear_model/bias_weights/part_0/Initializer/zeros/shape_as_tensor?linear/linear_model/bias_weights/part_0/Initializer/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:
ѕ
'linear/linear_model/bias_weights/part_0
VariableV2*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:
¶
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
validate_shape(*
_output_shapes
:
¬
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
T0*
_output_shapes
:
ј
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
d
linear/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Љ
linear/strided_sliceStridedSlice,linear/linear_model/bias_weights/part_0/readlinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 
g
linear/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ш
linear/ReshapeReshape4linear/linear_model/Capital-Loss/weights/part_0/readlinear/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
i
linear/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ф
linear/Reshape_1Reshape,linear/linear_model/Race/weights/part_0/readlinear/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0
i
linear/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ь
linear/Reshape_2Reshape4linear/linear_model/Relationship/weights/part_0/readlinear/Reshape_2/shape*
_output_shapes
:*
T0*
Tshape0
i
linear/Reshape_3/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Щ
linear/Reshape_3Reshape1linear/linear_model/Workclass/weights/part_0/readlinear/Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:	
i
linear/Reshape_4/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ь
linear/Reshape_4Reshape4linear/linear_model/Capital-Gain/weights/part_0/readlinear/Reshape_4/shape*
_output_shapes
:*
T0*
Tshape0
i
linear/Reshape_5/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ч
linear/Reshape_5Reshape/linear/linear_model/Country/weights/part_0/readlinear/Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:*
i
linear/Reshape_6/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Щ
linear/Reshape_6Reshape1linear/linear_model/Education/weights/part_0/readlinear/Reshape_6/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_7/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
У
linear/Reshape_7Reshape+linear/linear_model/Age/weights/part_0/readlinear/Reshape_7/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_8/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
У
linear/Reshape_8Reshape+linear/linear_model/Sex/weights/part_0/readlinear/Reshape_8/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_9/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Ъ
linear/Reshape_9Reshape2linear/linear_model/Occupation/weights/part_0/readlinear/Reshape_9/shape*
T0*
Tshape0*
_output_shapes
:
j
linear/Reshape_10/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Я
linear/Reshape_10Reshape5linear/linear_model/Education-Num/weights/part_0/readlinear/Reshape_10/shape*
T0*
Tshape0*
_output_shapes
:
j
linear/Reshape_11/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
†
linear/Reshape_11Reshape6linear/linear_model/Marital-Status/weights/part_0/readlinear/Reshape_11/shape*
_output_shapes
:*
T0*
Tshape0
j
linear/Reshape_12/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
†
linear/Reshape_12Reshape6linear/linear_model/Hours-per-week/weights/part_0/readlinear/Reshape_12/shape*
T0*
Tshape0*
_output_shapes
:
T
linear/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
“
linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/Reshape_4linear/Reshape_5linear/Reshape_6linear/Reshape_7linear/Reshape_8linear/Reshape_9linear/Reshape_10linear/Reshape_11linear/Reshape_12linear/concat/axis*
T0*
N*
_output_shapes
:k*

Tidx0
^
linear/zero_fraction/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
r
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
_output_shapes
:k*
T0
q
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*
_output_shapes
:k*

DstT0
d
linear/zero_fraction/ConstConst*
_output_shapes
:*
valueB: *
dtype0
Ц
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Д
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
Т
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
T0*
_output_shapes
: 
Д
$linear/head/predictions/logits/ShapeShape linear/linear_model/weighted_sum*
T0*
out_type0*
_output_shapes
:
z
8linear/head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
j
blinear/head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
[
Slinear/head/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

 linear/head/predictions/logisticSigmoid linear/linear_model/weighted_sum*'
_output_shapes
:€€€€€€€€€*
T0
Г
"linear/head/predictions/zeros_like	ZerosLike linear/linear_model/weighted_sum*
T0*'
_output_shapes
:€€€€€€€€€
x
-linear/head/predictions/two_class_logits/axisConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
р
(linear/head/predictions/two_class_logitsConcatV2"linear/head/predictions/zeros_like linear/linear_model/weighted_sum-linear/head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:€€€€€€€€€*

Tidx0
М
%linear/head/predictions/probabilitiesSoftmax(linear/head/predictions/two_class_logits*'
_output_shapes
:€€€€€€€€€*
T0
v
+linear/head/predictions/class_ids/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ѕ
!linear/head/predictions/class_idsArgMax(linear/head/predictions/two_class_logits+linear/head/predictions/class_ids/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
q
&linear/head/predictions/ExpandDims/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
є
"linear/head/predictions/ExpandDims
ExpandDims!linear/head/predictions/class_ids&linear/head/predictions/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0	
г
#linear/head/predictions/str_classesAsString"linear/head/predictions/ExpandDims*
T0	*

fill *

scientific( *
width€€€€€€€€€*'
_output_shapes
:€€€€€€€€€*
	precision€€€€€€€€€*
shortest( 
v
linear/head/ShapeShape%linear/head/predictions/probabilities*
_output_shapes
:*
T0*
out_type0
i
linear/head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
µ
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Y
linear/head/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
linear/head/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Y
linear/head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Н
linear/head/rangeRangelinear/head/range/startlinear/head/range/limitlinear/head/range/delta*

Tidx0*
_output_shapes
:
ґ
linear/head/AsStringAsStringlinear/head/range*

scientific( *
width€€€€€€€€€*
_output_shapes
:*
	precision€€€€€€€€€*
shortest( *
T0*

fill 
\
linear/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
linear/head/ExpandDims
ExpandDimslinear/head/AsStringlinear/head/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
^
linear/head/Tile/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :
Х
linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
T0*

axis *
N*
_output_shapes
:
Р
linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_02884fe71577421eb0cbd9e4e4d89522/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
†
save/SaveV2/tensor_namesConst"/device:CPU:0*ƒ
valueЇBЈBglobal_stepBlinear/linear_model/Age/weightsB(linear/linear_model/Capital-Gain/weightsB(linear/linear_model/Capital-Loss/weightsB#linear/linear_model/Country/weightsB)linear/linear_model/Education-Num/weightsB%linear/linear_model/Education/weightsB*linear/linear_model/Hours-per-week/weightsB*linear/linear_model/Marital-Status/weightsB&linear/linear_model/Occupation/weightsB linear/linear_model/Race/weightsB(linear/linear_model/Relationship/weightsBlinear/linear_model/Sex/weightsB%linear/linear_model/Workclass/weightsB linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
≠
save/SaveV2/shape_and_slicesConst"/device:CPU:0*Ќ
value√BјB B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B42 1 0,42:0,1B1 1 0,1:0,1B16 1 0,16:0,1B1 1 0,1:0,1B7 1 0,7:0,1B15 1 0,15:0,1B5 1 0,5:0,1B6 1 0,6:0,1B2 1 0,2:0,1B9 1 0,9:0,1B1 0,1*
dtype0*
_output_shapes
:
и
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step+linear/linear_model/Age/weights/part_0/read4linear/linear_model/Capital-Gain/weights/part_0/read4linear/linear_model/Capital-Loss/weights/part_0/read/linear/linear_model/Country/weights/part_0/read5linear/linear_model/Education-Num/weights/part_0/read1linear/linear_model/Education/weights/part_0/read6linear/linear_model/Hours-per-week/weights/part_0/read6linear/linear_model/Marital-Status/weights/part_0/read2linear/linear_model/Occupation/weights/part_0/read,linear/linear_model/Race/weights/part_0/read4linear/linear_model/Relationship/weights/part_0/read+linear/linear_model/Sex/weights/part_0/read1linear/linear_model/Workclass/weights/part_0/read,linear/linear_model/bias_weights/part_0/read"/device:CPU:0*
dtypes
2	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
£
save/RestoreV2/tensor_namesConst"/device:CPU:0*ƒ
valueЇBЈBglobal_stepBlinear/linear_model/Age/weightsB(linear/linear_model/Capital-Gain/weightsB(linear/linear_model/Capital-Loss/weightsB#linear/linear_model/Country/weightsB)linear/linear_model/Education-Num/weightsB%linear/linear_model/Education/weightsB*linear/linear_model/Hours-per-week/weightsB*linear/linear_model/Marital-Status/weightsB&linear/linear_model/Occupation/weightsB linear/linear_model/Race/weightsB(linear/linear_model/Relationship/weightsBlinear/linear_model/Sex/weightsB%linear/linear_model/Workclass/weightsB linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
∞
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*Ќ
value√BјB B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B42 1 0,42:0,1B1 1 0,1:0,1B16 1 0,16:0,1B1 1 0,1:0,1B7 1 0,7:0,1B15 1 0,15:0,1B5 1 0,5:0,1B6 1 0,6:0,1B2 1 0,2:0,1B9 1 0,9:0,1B1 0,1*
dtype0
Є
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Ґ
_output_shapesП
М:::::*:::::::::	:*
dtypes
2	
Ь
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
ё
save/Assign_1Assign&linear/linear_model/Age/weights/part_0save/RestoreV2:1*
use_locking(*
T0*9
_class/
-+loc:@linear/linear_model/Age/weights/part_0*
validate_shape(*
_output_shapes

:
р
save/Assign_2Assign/linear/linear_model/Capital-Gain/weights/part_0save/RestoreV2:2*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0*
validate_shape(
р
save/Assign_3Assign/linear/linear_model/Capital-Loss/weights/part_0save/RestoreV2:3*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0*
validate_shape(*
_output_shapes

:
ж
save/Assign_4Assign*linear/linear_model/Country/weights/part_0save/RestoreV2:4*
_output_shapes

:**
use_locking(*
T0*=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
validate_shape(
т
save/Assign_5Assign0linear/linear_model/Education-Num/weights/part_0save/RestoreV2:5*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
validate_shape(*
_output_shapes

:
к
save/Assign_6Assign,linear/linear_model/Education/weights/part_0save/RestoreV2:6*?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
ф
save/Assign_7Assign1linear/linear_model/Hours-per-week/weights/part_0save/RestoreV2:7*
_output_shapes

:*
use_locking(*
T0*D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
validate_shape(
ф
save/Assign_8Assign1linear/linear_model/Marital-Status/weights/part_0save/RestoreV2:8*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0
м
save/Assign_9Assign-linear/linear_model/Occupation/weights/part_0save/RestoreV2:9*
T0*@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
в
save/Assign_10Assign'linear/linear_model/Race/weights/part_0save/RestoreV2:10*
use_locking(*
T0*:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*
validate_shape(*
_output_shapes

:
т
save/Assign_11Assign/linear/linear_model/Relationship/weights/part_0save/RestoreV2:11*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0*
validate_shape(*
_output_shapes

:
а
save/Assign_12Assign&linear/linear_model/Sex/weights/part_0save/RestoreV2:12*9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
м
save/Assign_13Assign,linear/linear_model/Workclass/weights/part_0save/RestoreV2:13*
use_locking(*
T0*?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0*
validate_shape(*
_output_shapes

:	
ё
save/Assign_14Assign'linear/linear_model/bias_weights/part_0save/RestoreV2:14*
use_locking(*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
validate_shape(*
_output_shapes
:
Н
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14
-
save/restore_allNoOp^save/restore_shard

initNoOp
«
init_all_tablesNoOpA^linear/linear_model/Country/Country_lookup/hash_table/table_initE^linear/linear_model/Education/Education_lookup/hash_table/table_initO^linear/linear_model/Marital-Status/Marital-Status_lookup/hash_table/table_initG^linear/linear_model/Occupation/Occupation_lookup/hash_table/table_init;^linear/linear_model/Race/Race_lookup/hash_table/table_initK^linear/linear_model/Relationship/Relationship_lookup/hash_table/table_init9^linear/linear_model/Sex/Sex_lookup/hash_table/table_initE^linear/linear_model/Workclass/Workclass_lookup/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_all_tables^init_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_a0134340a50145f5abbb85f4c2ee4578/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Ґ
save_1/SaveV2/tensor_namesConst"/device:CPU:0*ƒ
valueЇBЈBglobal_stepBlinear/linear_model/Age/weightsB(linear/linear_model/Capital-Gain/weightsB(linear/linear_model/Capital-Loss/weightsB#linear/linear_model/Country/weightsB)linear/linear_model/Education-Num/weightsB%linear/linear_model/Education/weightsB*linear/linear_model/Hours-per-week/weightsB*linear/linear_model/Marital-Status/weightsB&linear/linear_model/Occupation/weightsB linear/linear_model/Race/weightsB(linear/linear_model/Relationship/weightsBlinear/linear_model/Sex/weightsB%linear/linear_model/Workclass/weightsB linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
ѓ
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*Ќ
value√BјB B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B42 1 0,42:0,1B1 1 0,1:0,1B16 1 0,16:0,1B1 1 0,1:0,1B7 1 0,7:0,1B15 1 0,15:0,1B5 1 0,5:0,1B6 1 0,6:0,1B2 1 0,2:0,1B9 1 0,9:0,1B1 0,1*
dtype0*
_output_shapes
:
р
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_step+linear/linear_model/Age/weights/part_0/read4linear/linear_model/Capital-Gain/weights/part_0/read4linear/linear_model/Capital-Loss/weights/part_0/read/linear/linear_model/Country/weights/part_0/read5linear/linear_model/Education-Num/weights/part_0/read1linear/linear_model/Education/weights/part_0/read6linear/linear_model/Hours-per-week/weights/part_0/read6linear/linear_model/Marital-Status/weights/part_0/read2linear/linear_model/Occupation/weights/part_0/read,linear/linear_model/Race/weights/part_0/read4linear/linear_model/Relationship/weights/part_0/read+linear/linear_model/Sex/weights/part_0/read1linear/linear_model/Workclass/weights/part_0/read,linear/linear_model/bias_weights/part_0/read"/device:CPU:0*
dtypes
2	
®
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
≤
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
•
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*ƒ
valueЇBЈBglobal_stepBlinear/linear_model/Age/weightsB(linear/linear_model/Capital-Gain/weightsB(linear/linear_model/Capital-Loss/weightsB#linear/linear_model/Country/weightsB)linear/linear_model/Education-Num/weightsB%linear/linear_model/Education/weightsB*linear/linear_model/Hours-per-week/weightsB*linear/linear_model/Marital-Status/weightsB&linear/linear_model/Occupation/weightsB linear/linear_model/Race/weightsB(linear/linear_model/Relationship/weightsBlinear/linear_model/Sex/weightsB%linear/linear_model/Workclass/weightsB linear/linear_model/bias_weights*
dtype0
≤
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ќ
value√BјB B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B42 1 0,42:0,1B1 1 0,1:0,1B16 1 0,16:0,1B1 1 0,1:0,1B7 1 0,7:0,1B15 1 0,15:0,1B5 1 0,5:0,1B6 1 0,6:0,1B2 1 0,2:0,1B9 1 0,9:0,1B1 0,1*
dtype0*
_output_shapes
:
ј
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*Ґ
_output_shapesП
М:::::*:::::::::	:*
dtypes
2	
†
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
в
save_1/Assign_1Assign&linear/linear_model/Age/weights/part_0save_1/RestoreV2:1*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*9
_class/
-+loc:@linear/linear_model/Age/weights/part_0
ф
save_1/Assign_2Assign/linear/linear_model/Capital-Gain/weights/part_0save_1/RestoreV2:2*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Capital-Gain/weights/part_0*
validate_shape(
ф
save_1/Assign_3Assign/linear/linear_model/Capital-Loss/weights/part_0save_1/RestoreV2:3*
T0*B
_class8
64loc:@linear/linear_model/Capital-Loss/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
к
save_1/Assign_4Assign*linear/linear_model/Country/weights/part_0save_1/RestoreV2:4*
use_locking(*
T0*=
_class3
1/loc:@linear/linear_model/Country/weights/part_0*
validate_shape(*
_output_shapes

:*
ц
save_1/Assign_5Assign0linear/linear_model/Education-Num/weights/part_0save_1/RestoreV2:5*
_output_shapes

:*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/Education-Num/weights/part_0*
validate_shape(
о
save_1/Assign_6Assign,linear/linear_model/Education/weights/part_0save_1/RestoreV2:6*
use_locking(*
T0*?
_class5
31loc:@linear/linear_model/Education/weights/part_0*
validate_shape(*
_output_shapes

:
ш
save_1/Assign_7Assign1linear/linear_model/Hours-per-week/weights/part_0save_1/RestoreV2:7*
T0*D
_class:
86loc:@linear/linear_model/Hours-per-week/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
ш
save_1/Assign_8Assign1linear/linear_model/Marital-Status/weights/part_0save_1/RestoreV2:8*
use_locking(*
T0*D
_class:
86loc:@linear/linear_model/Marital-Status/weights/part_0*
validate_shape(*
_output_shapes

:
р
save_1/Assign_9Assign-linear/linear_model/Occupation/weights/part_0save_1/RestoreV2:9*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/Occupation/weights/part_0*
validate_shape(*
_output_shapes

:
ж
save_1/Assign_10Assign'linear/linear_model/Race/weights/part_0save_1/RestoreV2:10*
T0*:
_class0
.,loc:@linear/linear_model/Race/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
ц
save_1/Assign_11Assign/linear/linear_model/Relationship/weights/part_0save_1/RestoreV2:11*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/Relationship/weights/part_0
д
save_1/Assign_12Assign&linear/linear_model/Sex/weights/part_0save_1/RestoreV2:12*
T0*9
_class/
-+loc:@linear/linear_model/Sex/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
р
save_1/Assign_13Assign,linear/linear_model/Workclass/weights/part_0save_1/RestoreV2:13*
use_locking(*
T0*?
_class5
31loc:@linear/linear_model/Workclass/weights/part_0*
validate_shape(*
_output_shapes

:	
в
save_1/Assign_14Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2:14*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
≠
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ђ
model_variablesШХ
у
(linear/linear_model/Age/weights/part_0:0-linear/linear_model/Age/weights/part_0/Assign-linear/linear_model/Age/weights/part_0/read:0"-
linear/linear_model/Age/weights  "2:linear/linear_model/Age/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Capital-Gain/weights/part_0:06linear/linear_model/Capital-Gain/weights/part_0/Assign6linear/linear_model/Capital-Gain/weights/part_0/read:0"6
(linear/linear_model/Capital-Gain/weights  "2Clinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Capital-Loss/weights/part_0:06linear/linear_model/Capital-Loss/weights/part_0/Assign6linear/linear_model/Capital-Loss/weights/part_0/read:0"6
(linear/linear_model/Capital-Loss/weights  "2Clinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros:0
З
,linear/linear_model/Country/weights/part_0:01linear/linear_model/Country/weights/part_0/Assign1linear/linear_model/Country/weights/part_0/read:0"1
#linear/linear_model/Country/weights*  "*2>linear/linear_model/Country/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/Education/weights/part_0:03linear/linear_model/Education/weights/part_0/Assign3linear/linear_model/Education/weights/part_0/read:0"3
%linear/linear_model/Education/weights  "2@linear/linear_model/Education/weights/part_0/Initializer/zeros:0
•
2linear/linear_model/Education-Num/weights/part_0:07linear/linear_model/Education-Num/weights/part_0/Assign7linear/linear_model/Education-Num/weights/part_0/read:0"7
)linear/linear_model/Education-Num/weights  "2Dlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/Hours-per-week/weights/part_0:08linear/linear_model/Hours-per-week/weights/part_0/Assign8linear/linear_model/Hours-per-week/weights/part_0/read:0"8
*linear/linear_model/Hours-per-week/weights  "2Elinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/Marital-Status/weights/part_0:08linear/linear_model/Marital-Status/weights/part_0/Assign8linear/linear_model/Marital-Status/weights/part_0/read:0"8
*linear/linear_model/Marital-Status/weights  "2Elinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros:0
Ц
/linear/linear_model/Occupation/weights/part_0:04linear/linear_model/Occupation/weights/part_0/Assign4linear/linear_model/Occupation/weights/part_0/read:0"4
&linear/linear_model/Occupation/weights  "2Alinear/linear_model/Occupation/weights/part_0/Initializer/zeros:0
ш
)linear/linear_model/Race/weights/part_0:0.linear/linear_model/Race/weights/part_0/Assign.linear/linear_model/Race/weights/part_0/read:0".
 linear/linear_model/Race/weights  "2;linear/linear_model/Race/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Relationship/weights/part_0:06linear/linear_model/Relationship/weights/part_0/Assign6linear/linear_model/Relationship/weights/part_0/read:0"6
(linear/linear_model/Relationship/weights  "2Clinear/linear_model/Relationship/weights/part_0/Initializer/zeros:0
у
(linear/linear_model/Sex/weights/part_0:0-linear/linear_model/Sex/weights/part_0/Assign-linear/linear_model/Sex/weights/part_0/read:0"-
linear/linear_model/Sex/weights  "2:linear/linear_model/Sex/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/Workclass/weights/part_0:03linear/linear_model/Workclass/weights/part_0/Assign3linear/linear_model/Workclass/weights/part_0/read:0"3
%linear/linear_model/Workclass/weights	  "	2@linear/linear_model/Workclass/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"∞
trainable_variablesШХ
у
(linear/linear_model/Age/weights/part_0:0-linear/linear_model/Age/weights/part_0/Assign-linear/linear_model/Age/weights/part_0/read:0"-
linear/linear_model/Age/weights  "2:linear/linear_model/Age/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Capital-Gain/weights/part_0:06linear/linear_model/Capital-Gain/weights/part_0/Assign6linear/linear_model/Capital-Gain/weights/part_0/read:0"6
(linear/linear_model/Capital-Gain/weights  "2Clinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Capital-Loss/weights/part_0:06linear/linear_model/Capital-Loss/weights/part_0/Assign6linear/linear_model/Capital-Loss/weights/part_0/read:0"6
(linear/linear_model/Capital-Loss/weights  "2Clinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros:0
З
,linear/linear_model/Country/weights/part_0:01linear/linear_model/Country/weights/part_0/Assign1linear/linear_model/Country/weights/part_0/read:0"1
#linear/linear_model/Country/weights*  "*2>linear/linear_model/Country/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/Education/weights/part_0:03linear/linear_model/Education/weights/part_0/Assign3linear/linear_model/Education/weights/part_0/read:0"3
%linear/linear_model/Education/weights  "2@linear/linear_model/Education/weights/part_0/Initializer/zeros:0
•
2linear/linear_model/Education-Num/weights/part_0:07linear/linear_model/Education-Num/weights/part_0/Assign7linear/linear_model/Education-Num/weights/part_0/read:0"7
)linear/linear_model/Education-Num/weights  "2Dlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/Hours-per-week/weights/part_0:08linear/linear_model/Hours-per-week/weights/part_0/Assign8linear/linear_model/Hours-per-week/weights/part_0/read:0"8
*linear/linear_model/Hours-per-week/weights  "2Elinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/Marital-Status/weights/part_0:08linear/linear_model/Marital-Status/weights/part_0/Assign8linear/linear_model/Marital-Status/weights/part_0/read:0"8
*linear/linear_model/Marital-Status/weights  "2Elinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros:0
Ц
/linear/linear_model/Occupation/weights/part_0:04linear/linear_model/Occupation/weights/part_0/Assign4linear/linear_model/Occupation/weights/part_0/read:0"4
&linear/linear_model/Occupation/weights  "2Alinear/linear_model/Occupation/weights/part_0/Initializer/zeros:0
ш
)linear/linear_model/Race/weights/part_0:0.linear/linear_model/Race/weights/part_0/Assign.linear/linear_model/Race/weights/part_0/read:0".
 linear/linear_model/Race/weights  "2;linear/linear_model/Race/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Relationship/weights/part_0:06linear/linear_model/Relationship/weights/part_0/Assign6linear/linear_model/Relationship/weights/part_0/read:0"6
(linear/linear_model/Relationship/weights  "2Clinear/linear_model/Relationship/weights/part_0/Initializer/zeros:0
у
(linear/linear_model/Sex/weights/part_0:0-linear/linear_model/Sex/weights/part_0/Assign-linear/linear_model/Sex/weights/part_0/read:0"-
linear/linear_model/Sex/weights  "2:linear/linear_model/Sex/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/Workclass/weights/part_0:03linear/linear_model/Workclass/weights/part_0/Assign3linear/linear_model/Workclass/weights/part_0/read:0"3
%linear/linear_model/Workclass/weights	  "	2@linear/linear_model/Workclass/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"А
	variablesтп
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
у
(linear/linear_model/Age/weights/part_0:0-linear/linear_model/Age/weights/part_0/Assign-linear/linear_model/Age/weights/part_0/read:0"-
linear/linear_model/Age/weights  "2:linear/linear_model/Age/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Capital-Gain/weights/part_0:06linear/linear_model/Capital-Gain/weights/part_0/Assign6linear/linear_model/Capital-Gain/weights/part_0/read:0"6
(linear/linear_model/Capital-Gain/weights  "2Clinear/linear_model/Capital-Gain/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Capital-Loss/weights/part_0:06linear/linear_model/Capital-Loss/weights/part_0/Assign6linear/linear_model/Capital-Loss/weights/part_0/read:0"6
(linear/linear_model/Capital-Loss/weights  "2Clinear/linear_model/Capital-Loss/weights/part_0/Initializer/zeros:0
З
,linear/linear_model/Country/weights/part_0:01linear/linear_model/Country/weights/part_0/Assign1linear/linear_model/Country/weights/part_0/read:0"1
#linear/linear_model/Country/weights*  "*2>linear/linear_model/Country/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/Education/weights/part_0:03linear/linear_model/Education/weights/part_0/Assign3linear/linear_model/Education/weights/part_0/read:0"3
%linear/linear_model/Education/weights  "2@linear/linear_model/Education/weights/part_0/Initializer/zeros:0
•
2linear/linear_model/Education-Num/weights/part_0:07linear/linear_model/Education-Num/weights/part_0/Assign7linear/linear_model/Education-Num/weights/part_0/read:0"7
)linear/linear_model/Education-Num/weights  "2Dlinear/linear_model/Education-Num/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/Hours-per-week/weights/part_0:08linear/linear_model/Hours-per-week/weights/part_0/Assign8linear/linear_model/Hours-per-week/weights/part_0/read:0"8
*linear/linear_model/Hours-per-week/weights  "2Elinear/linear_model/Hours-per-week/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/Marital-Status/weights/part_0:08linear/linear_model/Marital-Status/weights/part_0/Assign8linear/linear_model/Marital-Status/weights/part_0/read:0"8
*linear/linear_model/Marital-Status/weights  "2Elinear/linear_model/Marital-Status/weights/part_0/Initializer/zeros:0
Ц
/linear/linear_model/Occupation/weights/part_0:04linear/linear_model/Occupation/weights/part_0/Assign4linear/linear_model/Occupation/weights/part_0/read:0"4
&linear/linear_model/Occupation/weights  "2Alinear/linear_model/Occupation/weights/part_0/Initializer/zeros:0
ш
)linear/linear_model/Race/weights/part_0:0.linear/linear_model/Race/weights/part_0/Assign.linear/linear_model/Race/weights/part_0/read:0".
 linear/linear_model/Race/weights  "2;linear/linear_model/Race/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/Relationship/weights/part_0:06linear/linear_model/Relationship/weights/part_0/Assign6linear/linear_model/Relationship/weights/part_0/read:0"6
(linear/linear_model/Relationship/weights  "2Clinear/linear_model/Relationship/weights/part_0/Initializer/zeros:0
у
(linear/linear_model/Sex/weights/part_0:0-linear/linear_model/Sex/weights/part_0/Assign-linear/linear_model/Sex/weights/part_0/read:0"-
linear/linear_model/Sex/weights  "2:linear/linear_model/Sex/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/Workclass/weights/part_0:03linear/linear_model/Workclass/weights/part_0/Assign3linear/linear_model/Workclass/weights/part_0/read:0"3
%linear/linear_model/Workclass/weights	  "	2@linear/linear_model/Workclass/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0" 
legacy_init_op


group_deps"Ѕ
table_initializerЂ
®
@linear/linear_model/Country/Country_lookup/hash_table/table_init
Dlinear/linear_model/Education/Education_lookup/hash_table/table_init
Nlinear/linear_model/Marital-Status/Marital-Status_lookup/hash_table/table_init
Flinear/linear_model/Occupation/Occupation_lookup/hash_table/table_init
:linear/linear_model/Race/Race_lookup/hash_table/table_init
Jlinear/linear_model/Relationship/Relationship_lookup/hash_table/table_init
8linear/linear_model/Sex/Sex_lookup/hash_table/table_init
Dlinear/linear_model/Workclass/Workclass_lookup/hash_table/table_init" 
global_step

global_step:0*е
classification“
3
inputs)
input_example_tensor:0€€€€€€€€€4
classes)
linear/head/Tile:0€€€€€€€€€H
scores>
'linear/head/predictions/probabilities:0€€€€€€€€€tensorflow/serving/classify*¶

regressionЧ
3
inputs)
input_example_tensor:0€€€€€€€€€D
outputs9
"linear/head/predictions/logistic:0€€€€€€€€€tensorflow/serving/regress*ж
serving_default“
3
inputs)
input_example_tensor:0€€€€€€€€€H
scores>
'linear/head/predictions/probabilities:0€€€€€€€€€4
classes)
linear/head/Tile:0€€€€€€€€€tensorflow/serving/classify*ѕ
predict√
5
examples)
input_example_tensor:0€€€€€€€€€E
logistic9
"linear/head/predictions/logistic:0€€€€€€€€€H
	class_ids;
$linear/head/predictions/ExpandDims:0	€€€€€€€€€O
probabilities>
'linear/head/predictions/probabilities:0€€€€€€€€€G
classes<
%linear/head/predictions/str_classes:0€€€€€€€€€C
logits9
"linear/linear_model/weighted_sum:0€€€€€€€€€tensorflow/serving/predict