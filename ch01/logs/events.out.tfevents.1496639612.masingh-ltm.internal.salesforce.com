       �K"	   :M�Abrain.Event:2�$M�      �&	2�:M�A"�?
T
x/initial_valueConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
e
x
VariableV2*
dtype0*
shape: *
	container *
_output_shapes
: *
shared_name 
�
x/AssignAssignxx/initial_value*
validate_shape(*
T0*
use_locking(*
_class

loc:@x*
_output_shapes
: 
L
x/readIdentityx*
T0*
_class

loc:@x*
_output_shapes
: 
N
PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
B
subSubx/readPlaceholder*
T0*
_output_shapes
:
J
Pow/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
9
PowPowsubPow/y*
T0*
_output_shapes
:
J
mul/xConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
9
mulMulmul/xPow*
T0*
_output_shapes
:
[
gradients/ShapeShapemul*
T0*
out_type0*#
_output_shapes
:���������
T
gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
[
gradients/mul_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
f
gradients/mul_grad/Shape_1ShapePow*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
U
gradients/mul_grad/mulMulgradients/FillPow*
T0*
_output_shapes
:
�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Y
gradients/mul_grad/mul_1Mulmul/xgradients/Fill*
T0*
_output_shapes
:
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
: 
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
_output_shapes
:
d
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Pow_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
v
gradients/Pow_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1Pow/y*
T0*
_output_shapes
:
]
gradients/Pow_grad/sub/yConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0*
_output_shapes
: 
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0*
_output_shapes
:
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0*
_output_shapes
:
�
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0*
_output_shapes
:
a
gradients/Pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0*
_output_shapes
:
E
gradients/Pow_grad/LogLogsub*
T0*
_output_shapes
:
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0*
_output_shapes
:
�
gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0*
_output_shapes
:
v
gradients/Pow_grad/mul_2Mul-gradients/mul_grad/tuple/control_dependency_1Pow*
T0*
_output_shapes
:
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0*
_output_shapes
:
�
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
�
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape*
_output_shapes
:
�
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
_output_shapes
: 
[
gradients/sub_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
n
gradients/sub_grad/Shape_1ShapePlaceholder*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
: 
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
L
mul_1/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
c
mul_1Mulmul_1/x+gradients/sub_grad/tuple/control_dependency*
T0*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
-GradientDescent/update_x/ApplyGradientDescentApplyGradientDescentxGradientDescent/learning_ratemul_1*
T0*
use_locking( *
_class

loc:@x*
_output_shapes
: 
G
GradientDescentNoOp.^GradientDescent/update_x/ApplyGradientDescent
L
x_1/tagsConst*
dtype0*
valueB	 Bx_1*
_output_shapes
: 
G
x_1ScalarSummaryx_1/tagsx/read*
T0*
_output_shapes
: 
N
	dydx/tagsConst*
dtype0*
valueB
 Bdydx*
_output_shapes
: 
H
dydxScalarSummary	dydx/tagsmul_1*
T0*
_output_shapes
: 
N
Merge/MergeSummaryMergeSummaryx_1dydx*
N*
_output_shapes
: "8.d��&      �Җ	�)!:M�AJ�M
��
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
+
Log
x"T
y"T"
Ttype:	
2
8
MergeSummary
inputs*N
summary"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
5
Pow
x"T
y"T
z"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.1.02v1.1.0-rc0-61-g1ec6ed5�?
T
x/initial_valueConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
e
x
VariableV2*
dtype0*
shape: *
	container *
_output_shapes
: *
shared_name 
�
x/AssignAssignxx/initial_value*
validate_shape(*
T0*
use_locking(*
_class

loc:@x*
_output_shapes
: 
L
x/readIdentityx*
T0*
_class

loc:@x*
_output_shapes
: 
N
PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
B
subSubx/readPlaceholder*
T0*
_output_shapes
:
J
Pow/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
9
PowPowsubPow/y*
T0*
_output_shapes
:
J
mul/xConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
9
mulMulmul/xPow*
T0*
_output_shapes
:
[
gradients/ShapeShapemul*
T0*
out_type0*#
_output_shapes
:���������
T
gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
[
gradients/mul_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
f
gradients/mul_grad/Shape_1ShapePow*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
U
gradients/mul_grad/mulMulgradients/FillPow*
T0*
_output_shapes
:
�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Y
gradients/mul_grad/mul_1Mulmul/xgradients/Fill*
T0*
_output_shapes
:
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
: 
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
_output_shapes
:
d
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Pow_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
v
gradients/Pow_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1Pow/y*
T0*
_output_shapes
:
]
gradients/Pow_grad/sub/yConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0*
_output_shapes
: 
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0*
_output_shapes
:
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0*
_output_shapes
:
�
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0*
_output_shapes
:
a
gradients/Pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0*
_output_shapes
:
E
gradients/Pow_grad/LogLogsub*
T0*
_output_shapes
:
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0*
_output_shapes
:
�
gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0*
_output_shapes
:
v
gradients/Pow_grad/mul_2Mul-gradients/mul_grad/tuple/control_dependency_1Pow*
T0*
_output_shapes
:
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0*
_output_shapes
:
�
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
�
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape*
_output_shapes
:
�
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
_output_shapes
: 
[
gradients/sub_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
n
gradients/sub_grad/Shape_1ShapePlaceholder*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
: 
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
L
mul_1/xConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
c
mul_1Mulmul_1/x+gradients/sub_grad/tuple/control_dependency*
T0*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
-GradientDescent/update_x/ApplyGradientDescentApplyGradientDescentxGradientDescent/learning_ratemul_1*
T0*
use_locking( *
_class

loc:@x*
_output_shapes
: 
G
GradientDescentNoOp.^GradientDescent/update_x/ApplyGradientDescent
L
x_1/tagsConst*
dtype0*
valueB	 Bx_1*
_output_shapes
: 
G
x_1ScalarSummaryx_1/tagsx/read*
T0*
_output_shapes
: 
N
	dydx/tagsConst*
dtype0*
valueB
 Bdydx*
_output_shapes
: 
H
dydxScalarSummary	dydx/tagsmul_1*
T0*
_output_shapes
: 
N
Merge/MergeSummaryMergeSummaryx_1dydx*
N*
_output_shapes
: ""*
	variables

x:0x/Assignx/read:0"4
trainable_variables

x:0x/Assignx/read:0"
train_op

GradientDescent"
	summaries

x_1:0
dydx:0�_�#$       B+�M	��#:M�A*


x_1   A

dydx��A�Kk$       B+�M	�$:M�A*


x_1   A

dydx��A�Ce�&       sO� 	|,$:M�A*


x_183�?

dydx1\O?��&       sO� 	�4$:M�A*


x_183�?

dydx1\O?��E&       sO� 	�O$:M�A*


x_1 ��?

dydxf�=�l[�&       sO� 	XY$:M�A*


x_1 ��?

dydxf�=?��!&       sO� 	�m$:M�A*


x_1�&�?

dydx�<50hL&       sO� 	�u$:M�A*


x_1�&�?

dydx�<l�&       sO� 	b�$:M�A*


x_1~�?

dydx XT:��i&       sO� 	ڎ$:M�A*


x_1~�?

dydx XT:t%�&       sO� 	
�$:M�A*


x_1��?

dydx �8T@y�&       sO� 	*�$:M�A*


x_1��?

dydx �8��4�&       sO� 	��$:M�A*


x_1L �?

dydx��7A�$5&       sO� 	H�$:M�A*


x_1L �?

dydx��75��&       sO� 	��$:M�A*


x_1 �?

dydxfff5Ͼ3�&       sO� 	��$:M�A*


x_1 �?

dydxfff5ack&       sO� 	h�$:M�A*


x_1 �?

dydxff�3�U6;&       sO� 	��$:M�A*


x_1 �?

dydxff�3�q�&       sO� 	�%:M�A	*


x_1  �?

dydx    ;*<h&       sO� 	�%:M�A	*


x_1  �?

dydx    S�&       sO� 	�%:M�A
*


x_1  �?

dydx    6��S&       sO� 	�%:M�A
*


x_1  �?

dydx    ��f&       sO� 	#/%:M�A*


x_1  �?

dydx    ���&       sO� 	�5%:M�A*


x_1  �?

dydx    Fy&       sO� 	F%:M�A*


x_1  �?

dydx    ��P�&       sO� 	IL%:M�A*


x_1  �?

dydx    ��G&       sO� 	�\%:M�A*


x_1  �?

dydx    �+�_&       sO� 	�b%:M�A*


x_1  �?

dydx    Rk