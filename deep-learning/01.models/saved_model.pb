??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ݩ
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@
*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:
*
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
?
%simple_rnn_4/simple_rnn_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%simple_rnn_4/simple_rnn_cell_5/kernel
?
9simple_rnn_4/simple_rnn_cell_5/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_4/simple_rnn_cell_5/kernel*
_output_shapes

:@*
dtype0
?
/simple_rnn_4/simple_rnn_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*@
shared_name1/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel
?
Csimple_rnn_4/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel*
_output_shapes

:@@*
dtype0
?
#simple_rnn_4/simple_rnn_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#simple_rnn_4/simple_rnn_cell_5/bias
?
7simple_rnn_4/simple_rnn_cell_5/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_4/simple_rnn_cell_5/bias*
_output_shapes
:@*
dtype0
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@
*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0
?
,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/m
?
@Adam/simple_rnn_4/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/m*
_output_shapes

:@*
dtype0
?
6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/m
?
JAdam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
?
*Adam/simple_rnn_4/simple_rnn_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_4/simple_rnn_cell_5/bias/m
?
>Adam/simple_rnn_4/simple_rnn_cell_5/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_4/simple_rnn_cell_5/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@
*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:
*
dtype0
?
,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/v
?
@Adam/simple_rnn_4/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/v*
_output_shapes

:@*
dtype0
?
6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/v
?
JAdam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
?
*Adam/simple_rnn_4/simple_rnn_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_4/simple_rnn_cell_5/bias/v
?
>Adam/simple_rnn_4/simple_rnn_cell_5/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_4/simple_rnn_cell_5/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
?$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?#
value?#B?# B?#
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
 
l

cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratemBmCmDmEmFvGvHvIvJvK
#
0
1
2
3
4
#
0
1
2
3
4
 
?
trainable_variables
	variables
metrics
non_trainable_variables
 layer_regularization_losses

!layers
"layer_metrics
regularization_losses
 
~

kernel
recurrent_kernel
bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
 

0
1
2

0
1
2
 
?
trainable_variables
	variables
'metrics
(non_trainable_variables
)layer_regularization_losses

*states

+layers
,layer_metrics
regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
-metrics
.non_trainable_variables
/layer_regularization_losses

0layers
1layer_metrics
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%simple_rnn_4/simple_rnn_cell_5/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_4/simple_rnn_cell_5/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

20
31
 
 

0
1
2
 

0
1
2

0
1
2
 
?
#trainable_variables
$	variables
4metrics
5non_trainable_variables
6layer_regularization_losses

7layers
8layer_metrics
%regularization_losses
 
 
 
 


0
 
 
 
 
 
 
4
	9total
	:count
;	variables
<	keras_api
D
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

90
:1

;	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

@	variables
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/simple_rnn_4/simple_rnn_cell_5/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/simple_rnn_4/simple_rnn_cell_5/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_6Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6%simple_rnn_4/simple_rnn_cell_5/kernel#simple_rnn_4/simple_rnn_cell_5/bias/simple_rnn_4/simple_rnn_cell_5/recurrent_kerneldense_3/kerneldense_3/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_57873
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_4/simple_rnn_cell_5/kernel/Read/ReadVariableOpCsimple_rnn_4/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOp7simple_rnn_4/simple_rnn_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp@Adam/simple_rnn_4/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_4/simple_rnn_cell_5/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp@Adam/simple_rnn_4/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_4/simple_rnn_cell_5/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_58810
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_4/simple_rnn_cell_5/kernel/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel#simple_rnn_4/simple_rnn_cell_5/biastotalcounttotal_1count_1Adam/dense_3/kernel/mAdam/dense_3/bias/m,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/m6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/m*Adam/simple_rnn_4/simple_rnn_cell_5/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/v,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/v6Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/v*Adam/simple_rnn_4/simple_rnn_cell_5/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_58892??
?4
?
while_body_58187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02/
-while/simple_rnn_cell_5/MatMul/ReadVariableOp?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
while/simple_rnn_cell_5/MatMul?
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_5/BiasAdd?
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_5/MatMul_1?
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/add?
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?

?
1__inference_simple_rnn_cell_5_layer_call_fn_58715

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_570942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?c
?
B__inference_model_2_layer_call_and_return_conditional_losses_57992

inputsO
=simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource:@L
>simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource:@Q
?simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@8
&dense_3_matmul_readvariableop_resource:@
5
'dense_3_biasadd_readvariableop_resource:

identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp?4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp?simple_rnn_4/while^
simple_rnn_4/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn_4/Shape?
 simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_4/strided_slice/stack?
"simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_4/strided_slice/stack_1?
"simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_4/strided_slice/stack_2?
simple_rnn_4/strided_sliceStridedSlicesimple_rnn_4/Shape:output:0)simple_rnn_4/strided_slice/stack:output:0+simple_rnn_4/strided_slice/stack_1:output:0+simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_4/strided_slicev
simple_rnn_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_4/zeros/mul/y?
simple_rnn_4/zeros/mulMul#simple_rnn_4/strided_slice:output:0!simple_rnn_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/zeros/muly
simple_rnn_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_4/zeros/Less/y?
simple_rnn_4/zeros/LessLesssimple_rnn_4/zeros/mul:z:0"simple_rnn_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/zeros/Less|
simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_4/zeros/packed/1?
simple_rnn_4/zeros/packedPack#simple_rnn_4/strided_slice:output:0$simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_4/zeros/packedy
simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_4/zeros/Const?
simple_rnn_4/zerosFill"simple_rnn_4/zeros/packed:output:0!simple_rnn_4/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_4/zeros?
simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_4/transpose/perm?
simple_rnn_4/transpose	Transposeinputs$simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
simple_rnn_4/transposev
simple_rnn_4/Shape_1Shapesimple_rnn_4/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_4/Shape_1?
"simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_4/strided_slice_1/stack?
$simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_1/stack_1?
$simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_1/stack_2?
simple_rnn_4/strided_slice_1StridedSlicesimple_rnn_4/Shape_1:output:0+simple_rnn_4/strided_slice_1/stack:output:0-simple_rnn_4/strided_slice_1/stack_1:output:0-simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_4/strided_slice_1?
(simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(simple_rnn_4/TensorArrayV2/element_shape?
simple_rnn_4/TensorArrayV2TensorListReserve1simple_rnn_4/TensorArrayV2/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_4/TensorArrayV2?
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_4/transpose:y:0Ksimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensor?
"simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_4/strided_slice_2/stack?
$simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_2/stack_1?
$simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_2/stack_2?
simple_rnn_4/strided_slice_2StridedSlicesimple_rnn_4/transpose:y:0+simple_rnn_4/strided_slice_2/stack:output:0-simple_rnn_4/strided_slice_2/stack_1:output:0-simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
simple_rnn_4/strided_slice_2?
4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype026
4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?
%simple_rnn_4/simple_rnn_cell_5/MatMulMatMul%simple_rnn_4/strided_slice_2:output:0<simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2'
%simple_rnn_4/simple_rnn_cell_5/MatMul?
5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
&simple_rnn_4/simple_rnn_cell_5/BiasAddBiasAdd/simple_rnn_4/simple_rnn_cell_5/MatMul:product:0=simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&simple_rnn_4/simple_rnn_cell_5/BiasAdd?
6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
'simple_rnn_4/simple_rnn_cell_5/MatMul_1MatMulsimple_rnn_4/zeros:output:0>simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2)
'simple_rnn_4/simple_rnn_cell_5/MatMul_1?
"simple_rnn_4/simple_rnn_cell_5/addAddV2/simple_rnn_4/simple_rnn_cell_5/BiasAdd:output:01simple_rnn_4/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2$
"simple_rnn_4/simple_rnn_cell_5/add?
#simple_rnn_4/simple_rnn_cell_5/TanhTanh&simple_rnn_4/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2%
#simple_rnn_4/simple_rnn_cell_5/Tanh?
*simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2,
*simple_rnn_4/TensorArrayV2_1/element_shape?
simple_rnn_4/TensorArrayV2_1TensorListReserve3simple_rnn_4/TensorArrayV2_1/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_4/TensorArrayV2_1h
simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_4/time?
%simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%simple_rnn_4/while/maximum_iterations?
simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_4/while/loop_counter?
simple_rnn_4/whileWhile(simple_rnn_4/while/loop_counter:output:0.simple_rnn_4/while/maximum_iterations:output:0simple_rnn_4/time:output:0%simple_rnn_4/TensorArrayV2_1:handle:0simple_rnn_4/zeros:output:0%simple_rnn_4/strided_slice_1:output:0Dsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource>simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource?simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_4_while_body_57919*)
cond!R
simple_rnn_4_while_cond_57918*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
simple_rnn_4/while?
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2?
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape?
/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_4/while:output:3Fsimple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype021
/simple_rnn_4/TensorArrayV2Stack/TensorListStack?
"simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"simple_rnn_4/strided_slice_3/stack?
$simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_4/strided_slice_3/stack_1?
$simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_3/stack_2?
simple_rnn_4/strided_slice_3StridedSlice8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_4/strided_slice_3/stack:output:0-simple_rnn_4/strided_slice_3/stack_1:output:0-simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
simple_rnn_4/strided_slice_3?
simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_4/transpose_1/perm?
simple_rnn_4/transpose_1	Transpose8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
simple_rnn_4/transpose_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul%simple_rnn_4/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_3/Softmax?
IdentityIdentitydense_3/Softmax:softmax:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp6^simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp5^simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp7^simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp^simple_rnn_4/while*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2n
5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp2l
4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp2p
6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp2(
simple_rnn_4/whilesimple_rnn_4/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_57160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57160___redundant_placeholder03
/while_while_cond_57160___redundant_placeholder13
/while_while_cond_57160___redundant_placeholder23
/while_while_cond_57160___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?p
?
 __inference__wrapped_model_56922
input_6W
Emodel_2_simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource:@T
Fmodel_2_simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource:@Y
Gmodel_2_simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@@
.model_2_dense_3_matmul_readvariableop_resource:@
=
/model_2_dense_3_biasadd_readvariableop_resource:

identity??&model_2/dense_3/BiasAdd/ReadVariableOp?%model_2/dense_3/MatMul/ReadVariableOp?=model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp?<model_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?>model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp?model_2/simple_rnn_4/whileo
model_2/simple_rnn_4/ShapeShapeinput_6*
T0*
_output_shapes
:2
model_2/simple_rnn_4/Shape?
(model_2/simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_2/simple_rnn_4/strided_slice/stack?
*model_2/simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_2/simple_rnn_4/strided_slice/stack_1?
*model_2/simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_2/simple_rnn_4/strided_slice/stack_2?
"model_2/simple_rnn_4/strided_sliceStridedSlice#model_2/simple_rnn_4/Shape:output:01model_2/simple_rnn_4/strided_slice/stack:output:03model_2/simple_rnn_4/strided_slice/stack_1:output:03model_2/simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_2/simple_rnn_4/strided_slice?
 model_2/simple_rnn_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2"
 model_2/simple_rnn_4/zeros/mul/y?
model_2/simple_rnn_4/zeros/mulMul+model_2/simple_rnn_4/strided_slice:output:0)model_2/simple_rnn_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
model_2/simple_rnn_4/zeros/mul?
!model_2/simple_rnn_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!model_2/simple_rnn_4/zeros/Less/y?
model_2/simple_rnn_4/zeros/LessLess"model_2/simple_rnn_4/zeros/mul:z:0*model_2/simple_rnn_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
model_2/simple_rnn_4/zeros/Less?
#model_2/simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_2/simple_rnn_4/zeros/packed/1?
!model_2/simple_rnn_4/zeros/packedPack+model_2/simple_rnn_4/strided_slice:output:0,model_2/simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!model_2/simple_rnn_4/zeros/packed?
 model_2/simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 model_2/simple_rnn_4/zeros/Const?
model_2/simple_rnn_4/zerosFill*model_2/simple_rnn_4/zeros/packed:output:0)model_2/simple_rnn_4/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
model_2/simple_rnn_4/zeros?
#model_2/simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#model_2/simple_rnn_4/transpose/perm?
model_2/simple_rnn_4/transpose	Transposeinput_6,model_2/simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2 
model_2/simple_rnn_4/transpose?
model_2/simple_rnn_4/Shape_1Shape"model_2/simple_rnn_4/transpose:y:0*
T0*
_output_shapes
:2
model_2/simple_rnn_4/Shape_1?
*model_2/simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_2/simple_rnn_4/strided_slice_1/stack?
,model_2/simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_2/simple_rnn_4/strided_slice_1/stack_1?
,model_2/simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_2/simple_rnn_4/strided_slice_1/stack_2?
$model_2/simple_rnn_4/strided_slice_1StridedSlice%model_2/simple_rnn_4/Shape_1:output:03model_2/simple_rnn_4/strided_slice_1/stack:output:05model_2/simple_rnn_4/strided_slice_1/stack_1:output:05model_2/simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$model_2/simple_rnn_4/strided_slice_1?
0model_2/simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0model_2/simple_rnn_4/TensorArrayV2/element_shape?
"model_2/simple_rnn_4/TensorArrayV2TensorListReserve9model_2/simple_rnn_4/TensorArrayV2/element_shape:output:0-model_2/simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"model_2/simple_rnn_4/TensorArrayV2?
Jmodel_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jmodel_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
<model_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"model_2/simple_rnn_4/transpose:y:0Smodel_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<model_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor?
*model_2/simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_2/simple_rnn_4/strided_slice_2/stack?
,model_2/simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_2/simple_rnn_4/strided_slice_2/stack_1?
,model_2/simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_2/simple_rnn_4/strided_slice_2/stack_2?
$model_2/simple_rnn_4/strided_slice_2StridedSlice"model_2/simple_rnn_4/transpose:y:03model_2/simple_rnn_4/strided_slice_2/stack:output:05model_2/simple_rnn_4/strided_slice_2/stack_1:output:05model_2/simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$model_2/simple_rnn_4/strided_slice_2?
<model_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpEmodel_2_simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02>
<model_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?
-model_2/simple_rnn_4/simple_rnn_cell_5/MatMulMatMul-model_2/simple_rnn_4/strided_slice_2:output:0Dmodel_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2/
-model_2/simple_rnn_4/simple_rnn_cell_5/MatMul?
=model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpFmodel_2_simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02?
=model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
.model_2/simple_rnn_4/simple_rnn_cell_5/BiasAddBiasAdd7model_2/simple_rnn_4/simple_rnn_cell_5/MatMul:product:0Emodel_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@20
.model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd?
>model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpGmodel_2_simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02@
>model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
/model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1MatMul#model_2/simple_rnn_4/zeros:output:0Fmodel_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@21
/model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1?
*model_2/simple_rnn_4/simple_rnn_cell_5/addAddV27model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd:output:09model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2,
*model_2/simple_rnn_4/simple_rnn_cell_5/add?
+model_2/simple_rnn_4/simple_rnn_cell_5/TanhTanh.model_2/simple_rnn_4/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2-
+model_2/simple_rnn_4/simple_rnn_cell_5/Tanh?
2model_2/simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   24
2model_2/simple_rnn_4/TensorArrayV2_1/element_shape?
$model_2/simple_rnn_4/TensorArrayV2_1TensorListReserve;model_2/simple_rnn_4/TensorArrayV2_1/element_shape:output:0-model_2/simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$model_2/simple_rnn_4/TensorArrayV2_1x
model_2/simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_2/simple_rnn_4/time?
-model_2/simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-model_2/simple_rnn_4/while/maximum_iterations?
'model_2/simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_2/simple_rnn_4/while/loop_counter?
model_2/simple_rnn_4/whileWhile0model_2/simple_rnn_4/while/loop_counter:output:06model_2/simple_rnn_4/while/maximum_iterations:output:0"model_2/simple_rnn_4/time:output:0-model_2/simple_rnn_4/TensorArrayV2_1:handle:0#model_2/simple_rnn_4/zeros:output:0-model_2/simple_rnn_4/strided_slice_1:output:0Lmodel_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0Emodel_2_simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resourceFmodel_2_simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resourceGmodel_2_simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*1
body)R'
%model_2_simple_rnn_4_while_body_56849*1
cond)R'
%model_2_simple_rnn_4_while_cond_56848*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
model_2/simple_rnn_4/while?
Emodel_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2G
Emodel_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape?
7model_2/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStack#model_2/simple_rnn_4/while:output:3Nmodel_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype029
7model_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack?
*model_2/simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*model_2/simple_rnn_4/strided_slice_3/stack?
,model_2/simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_2/simple_rnn_4/strided_slice_3/stack_1?
,model_2/simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_2/simple_rnn_4/strided_slice_3/stack_2?
$model_2/simple_rnn_4/strided_slice_3StridedSlice@model_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:03model_2/simple_rnn_4/strided_slice_3/stack:output:05model_2/simple_rnn_4/strided_slice_3/stack_1:output:05model_2/simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2&
$model_2/simple_rnn_4/strided_slice_3?
%model_2/simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%model_2/simple_rnn_4/transpose_1/perm?
 model_2/simple_rnn_4/transpose_1	Transpose@model_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0.model_2/simple_rnn_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2"
 model_2/simple_rnn_4/transpose_1?
