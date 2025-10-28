PROTO_0:
  GETIMPORT R3 K1 [_G]
  GETTABLEKS R2 R3 K2 ["__DEV__"]
  JUMPIFNOT R2 [+21]
  GETTABLEKS R3 R0 K4 ["__componentName"]
  ORK R2 R3 K3 ["ReactClass"]
  MOVE R4 R2
  LOADK R5 K5 ["."]
  MOVE R6 R1
  CONCAT R3 R4 R6
  GETUPVAL R5 0
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["error"]
  LOADK R5 K7 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 0
  GETUPVAL R4 0
  LOADB R5 1
  SETTABLE R5 R4 R3
  RETURN R0 0

PROTO_1:
  LOADB R1 0
  RETURN R1 1

PROTO_2:
  GETIMPORT R4 K1 [_G]
  GETTABLEKS R3 R4 K2 ["__DEV__"]
  JUMPIFNOT R3 [+21]
  GETTABLEKS R4 R0 K4 ["__componentName"]
  ORK R3 R4 K3 ["ReactClass"]
  MOVE R5 R3
  LOADK R6 K5 ["."]
  LOADK R7 K6 ["forceUpdate"]
  CONCAT R4 R5 R7
  GETUPVAL R6 0
  GETTABLE R5 R6 R4
  JUMPIFNOT R5 [+1]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["error"]
  LOADK R6 K8 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
  LOADK R7 K6 ["forceUpdate"]
  MOVE R8 R3
  CALL R5 3 0
  GETUPVAL R5 0
  LOADB R6 1
  SETTABLE R6 R5 R4
  RETURN R0 0

PROTO_3:
  GETIMPORT R5 K1 [_G]
  GETTABLEKS R4 R5 K2 ["__DEV__"]
  JUMPIFNOT R4 [+21]
  GETTABLEKS R5 R0 K4 ["__componentName"]
  ORK R4 R5 K3 ["ReactClass"]
  MOVE R6 R4
  LOADK R7 K5 ["."]
  LOADK R8 K6 ["replaceState"]
  CONCAT R5 R6 R8
  GETUPVAL R7 0
  GETTABLE R6 R7 R5
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["error"]
  LOADK R7 K8 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
  LOADK R8 K6 ["replaceState"]
  MOVE R9 R4
  CALL R6 3 0
  GETUPVAL R6 0
  LOADB R7 1
  SETTABLE R7 R6 R5
  RETURN R0 0

PROTO_4:
  GETIMPORT R5 K1 [_G]
  GETTABLEKS R4 R5 K2 ["__DEV__"]
  JUMPIFNOT R4 [+21]
  GETTABLEKS R5 R0 K4 ["__componentName"]
  ORK R4 R5 K3 ["ReactClass"]
  MOVE R6 R4
  LOADK R7 K5 ["."]
  LOADK R8 K6 ["setState"]
  CONCAT R5 R6 R8
  GETUPVAL R7 0
  GETTABLE R6 R7 R5
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["error"]
  LOADK R7 K8 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
  LOADK R8 K6 ["setState"]
  MOVE R9 R4
  CALL R6 3 0
  GETUPVAL R6 0
  LOADB R7 1
  SETTABLE R7 R6 R5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["shared"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["console"]
  NEWTABLE R1 0 0
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  DUPTABLE R3 K13 [{"isMounted", "enqueueForceUpdate", "enqueueReplaceState", "enqueueSetState"}]
  DUPCLOSURE R4 K14 [PROTO_1]
  SETTABLEKS R4 R3 K9 ["isMounted"]
  DUPCLOSURE R4 K15 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K10 ["enqueueForceUpdate"]
  DUPCLOSURE R4 K16 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K11 ["enqueueReplaceState"]
  DUPCLOSURE R4 K17 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K12 ["enqueueSetState"]
  RETURN R3 1