%model_2/dense_3/MatMul/ReadVariableOpReadVariableOp.model_2_dense_3_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02'
%model_2/dense_3/MatMul/ReadVariableOp?
model_2/dense_3/MatMulMatMul-model_2/simple_rnn_4/strided_slice_3:output:0-model_2/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model_2/dense_3/MatMul?
&model_2/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&model_2/dense_3/BiasAdd/ReadVariableOp?
model_2/dense_3/BiasAddBiasAdd model_2/dense_3/MatMul:product:0.model_2/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model_2/dense_3/BiasAdd?
model_2/dense_3/SoftmaxSoftmax model_2/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model_2/dense_3/Softmax?
IdentityIdentity!model_2/dense_3/Softmax:softmax:0'^model_2/dense_3/BiasAdd/ReadVariableOp&^model_2/dense_3/MatMul/ReadVariableOp>^model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp=^model_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?^model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp^model_2/simple_rnn_4/while*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2P
&model_2/dense_3/BiasAdd/ReadVariableOp&model_2/dense_3/BiasAdd/ReadVariableOp2N
%model_2/dense_3/MatMul/ReadVariableOp%model_2/dense_3/MatMul/ReadVariableOp2~
=model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp=model_2/simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp2|
<model_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp<model_2/simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp2?
>model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp>model_2/simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp28
model_2/simple_rnn_4/whilemodel_2/simple_rnn_4/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_6
?4
?
while_body_57508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02/
-while/simple_rnn_cell_5/MatMul/ReadVariableOp?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
while/simple_rnn_cell_5/MatMul?
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_5/BiasAdd?
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_5/MatMul_1?
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/add?
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_57790

inputs$
simple_rnn_4_57777:@ 
simple_rnn_4_57779:@$
simple_rnn_4_57781:@@
dense_3_57784:@

dense_3_57786:

identity??dense_3/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_4_57777simple_rnn_4_57779simple_rnn_4_57781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_577482&
$simple_rnn_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_3_57784dense_3_57786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_575932!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_57613
input_6
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@

	unknown_3:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_576002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_6
?
?
while_cond_58298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58298___redundant_placeholder03
/while_while_cond_58298___redundant_placeholder13
/while_while_cond_58298___redundant_placeholder23
/while_while_cond_58298___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_simple_rnn_4_layer_call_fn_58622

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_575742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
simple_rnn_4_while_cond_580376
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_28
4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_58037___redundant_placeholder0M
Isimple_rnn_4_while_simple_rnn_4_while_cond_58037___redundant_placeholder1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_58037___redundant_placeholder2M
Isimple_rnn_4_while_simple_rnn_4_while_cond_58037___redundant_placeholder3
simple_rnn_4_while_identity
?
simple_rnn_4/while/LessLesssimple_rnn_4_while_placeholder4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_4/while/Less?
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_4/while/Identity"C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
%model_2_simple_rnn_4_while_cond_56848F
Bmodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_loop_counterL
Hmodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_maximum_iterations*
&model_2_simple_rnn_4_while_placeholder,
(model_2_simple_rnn_4_while_placeholder_1,
(model_2_simple_rnn_4_while_placeholder_2H
Dmodel_2_simple_rnn_4_while_less_model_2_simple_rnn_4_strided_slice_1]
Ymodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_cond_56848___redundant_placeholder0]
Ymodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_cond_56848___redundant_placeholder1]
Ymodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_cond_56848___redundant_placeholder2]
Ymodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_cond_56848___redundant_placeholder3'
#model_2_simple_rnn_4_while_identity
?
model_2/simple_rnn_4/while/LessLess&model_2_simple_rnn_4_while_placeholderDmodel_2_simple_rnn_4_while_less_model_2_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: 2!
model_2/simple_rnn_4/while/Less?
#model_2/simple_rnn_4/while/IdentityIdentity#model_2/simple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: 2%
#model_2/simple_rnn_4/while/Identity"S
#model_2_simple_rnn_4_while_identity,model_2/simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_58522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58522___redundant_placeholder03
/while_while_cond_58522___redundant_placeholder13
/while_while_cond_58522___redundant_placeholder23
/while_while_cond_58522___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_model_2_layer_call_fn_58126

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@

	unknown_3:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_576002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58477

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'simple_rnn_cell_5/MatMul/ReadVariableOp?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul?
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_5/BiasAdd/ReadVariableOp?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/BiasAdd?
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_5/MatMul_1/ReadVariableOp?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul_1?
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/add?
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_58411*
condR
while_cond_58410*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_58670

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
'__inference_model_2_layer_call_fn_58141

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@

	unknown_3:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_577902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
while_body_58523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02/
-while/simple_rnn_cell_5/MatMul/ReadVariableOp?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
while/simple_rnn_cell_5/MatMul?
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_5/BiasAdd?
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_5/MatMul_1?
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/add?
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?c
?
B__inference_model_2_layer_call_and_return_conditional_losses_58111

inputsO
=simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource:@L
>simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource:@Q
?simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@8
&dense_3_matmul_readvariableop_resource:@
5
'dense_3_biasadd_readvariableop_resource:

identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp?4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp?simple_rnn_4/while^
simple_rnn_4/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn_4/Shape?
 simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_4/strided_slice/stack?
"simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_4/strided_slice/stack_1?
"simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_4/strided_slice/stack_2?
simple_rnn_4/strided_sliceStridedSlicesimple_rnn_4/Shape:output:0)simple_rnn_4/strided_slice/stack:output:0+simple_rnn_4/strided_slice/stack_1:output:0+simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_4/strided_slicev
simple_rnn_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_4/zeros/mul/y?
simple_rnn_4/zeros/mulMul#simple_rnn_4/strided_slice:output:0!simple_rnn_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/zeros/muly
simple_rnn_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_4/zeros/Less/y?
simple_rnn_4/zeros/LessLesssimple_rnn_4/zeros/mul:z:0"simple_rnn_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/zeros/Less|
simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_4/zeros/packed/1?
simple_rnn_4/zeros/packedPack#simple_rnn_4/strided_slice:output:0$simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_4/zeros/packedy
simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_4/zeros/Const?
simple_rnn_4/zerosFill"simple_rnn_4/zeros/packed:output:0!simple_rnn_4/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_4/zeros?
simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_4/transpose/perm?
simple_rnn_4/transpose	Transposeinputs$simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
simple_rnn_4/transposev
simple_rnn_4/Shape_1Shapesimple_rnn_4/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_4/Shape_1?
"simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_4/strided_slice_1/stack?
$simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_1/stack_1?
$simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_1/stack_2?
simple_rnn_4/strided_slice_1StridedSlicesimple_rnn_4/Shape_1:output:0+simple_rnn_4/strided_slice_1/stack:output:0-simple_rnn_4/strided_slice_1/stack_1:output:0-simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_4/strided_slice_1?
(simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(simple_rnn_4/TensorArrayV2/element_shape?
simple_rnn_4/TensorArrayV2TensorListReserve1simple_rnn_4/TensorArrayV2/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_4/TensorArrayV2?
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_4/transpose:y:0Ksimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensor?
"simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_4/strided_slice_2/stack?
$simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_2/stack_1?
$simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_2/stack_2?
simple_rnn_4/strided_slice_2StridedSlicesimple_rnn_4/transpose:y:0+simple_rnn_4/strided_slice_2/stack:output:0-simple_rnn_4/strided_slice_2/stack_1:output:0-simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
simple_rnn_4/strided_slice_2?
4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype026
4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp?
%simple_rnn_4/simple_rnn_cell_5/MatMulMatMul%simple_rnn_4/strided_slice_2:output:0<simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2'
%simple_rnn_4/simple_rnn_cell_5/MatMul?
5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
&simple_rnn_4/simple_rnn_cell_5/BiasAddBiasAdd/simple_rnn_4/simple_rnn_cell_5/MatMul:product:0=simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&simple_rnn_4/simple_rnn_cell_5/BiasAdd?
6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
'simple_rnn_4/simple_rnn_cell_5/MatMul_1MatMulsimple_rnn_4/zeros:output:0>simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2)
'simple_rnn_4/simple_rnn_cell_5/MatMul_1?
"simple_rnn_4/simple_rnn_cell_5/addAddV2/simple_rnn_4/simple_rnn_cell_5/BiasAdd:output:01simple_rnn_4/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2$
"simple_rnn_4/simple_rnn_cell_5/add?
#simple_rnn_4/simple_rnn_cell_5/TanhTanh&simple_rnn_4/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2%
#simple_rnn_4/simple_rnn_cell_5/Tanh?
*simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2,
*simple_rnn_4/TensorArrayV2_1/element_shape?
simple_rnn_4/TensorArrayV2_1TensorListReserve3simple_rnn_4/TensorArrayV2_1/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_4/TensorArrayV2_1h
simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_4/time?
%simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%simple_rnn_4/while/maximum_iterations?
simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_4/while/loop_counter?
simple_rnn_4/whileWhile(simple_rnn_4/while/loop_counter:output:0.simple_rnn_4/while/maximum_iterations:output:0simple_rnn_4/time:output:0%simple_rnn_4/TensorArrayV2_1:handle:0simple_rnn_4/zeros:output:0%simple_rnn_4/strided_slice_1:output:0Dsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_4_simple_rnn_cell_5_matmul_readvariableop_resource>simple_rnn_4_simple_rnn_cell_5_biasadd_readvariableop_resource?simple_rnn_4_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_4_while_body_58038*)
cond!R
simple_rnn_4_while_cond_58037*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
simple_rnn_4/while?
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2?
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape?
/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_4/while:output:3Fsimple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype021
/simple_rnn_4/TensorArrayV2Stack/TensorListStack?
"simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"simple_rnn_4/strided_slice_3/stack?
$simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_4/strided_slice_3/stack_1?
$simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_4/strided_slice_3/stack_2?
simple_rnn_4/strided_slice_3StridedSlice8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_4/strided_slice_3/stack:output:0-simple_rnn_4/strided_slice_3/stack_1:output:0-simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
simple_rnn_4/strided_slice_3?
simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_4/transpose_1/perm?
simple_rnn_4/transpose_1	Transpose8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
simple_rnn_4/transpose_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul%simple_rnn_4/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_3/Softmax?
IdentityIdentitydense_3/Softmax:softmax:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp6^simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp5^simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp7^simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp^simple_rnn_4/while*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2n
5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp5simple_rnn_4/simple_rnn_cell_5/BiasAdd/ReadVariableOp2l
4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp4simple_rnn_4/simple_rnn_cell_5/MatMul/ReadVariableOp2p
6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp6simple_rnn_4/simple_rnn_cell_5/MatMul_1/ReadVariableOp2(
simple_rnn_4/whilesimple_rnn_4/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58365
inputs_0B
0simple_rnn_cell_5_matmul_readvariableop_resource:@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'simple_rnn_cell_5/MatMul/ReadVariableOp?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul?
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_5/BiasAdd/ReadVariableOp?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/BiasAdd?
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_5/MatMul_1/ReadVariableOp?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul_1?
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/add?
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_58299*
condR
while_cond_58298*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
,__inference_simple_rnn_4_layer_call_fn_58633

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_577482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56974

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?4
?
while_body_58299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02/
-while/simple_rnn_cell_5/MatMul/ReadVariableOp?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
while/simple_rnn_cell_5/MatMul?
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_5/BiasAdd?
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_5/MatMul_1?
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/add?
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_58410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58410___redundant_placeholder03
/while_while_cond_58410___redundant_placeholder13
/while_while_cond_58410___redundant_placeholder23
/while_while_cond_58410___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?L
?
%model_2_simple_rnn_4_while_body_56849F
Bmodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_loop_counterL
Hmodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_maximum_iterations*
&model_2_simple_rnn_4_while_placeholder,
(model_2_simple_rnn_4_while_placeholder_1,
(model_2_simple_rnn_4_while_placeholder_2E
Amodel_2_simple_rnn_4_while_model_2_simple_rnn_4_strided_slice_1_0?
}model_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0_
Mmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@\
Nmodel_2_simple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@a
Omodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@'
#model_2_simple_rnn_4_while_identity)
%model_2_simple_rnn_4_while_identity_1)
%model_2_simple_rnn_4_while_identity_2)
%model_2_simple_rnn_4_while_identity_3)
%model_2_simple_rnn_4_while_identity_4C
?model_2_simple_rnn_4_while_model_2_simple_rnn_4_strided_slice_1
{model_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor]
Kmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource:@Z
Lmodel_2_simple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@_
Mmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??Cmodel_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?Bmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp?Dmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
Lmodel_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lmodel_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>model_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}model_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0&model_2_simple_rnn_4_while_placeholderUmodel_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02@
>model_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem?
Bmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpMmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02D
Bmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp?
3model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMulMatMulEmodel_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0Jmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@25
3model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul?
Cmodel_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpNmodel_2_simple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02E
Cmodel_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
4model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAddBiasAdd=model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul:product:0Kmodel_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@26
4model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd?
Dmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpOmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02F
Dmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
5model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1MatMul(model_2_simple_rnn_4_while_placeholder_2Lmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@27
5model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1?
0model_2/simple_rnn_4/while/simple_rnn_cell_5/addAddV2=model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd:output:0?model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@22
0model_2/simple_rnn_4/while/simple_rnn_cell_5/add?
1model_2/simple_rnn_4/while/simple_rnn_cell_5/TanhTanh4model_2/simple_rnn_4/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@23
1model_2/simple_rnn_4/while/simple_rnn_cell_5/Tanh?
?model_2/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(model_2_simple_rnn_4_while_placeholder_1&model_2_simple_rnn_4_while_placeholder5model_2/simple_rnn_4/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?model_2/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem?
 model_2/simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 model_2/simple_rnn_4/while/add/y?
model_2/simple_rnn_4/while/addAddV2&model_2_simple_rnn_4_while_placeholder)model_2/simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: 2 
model_2/simple_rnn_4/while/add?
"model_2/simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_2/simple_rnn_4/while/add_1/y?
 model_2/simple_rnn_4/while/add_1AddV2Bmodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_loop_counter+model_2/simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 model_2/simple_rnn_4/while/add_1?
#model_2/simple_rnn_4/while/IdentityIdentity$model_2/simple_rnn_4/while/add_1:z:0D^model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpC^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpE^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#model_2/simple_rnn_4/while/Identity?
%model_2/simple_rnn_4/while/Identity_1IdentityHmodel_2_simple_rnn_4_while_model_2_simple_rnn_4_while_maximum_iterationsD^model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpC^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpE^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%model_2/simple_rnn_4/while/Identity_1?
%model_2/simple_rnn_4/while/Identity_2Identity"model_2/simple_rnn_4/while/add:z:0D^model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpC^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpE^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%model_2/simple_rnn_4/while/Identity_2?
%model_2/simple_rnn_4/while/Identity_3IdentityOmodel_2/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0D^model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpC^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpE^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%model_2/simple_rnn_4/while/Identity_3?
%model_2/simple_rnn_4/while/Identity_4Identity5model_2/simple_rnn_4/while/simple_rnn_cell_5/Tanh:y:0D^model_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpC^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpE^model_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2'
%model_2/simple_rnn_4/while/Identity_4"S
#model_2_simple_rnn_4_while_identity,model_2/simple_rnn_4/while/Identity:output:0"W
%model_2_simple_rnn_4_while_identity_1.model_2/simple_rnn_4/while/Identity_1:output:0"W
%model_2_simple_rnn_4_while_identity_2.model_2/simple_rnn_4/while/Identity_2:output:0"W
%model_2_simple_rnn_4_while_identity_3.model_2/simple_rnn_4/while/Identity_3:output:0"W
%model_2_simple_rnn_4_while_identity_4.model_2/simple_rnn_4/while/Identity_4:output:0"?
?model_2_simple_rnn_4_while_model_2_simple_rnn_4_strided_slice_1Amodel_2_simple_rnn_4_while_model_2_simple_rnn_4_strided_slice_1_0"?
Lmodel_2_simple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resourceNmodel_2_simple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Mmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceOmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Kmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resourceMmodel_2_simple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
{model_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor}model_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2?
Cmodel_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpCmodel_2/simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2?
Bmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpBmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp2?
Dmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpDmodel_2/simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_56986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56986___redundant_placeholder03
/while_while_cond_56986___redundant_placeholder13
/while_while_cond_56986___redundant_placeholder23
/while_while_cond_56986___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_58186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58186___redundant_placeholder03
/while_while_cond_58186___redundant_placeholder13
/while_while_cond_58186___redundant_placeholder23
/while_while_cond_58186___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?C
?
simple_rnn_4_while_body_580386
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_25
1simple_rnn_4_while_simple_rnn_4_strided_slice_1_0q
msimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@T
Fsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@Y
Gsimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
simple_rnn_4_while_identity!
simple_rnn_4_while_identity_1!
simple_rnn_4_while_identity_2!
simple_rnn_4_while_identity_3!
simple_rnn_4_while_identity_43
/simple_rnn_4_while_simple_rnn_4_strided_slice_1o
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource:@R
Dsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@W
Esimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp?<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2F
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_4_while_placeholderMsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype028
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem?
:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02<
:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp?
+simple_rnn_4/while/simple_rnn_cell_5/MatMulMatMul=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2-
+simple_rnn_4/while/simple_rnn_cell_5/MatMul?
;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
,simple_rnn_4/while/simple_rnn_cell_5/BiasAddBiasAdd5simple_rnn_4/while/simple_rnn_cell_5/MatMul:product:0Csimple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2.
,simple_rnn_4/while/simple_rnn_cell_5/BiasAdd?
<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
-simple_rnn_4/while/simple_rnn_cell_5/MatMul_1MatMul simple_rnn_4_while_placeholder_2Dsimple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2/
-simple_rnn_4/while/simple_rnn_cell_5/MatMul_1?
(simple_rnn_4/while/simple_rnn_cell_5/addAddV25simple_rnn_4/while/simple_rnn_cell_5/BiasAdd:output:07simple_rnn_4/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2*
(simple_rnn_4/while/simple_rnn_cell_5/add?
)simple_rnn_4/while/simple_rnn_cell_5/TanhTanh,simple_rnn_4/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2+
)simple_rnn_4/while/simple_rnn_cell_5/Tanh?
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_4_while_placeholder_1simple_rnn_4_while_placeholder-simple_rnn_4/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_4/while/add/y?
simple_rnn_4/while/addAddV2simple_rnn_4_while_placeholder!simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/while/addz
simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_4/while/add_1/y?
simple_rnn_4/while/add_1AddV22simple_rnn_4_while_simple_rnn_4_while_loop_counter#simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/while/add_1?
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/add_1:z:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity?
simple_rnn_4/while/Identity_1Identity8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity_1?
simple_rnn_4/while/Identity_2Identitysimple_rnn_4/while/add:z:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity_2?
simple_rnn_4/while/Identity_3IdentityGsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity_3?
simple_rnn_4/while/Identity_4Identity-simple_rnn_4/while/simple_rnn_cell_5/Tanh:y:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
simple_rnn_4/while/Identity_4"C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0"G
simple_rnn_4_while_identity_1&simple_rnn_4/while/Identity_1:output:0"G
simple_rnn_4_while_identity_2&simple_rnn_4/while/Identity_2:output:0"G
simple_rnn_4_while_identity_3&simple_rnn_4/while/Identity_3:output:0"G
simple_rnn_4_while_identity_4&simple_rnn_4/while/Identity_4:output:0"d
/simple_rnn_4_while_simple_rnn_4_strided_slice_11simple_rnn_4_while_simple_rnn_4_strided_slice_1_0"?
Dsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resourceFsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Esimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceGsimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Csimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resourceEsimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2z
;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2x
:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp2|
<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_dense_3_layer_call_fn_58653

inputs
unknown:@

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_575932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_57873
input_6
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@

	unknown_3:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_569222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_6
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_57850
input_6$
simple_rnn_4_57837:@ 
simple_rnn_4_57839:@$
simple_rnn_4_57841:@@
dense_3_57844:@

dense_3_57846:

identity??dense_3/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallinput_6simple_rnn_4_57837simple_rnn_4_57839simple_rnn_4_57841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_577482&
$simple_rnn_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_3_57844dense_3_57846*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_575932!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_6
?H
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58589

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'simple_rnn_cell_5/MatMul/ReadVariableOp?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul?
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_5/BiasAdd/ReadVariableOp?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/BiasAdd?
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_5/MatMul_1/ReadVariableOp?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul_1?
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/add?
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_58523*
condR
while_cond_58522*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
1__inference_simple_rnn_cell_5_layer_call_fn_58701

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_569742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_58687

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?k
?
!__inference__traced_restore_58892
file_prefix1
assignvariableop_dense_3_kernel:@
-
assignvariableop_1_dense_3_bias:
&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: J
8assignvariableop_7_simple_rnn_4_simple_rnn_cell_5_kernel:@T
Bassignvariableop_8_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel:@@D
6assignvariableop_9_simple_rnn_4_simple_rnn_cell_5_bias:@#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: ;
)assignvariableop_14_adam_dense_3_kernel_m:@
5
'assignvariableop_15_adam_dense_3_bias_m:
R
@assignvariableop_16_adam_simple_rnn_4_simple_rnn_cell_5_kernel_m:@\
Jassignvariableop_17_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_m:@@L
>assignvariableop_18_adam_simple_rnn_4_simple_rnn_cell_5_bias_m:@;
)assignvariableop_19_adam_dense_3_kernel_v:@
5
'assignvariableop_20_adam_dense_3_bias_v:
R
@assignvariableop_21_adam_simple_rnn_4_simple_rnn_cell_5_kernel_v:@\
Jassignvariableop_22_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_v:@@L
>assignvariableop_23_adam_simple_rnn_4_simple_rnn_cell_5_bias_v:@
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_simple_rnn_4_simple_rnn_cell_5_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpBassignvariableop_8_simple_rnn_4_simple_rnn_cell_5_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_simple_rnn_4_simple_rnn_cell_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_3_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_3_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp@assignvariableop_16_adam_simple_rnn_4_simple_rnn_cell_5_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpJassignvariableop_17_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp>assignvariableop_18_adam_simple_rnn_4_simple_rnn_cell_5_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_3_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_3_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_simple_rnn_4_simple_rnn_cell_5_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpJassignvariableop_22_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_simple_rnn_4_simple_rnn_cell_5_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24?
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?H
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_57574

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'simple_rnn_cell_5/MatMul/ReadVariableOp?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul?
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_5/BiasAdd/ReadVariableOp?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/BiasAdd?
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_5/MatMul_1/ReadVariableOp?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul_1?
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/add?
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57508*
condR
while_cond_57507*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_57507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57507___redundant_placeholder03
/while_while_cond_57507___redundant_placeholder13
/while_while_cond_57507___redundant_placeholder23
/while_while_cond_57507___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_57681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57681___redundant_placeholder03
/while_while_cond_57681___redundant_placeholder13
/while_while_cond_57681___redundant_placeholder23
/while_while_cond_57681___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_57834
input_6$
simple_rnn_4_57821:@ 
simple_rnn_4_57823:@$
simple_rnn_4_57825:@@
dense_3_57828:@

dense_3_57830:

identity??dense_3/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallinput_6simple_rnn_4_57821simple_rnn_4_57823simple_rnn_4_57825*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_575742&
$simple_rnn_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_3_57828dense_3_57830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_575932!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_6
?
?
B__inference_model_2_layer_call_and_return_conditional_losses_57600

inputs$
simple_rnn_4_57575:@ 
simple_rnn_4_57577:@$
simple_rnn_4_57579:@@
dense_3_57594:@

dense_3_57596:

identity??dense_3/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_4_57575simple_rnn_4_57577simple_rnn_4_57579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_575742&
$simple_rnn_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_3_57594dense_3_57596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_575932!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_simple_rnn_4_layer_call_fn_58611
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_572242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?;
?
__inference__traced_save_58810
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_4_simple_rnn_cell_5_kernel_read_readvariableopN
Jsavev2_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_4_simple_rnn_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_4_simple_rnn_cell_5_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_4_simple_rnn_cell_5_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_4_simple_rnn_cell_5_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_4_simple_rnn_cell_5_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_4_simple_rnn_cell_5_kernel_read_readvariableopJsavev2_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_read_readvariableop>savev2_simple_rnn_4_simple_rnn_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopGsavev2_adam_simple_rnn_4_simple_rnn_cell_5_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_4_simple_rnn_cell_5_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopGsavev2_adam_simple_rnn_4_simple_rnn_cell_5_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_4_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_4_simple_rnn_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@
:
: : : : : :@:@@:@: : : : :@
:
:@:@@:@:@
:
:@:@@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@:$	 

_output_shapes

:@@: 


_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@
: 

_output_shapes
:
:$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:

_output_shapes
: 
?
?
'__inference_model_2_layer_call_fn_57818
input_6
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@

	unknown_3:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_577902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_6
?4
?
while_body_57682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02/
-while/simple_rnn_cell_5/MatMul/ReadVariableOp?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
while/simple_rnn_cell_5/MatMul?
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_5/BiasAdd?
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_5/MatMul_1?
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/add?
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?H
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_57748

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'simple_rnn_cell_5/MatMul/ReadVariableOp?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul?
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_5/BiasAdd/ReadVariableOp?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/BiasAdd?
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_5/MatMul_1/ReadVariableOp?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul_1?
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/add?
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57682*
condR
while_cond_57681*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_57050

inputs)
simple_rnn_cell_5_56975:@%
simple_rnn_cell_5_56977:@)
simple_rnn_cell_5_56979:@@
identity??)simple_rnn_cell_5/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_56975simple_rnn_cell_5_56977simple_rnn_cell_5_56979*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_569742+
)simple_rnn_cell_5/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_56975simple_rnn_cell_5_56977simple_rnn_cell_5_56979*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_56987*
condR
while_cond_56986*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_5/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_57094

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?C
?
simple_rnn_4_while_body_579196
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_25
1simple_rnn_4_while_simple_rnn_4_strided_slice_1_0q
msimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@T
Fsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@Y
Gsimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
simple_rnn_4_while_identity!
simple_rnn_4_while_identity_1!
simple_rnn_4_while_identity_2!
simple_rnn_4_while_identity_3!
simple_rnn_4_while_identity_43
/simple_rnn_4_while_simple_rnn_4_strided_slice_1o
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource:@R
Dsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@W
Esimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp?<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2F
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_4_while_placeholderMsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype028
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem?
:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02<
:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp?
+simple_rnn_4/while/simple_rnn_cell_5/MatMulMatMul=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2-
+simple_rnn_4/while/simple_rnn_cell_5/MatMul?
;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
,simple_rnn_4/while/simple_rnn_cell_5/BiasAddBiasAdd5simple_rnn_4/while/simple_rnn_cell_5/MatMul:product:0Csimple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2.
,simple_rnn_4/while/simple_rnn_cell_5/BiasAdd?
<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
-simple_rnn_4/while/simple_rnn_cell_5/MatMul_1MatMul simple_rnn_4_while_placeholder_2Dsimple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2/
-simple_rnn_4/while/simple_rnn_cell_5/MatMul_1?
(simple_rnn_4/while/simple_rnn_cell_5/addAddV25simple_rnn_4/while/simple_rnn_cell_5/BiasAdd:output:07simple_rnn_4/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2*
(simple_rnn_4/while/simple_rnn_cell_5/add?
)simple_rnn_4/while/simple_rnn_cell_5/TanhTanh,simple_rnn_4/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2+
)simple_rnn_4/while/simple_rnn_cell_5/Tanh?
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_4_while_placeholder_1simple_rnn_4_while_placeholder-simple_rnn_4/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_4/while/add/y?
simple_rnn_4/while/addAddV2simple_rnn_4_while_placeholder!simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/while/addz
simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_4/while/add_1/y?
simple_rnn_4/while/add_1AddV22simple_rnn_4_while_simple_rnn_4_while_loop_counter#simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_4/while/add_1?
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/add_1:z:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity?
simple_rnn_4/while/Identity_1Identity8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity_1?
simple_rnn_4/while/Identity_2Identitysimple_rnn_4/while/add:z:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity_2?
simple_rnn_4/while/Identity_3IdentityGsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_4/while/Identity_3?
simple_rnn_4/while/Identity_4Identity-simple_rnn_4/while/simple_rnn_cell_5/Tanh:y:0<^simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
simple_rnn_4/while/Identity_4"C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0"G
simple_rnn_4_while_identity_1&simple_rnn_4/while/Identity_1:output:0"G
simple_rnn_4_while_identity_2&simple_rnn_4/while/Identity_2:output:0"G
simple_rnn_4_while_identity_3&simple_rnn_4/while/Identity_3:output:0"G
simple_rnn_4_while_identity_4&simple_rnn_4/while/Identity_4:output:0"d
/simple_rnn_4_while_simple_rnn_4_strided_slice_11simple_rnn_4_while_simple_rnn_4_strided_slice_1_0"?
Dsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resourceFsimple_rnn_4_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Esimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceGsimple_rnn_4_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Csimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resourceEsimple_rnn_4_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2z
;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;simple_rnn_4/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2x
:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp:simple_rnn_4/while/simple_rnn_cell_5/MatMul/ReadVariableOp2|
<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp<simple_rnn_4/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?

?
B__inference_dense_3_layer_call_and_return_conditional_losses_58644

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?4
?
while_body_58411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02/
-while/simple_rnn_cell_5/MatMul/ReadVariableOp?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
while/simple_rnn_cell_5/MatMul?
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_5/BiasAdd?
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_5/MatMul_1?
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/add?
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_5/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?#
?
while_body_56987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_5_57009_0:@-
while_simple_rnn_cell_5_57011_0:@1
while_simple_rnn_cell_5_57013_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_5_57009:@+
while_simple_rnn_cell_5_57011:@/
while_simple_rnn_cell_5_57013:@@??/while/simple_rnn_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_57009_0while_simple_rnn_cell_5_57011_0while_simple_rnn_cell_5_57013_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_5697421
/while/simple_rnn_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:10^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_57009while_simple_rnn_cell_5_57009_0"@
while_simple_rnn_cell_5_57011while_simple_rnn_cell_5_57011_0"@
while_simple_rnn_cell_5_57013while_simple_rnn_cell_5_57013_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?#
?
while_body_57161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_5_57183_0:@-
while_simple_rnn_cell_5_57185_0:@1
while_simple_rnn_cell_5_57187_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_5_57183:@+
while_simple_rnn_cell_5_57185:@/
while_simple_rnn_cell_5_57187:@@??/while/simple_rnn_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_57183_0while_simple_rnn_cell_5_57185_0while_simple_rnn_cell_5_57187_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_5709421
/while/simple_rnn_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:10^while/simple_rnn_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_57183while_simple_rnn_cell_5_57183_0"@
while_simple_rnn_cell_5_57185while_simple_rnn_cell_5_57185_0"@
while_simple_rnn_cell_5_57187while_simple_rnn_cell_5_57187_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_57224

inputs)
simple_rnn_cell_5_57149:@%
simple_rnn_cell_5_57151:@)
simple_rnn_cell_5_57153:@@
identity??)simple_rnn_cell_5/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_57149simple_rnn_cell_5_57151simple_rnn_cell_5_57153*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_570942+
)simple_rnn_cell_5/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_57149simple_rnn_cell_5_57151simple_rnn_cell_5_57153*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57161*
condR
while_cond_57160*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_5/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?H
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58253
inputs_0B
0simple_rnn_cell_5_matmul_readvariableop_resource:@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'simple_rnn_cell_5/MatMul/ReadVariableOp?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul?
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_5/BiasAdd/ReadVariableOp?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/BiasAdd?
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_5/MatMul_1/ReadVariableOp?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/MatMul_1?
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/add?
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_5/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_58187*
condR
while_cond_58186*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
,__inference_simple_rnn_4_layer_call_fn_58600
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_570502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
simple_rnn_4_while_cond_579186
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_28
4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_57918___redundant_placeholder0M
Isimple_rnn_4_while_simple_rnn_4_while_cond_57918___redundant_placeholder1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_57918___redundant_placeholder2M
Isimple_rnn_4_while_simple_rnn_4_while_cond_57918___redundant_placeholder3
simple_rnn_4_while_identity
?
simple_rnn_4/while/LessLesssimple_rnn_4_while_placeholder4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_4/while/Less?
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_4/while/Identity"C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?

?
B__inference_dense_3_layer_call_and_return_conditional_losses_57593

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_64
serving_default_input_6:0?????????;
dense_30
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:ڧ
?(
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
*L&call_and_return_all_conditional_losses
M__call__
N_default_save_signature"?&
_tf_keras_network?%{"name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_4", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "simple_rnn_4", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["simple_rnn_4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28]}, "float32", "input_6"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_4", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "simple_rnn_4", "inbound_nodes": [[["input_6", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["simple_rnn_4", 0, 0, {}]]], "shared_object_id": 8}], "input_layers": [["input_6", 0, 0]], "output_layers": [["dense_3", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 11}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}}
?

cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"?

_tf_keras_rnn_layer?
{"name": "simple_rnn_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNN", "config": {"name": "simple_rnn_4", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "inbound_nodes": [[["input_6", 0, 0, {}]]], "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 28]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 12}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}}
?	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["simple_rnn_4", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
iter

beta_1

beta_2
	decay
learning_ratemBmCmDmEmFvGvHvIvJvK"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
metrics
non_trainable_variables
 layer_regularization_losses

!layers
"layer_metrics
regularization_losses
M__call__
N_default_save_signature
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
,
Sserving_default"
signature_map
?

kernel
recurrent_kernel
bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
*T&call_and_return_all_conditional_losses
U__call__"?
_tf_keras_layer?{"name": "simple_rnn_cell_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNNCell", "config": {"name": "simple_rnn_cell_5", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 4}
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
'metrics
(non_trainable_variables
)layer_regularization_losses

*states

+layers
,layer_metrics
regularization_losses
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
 :@
2dense_3/kernel
:
2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
-metrics
.non_trainable_variables
/layer_regularization_losses

0layers
1layer_metrics
regularization_losses
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:5@2%simple_rnn_4/simple_rnn_cell_5/kernel
A:?@@2/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel
1:/@2#simple_rnn_4/simple_rnn_cell_5/bias
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#trainable_variables
$	variables
4metrics
5non_trainable_variables
6layer_regularization_losses

7layers
8layer_metrics
%regularization_losses
U__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
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
?
	9total
	:count
;	variables
<	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 14}
?
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 11}
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
:  (2total
:  (2count
.
90
:1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
%:#@
2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
<::@2,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/m
F:D@@26Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/m
6:4@2*Adam/simple_rnn_4/simple_rnn_cell_5/bias/m
%:#@
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v
<::@2,Adam/simple_rnn_4/simple_rnn_cell_5/kernel/v
F:D@@26Adam/simple_rnn_4/simple_rnn_cell_5/recurrent_kernel/v
6:4@2*Adam/simple_rnn_4/simple_rnn_cell_5/bias/v
?2?
B__inference_model_2_layer_call_and_return_conditional_losses_57992
B__inference_model_2_layer_call_and_return_conditional_losses_58111
B__inference_model_2_layer_call_and_return_conditional_losses_57834
B__inference_model_2_layer_call_and_return_conditional_losses_57850?
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
?2?
'__inference_model_2_layer_call_fn_57613
'__inference_model_2_layer_call_fn_58126
'__inference_model_2_layer_call_fn_58141
'__inference_model_2_layer_call_fn_57818?
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
?2?
 __inference__wrapped_model_56922?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
input_6?????????
?2?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58253
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58365
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58477
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58589?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_simple_rnn_4_layer_call_fn_58600
,__inference_simple_rnn_4_layer_call_fn_58611
,__inference_simple_rnn_4_layer_call_fn_58622
,__inference_simple_rnn_4_layer_call_fn_58633?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_3_layer_call_and_return_conditional_losses_58644?
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
'__inference_dense_3_layer_call_fn_58653?
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
?B?
#__inference_signature_wrapper_57873input_6"?
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
?2?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_58670
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_58687?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
1__inference_simple_rnn_cell_5_layer_call_fn_58701
1__inference_simple_rnn_cell_5_layer_call_fn_58715?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
 __inference__wrapped_model_56922p4?1
*?'
%?"
input_6?????????
? "1?.
,
dense_3!?
dense_3?????????
?
B__inference_dense_3_layer_call_and_return_conditional_losses_58644\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????

? z
'__inference_dense_3_layer_call_fn_58653O/?,
%?"
 ?
inputs?????????@
? "??????????
?
B__inference_model_2_layer_call_and_return_conditional_losses_57834l<?9
2?/
%?"
input_6?????????
p 

 
? "%?"
?
0?????????

? ?
B__inference_model_2_layer_call_and_return_conditional_losses_57850l<?9
2?/
%?"
input_6?????????
p

 
? "%?"
?
0?????????

? ?
B__inference_model_2_layer_call_and_return_conditional_losses_57992k;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
B__inference_model_2_layer_call_and_return_conditional_losses_58111k;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????

? ?
'__inference_model_2_layer_call_fn_57613_<?9
2?/
%?"
input_6?????????
p 

 
? "??????????
?
'__inference_model_2_layer_call_fn_57818_<?9
2?/
%?"
input_6?????????
p

 
? "??????????
?
'__inference_model_2_layer_call_fn_58126^;?8
1?.
$?!
inputs?????????
p 

 
? "??????????
?
'__inference_model_2_layer_call_fn_58141^;?8
1?.
$?!
inputs?????????
p

 
? "??????????
?
#__inference_signature_wrapper_57873{??<
? 
5?2
0
input_6%?"
input_6?????????"1?.
,
dense_3!?
dense_3?????????
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58253}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58365}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????@
? ?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58477m??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0?????????@
? ?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_58589m??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0?????????@
? ?
,__inference_simple_rnn_4_layer_call_fn_58600pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "??????????@?
,__inference_simple_rnn_4_layer_call_fn_58611pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "??????????@?
,__inference_simple_rnn_4_layer_call_fn_58622`??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????@?
,__inference_simple_rnn_4_layer_call_fn_58633`??<
5?2
$?!
inputs?????????

 
p

 
? "??????????@?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_58670?\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p 
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_58687?\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
1__inference_simple_rnn_cell_5_layer_call_fn_58701?\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p 
? "D?A
?
0?????????@
"?
?
1/0?????????@?
1__inference_simple_rnn_cell_5_layer_call_fn_58715?\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p
? "D?A
?
0?????????@
"?
?
1/0?????????@