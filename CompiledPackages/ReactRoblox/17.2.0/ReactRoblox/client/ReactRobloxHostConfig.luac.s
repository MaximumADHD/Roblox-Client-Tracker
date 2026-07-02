PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [error]
       20 LOADK                            R3 K8 ["FIXME (roblox): "]
       21 MOVE                             R4 R0
       22 LOADK                            R5 K9 [" is unimplemented"]
       23 CONCAT                           R2 R3 R5
       24 LOADN                            R3 2
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 NAMECALL                         R1 R0 K3 ["GetDescendants"]
       13 CALL                             R1 1 3
       14 FORGPREP                         R1
       15 GETUPVAL                         R6 0
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-4]
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 RETURN                           R1 1

PROTO_3:
        0 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K1 [print]
        8 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        9 CALL                             R1 1 0
       10 GETIMPORT                        R1 K1 [print]
       12 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       13 LOADK                            R5 K4 ["enableCreateEventHandleAPI"]
       14 FASTCALL1                        TOSTRING R5 ; [+2]
       15 GETIMPORT                        R4 K6 [tostring]
       17 CALL                             R4 1 1
       18 CONCAT                           R2 R3 R4
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K8 [error]
       22 LOADK                            R2 K9 ["FIXME (roblox): enableCreateEventHandleAPI is unimplemented"]
       23 LOADN                            R3 2
       24 CALL                             R1 2 0
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETIMPORT                        R0 K1 [print]
        4 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K1 [print]
        8 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K1 [print]
       12 LOADK                            R2 K3 ["UNIMPLEMENTED ERROR: "]
       13 LOADK                            R4 K4 ["enableCreateEventHandleAPI"]
       14 FASTCALL1                        TOSTRING R4 ; [+2]
       15 GETIMPORT                        R3 K6 [tostring]
       17 CALL                             R3 1 1
       18 CONCAT                           R1 R2 R3
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K8 [error]
       22 LOADK                            R1 K9 ["FIXME (roblox): enableCreateEventHandleAPI is unimplemented"]
       23 LOADN                            R2 2
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETIMPORT                        R0 K1 [print]
        4 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K1 [print]
        8 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K1 [print]
       12 LOADK                            R2 K3 ["UNIMPLEMENTED ERROR: "]
       13 LOADK                            R4 K4 ["enableCreateEventHandleAPI"]
       14 FASTCALL1                        TOSTRING R4 ; [+2]
       15 GETIMPORT                        R3 K6 [tostring]
       17 CALL                             R3 1 1
       18 CONCAT                           R1 R2 R3
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K8 [error]
       22 LOADK                            R1 K9 ["FIXME (roblox): enableCreateEventHandleAPI is unimplemented"]
       23 LOADN                            R2 2
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 MOVE                             R6 R0
        3 CALL                             R5 1 1
        4 GETTABLEKS                       R6 R4 K3 ["key"]
        6 JUMPIFNOT                        R6 ; [+5]
        7 GETTABLEKS                       R6 R4 K3 ["key"]
        9 SETTABLEKS                       R6 R5 K4 ["Name"]
       11 JUMP                             ; [+14]
       12 GETTABLEKS                       R6 R4 K5 ["return_"]
       14 JUMPIFNOT                        R6 ; [+11]
       15 GETTABLEKS                       R7 R6 K3 ["key"]
       17 JUMPIFNOT                        R7 ; [+5]
       18 GETTABLEKS                       R7 R6 K3 ["key"]
       20 SETTABLEKS                       R7 R5 K4 ["Name"]
       22 JUMP                             ; [+3]
       23 GETTABLEKS                       R6 R6 K5 ["return_"]
       25 JUMPBACK                         ; [-12]
       26 GETUPVAL                         R6 0
       27 MOVE                             R7 R4
       28 MOVE                             R8 R5
       29 CALL                             R6 2 0
       30 GETUPVAL                         R6 1
       31 MOVE                             R7 R5
       32 MOVE                             R8 R1
       33 CALL                             R6 2 0
       34 RETURN                           R5 1

PROTO_10:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 CALL                             R5 4 0
        6 LOADB                            R5 0
        7 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 MOVE                             R11 R4
        6 CALL                             R6 5 -1
        7 RETURN                           R6 -1

PROTO_13:
        0 LOADB                            R2 0
        1 RETURN                           R2 1

PROTO_14:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R6 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R8 K4 ["createTextInstance"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K8 [error]
       20 LOADK                            R5 K9 ["FIXME (roblox): createTextInstance is unimplemented"]
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 LOADNIL                          R4
       24 RETURN                           R4 1

PROTO_15:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R6 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R8 K4 ["commitMount"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K8 [error]
       20 LOADK                            R5 K9 ["FIXME (roblox): commitMount is unimplemented"]
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R4
        3 CALL                             R6 2 0
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 MOVE                             R8 R1
        7 MOVE                             R9 R3
        8 CALL                             R6 3 0
        9 RETURN                           R0 0

PROTO_17:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+10]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["warn"]
       10 LOADK                            R2 K4 ["Could not check tags on non-instance %s."]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 CALL                             R3 1 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R3 K6 [game]
       18 NAMECALL                         R1 R0 K7 ["IsDescendantOf"]
       20 CALL                             R1 2 1
       21 JUMPIF                           R1 ; [+18]
       22 GETUPVAL                         R2 2
       23 MOVE                             R4 R0
       24 NAMECALL                         R2 R2 K8 ["GetTags"]
       26 CALL                             R2 2 1
       27 LENGTH                           R1 R2
       28 LOADN                            R2 0
       29 JUMPIFNOTLT                      R2 R1 ; [+10]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K3 ["warn"]
       34 LOADK                            R2 K9 ["Tags applied to orphaned %s \"%s\" cannot be accessed via CollectionService:GetTagged. If you're relying on tag behavior in a unit test, consider mounting your test root into the DataModel."]
       35 GETTABLEKS                       R3 R0 K10 ["ClassName"]
       37 GETTABLEKS                       R4 R0 K11 ["Name"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["appendChild"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 GETIMPORT                        R3 K2 [_G]
        4 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["insertBefore"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_22:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+2]
        7 JUMP                             ; [+12]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 NAMECALL                         R2 R1 K3 ["GetDescendants"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 GETUPVAL                         R7 0
       16 MOVE                             R8 R6
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 ; [-4]
       20 GETUPVAL                         R2 1
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K4 ["Parent"]
       26 NAMECALL                         R2 R1 K5 ["Destroy"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["removeChild"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["clearSuspenseBoundary"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): clearSuspenseBoundary is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["clearSuspenseBoundaryFromContainer"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): clearSuspenseBoundaryFromContainer is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R5 K4 ["hideInstance"]
       12 FASTCALL1                        TOSTRING R5 ; [+2]
       13 GETIMPORT                        R4 K6 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K8 [error]
       20 LOADK                            R2 K9 ["FIXME (roblox): hideInstance is unimplemented"]
       21 LOADN                            R3 2
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R5 K4 ["hideTextInstance"]
       12 FASTCALL1                        TOSTRING R5 ; [+2]
       13 GETIMPORT                        R4 K6 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K8 [error]
       20 LOADK                            R2 K9 ["FIXME (roblox): hideTextInstance is unimplemented"]
       21 LOADN                            R3 2
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["unhideInstance"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): unhideInstance is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_29:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["unhideTextInstance"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): unhideTextInstance is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_30:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K1 ["removeChild"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R5
        9 CALL                             R6 2 0
       10 FORGLOOP                         R1 2 ; [-7]
       12 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [game]
        4 LOADK                            R3 K3 ["CollectionService"]
        5 NAMECALL                         R1 R1 K4 ["GetService"]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K6 [script]
       10 GETTABLEKS                       R2 R2 K7 ["Parent"]
       12 GETTABLEKS                       R2 R2 K7 ["Parent"]
       14 GETTABLEKS                       R2 R2 K7 ["Parent"]
       16 GETIMPORT                        R3 K9 [require]
       18 GETTABLEKS                       R4 R2 K10 ["LuauPolyfill"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K11 ["util"]
       23 GETTABLEKS                       R4 R4 K12 ["inspect"]
       25 GETIMPORT                        R5 K9 [require]
       27 GETTABLEKS                       R6 R2 K13 ["Shared"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R5 R5 K14 ["console"]
       32 GETTABLEKS                       R6 R3 K15 ["Object"]
       34 GETTABLEKS                       R7 R3 K16 ["setTimeout"]
       36 GETTABLEKS                       R8 R3 K17 ["clearTimeout"]
       38 GETIMPORT                        R9 K9 [require]
       40 GETIMPORT                        R11 K6 [script]
       42 GETTABLEKS                       R11 R11 K7 ["Parent"]
       44 GETTABLEKS                       R10 R11 K18 ["ReactRobloxHostTypes.roblox"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K9 [require]
       49 GETIMPORT                        R11 K6 [script]
       51 GETTABLEKS                       R11 R11 K7 ["Parent"]
       53 GETTABLEKS                       R11 R11 K19 ["ReactRobloxComponentTree"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R10 K20 ["precacheFiberNode"]
       58 GETTABLEKS                       R12 R10 K21 ["uncacheFiberNode"]
       60 GETTABLEKS                       R13 R10 K22 ["updateFiberProps"]
       62 GETIMPORT                        R14 K9 [require]
       64 GETIMPORT                        R15 K6 [script]
       66 GETTABLEKS                       R15 R15 K7 ["Parent"]
       68 GETTABLEKS                       R15 R15 K23 ["ReactRobloxComponent"]
       70 CALL                             R14 1 1
       71 GETTABLEKS                       R15 R14 K24 ["setInitialProperties"]
       73 GETTABLEKS                       R16 R14 K25 ["diffProperties"]
       75 GETTABLEKS                       R17 R14 K26 ["updateProperties"]
       77 GETTABLEKS                       R18 R14 K27 ["cleanupHostComponent"]
       79 GETIMPORT                        R19 K9 [require]
       81 GETTABLEKS                       R20 R2 K13 ["Shared"]
       83 CALL                             R19 1 1
       84 GETTABLEKS                       R19 R19 K28 ["ReactFeatureFlags"]
       86 GETTABLEKS                       R20 R19 K29 ["enableCreateEventHandleAPI"]
       88 DUPCLOSURE                       R21 K30 [PROTO_1]
       89 CAPTURE                          VAL R12
       90 NEWTABLE                         R22 64 0
       92 GETTABLEKS                       R23 R6 K31 ["assign"]
       94 MOVE                             R24 R22
       95 GETIMPORT                        R25 K9 [require]
       97 GETTABLEKS                       R26 R2 K13 ["Shared"]
       99 CALL                             R25 1 1
      100 GETTABLEKS                       R25 R25 K32 ["ReactFiberHostConfig"]
      102 GETTABLEKS                       R25 R25 K33 ["WithNoPersistence"]
      104 CALL                             R23 2 0
      105 DUPCLOSURE                       R23 K34 [PROTO_2]
      106 SETTABLEKS                       R23 R22 K35 ["getRootHostContext"]
      108 DUPCLOSURE                       R23 K36 [PROTO_3]
      109 SETTABLEKS                       R23 R22 K37 ["getChildHostContext"]
      111 DUPCLOSURE                       R23 K38 [PROTO_4]
      112 SETTABLEKS                       R23 R22 K39 ["getPublicInstance"]
      114 DUPCLOSURE                       R23 K40 [PROTO_5]
      115 CAPTURE                          VAL R20
      116 SETTABLEKS                       R23 R22 K41 ["prepareForCommit"]
      118 DUPCLOSURE                       R23 K42 [PROTO_6]
      119 CAPTURE                          VAL R20
      120 SETTABLEKS                       R23 R22 K43 ["beforeActiveInstanceBlur"]
      122 DUPCLOSURE                       R23 K44 [PROTO_7]
      123 CAPTURE                          VAL R20
      124 SETTABLEKS                       R23 R22 K45 ["afterActiveInstanceBlur"]
      126 DUPCLOSURE                       R23 K46 [PROTO_8]
      127 SETTABLEKS                       R23 R22 K47 ["resetAfterCommit"]
      129 DUPCLOSURE                       R23 K48 [PROTO_9]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R13
      132 SETTABLEKS                       R23 R22 K49 ["createInstance"]
      134 DUPCLOSURE                       R23 K50 [PROTO_10]
      135 SETTABLEKS                       R23 R22 K51 ["appendInitialChild"]
      137 DUPCLOSURE                       R23 K52 [PROTO_11]
      138 CAPTURE                          VAL R15
      139 SETTABLEKS                       R23 R22 K53 ["finalizeInitialChildren"]
      141 DUPCLOSURE                       R23 K54 [PROTO_12]
      142 CAPTURE                          VAL R16
      143 SETTABLEKS                       R23 R22 K55 ["prepareUpdate"]
      145 DUPCLOSURE                       R24 K56 [PROTO_13]
      146 SETTABLEKS                       R24 R22 K57 ["shouldSetTextContent"]
      148 DUPCLOSURE                       R24 K58 [PROTO_14]
      149 SETTABLEKS                       R24 R22 K59 ["createTextInstance"]
      151 LOADB                            R24 1
      152 SETTABLEKS                       R24 R22 K60 ["isPrimaryRenderer"]
      154 LOADB                            R24 1
      155 SETTABLEKS                       R24 R22 K61 ["warnsIfNotActing"]
      157 SETTABLEKS                       R7 R22 K62 ["scheduleTimeout"]
      159 SETTABLEKS                       R8 R22 K63 ["cancelTimeout"]
      161 LOADN                            R24 -1
      162 SETTABLEKS                       R24 R22 K64 ["noTimeout"]
      164 LOADB                            R24 1
      165 SETTABLEKS                       R24 R22 K65 ["supportsMutation"]
      167 DUPCLOSURE                       R24 K66 [PROTO_15]
      168 SETTABLEKS                       R24 R22 K67 ["commitMount"]
      170 DUPCLOSURE                       R24 K68 [PROTO_16]
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R17
      173 SETTABLEKS                       R24 R22 K69 ["commitUpdate"]
      175 DUPCLOSURE                       R24 K70 [PROTO_17]
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R1
      179 DUPCLOSURE                       R25 K71 [PROTO_18]
      180 CAPTURE                          VAL R24
      181 SETTABLEKS                       R25 R22 K72 ["appendChild"]
      183 DUPCLOSURE                       R25 K73 [PROTO_19]
      184 CAPTURE                          VAL R22
      185 SETTABLEKS                       R25 R22 K74 ["appendChildToContainer"]
      187 DUPCLOSURE                       R25 K75 [PROTO_20]
      188 CAPTURE                          VAL R24
      189 SETTABLEKS                       R25 R22 K76 ["insertBefore"]
      191 DUPCLOSURE                       R25 K77 [PROTO_21]
      192 CAPTURE                          VAL R22
      193 SETTABLEKS                       R25 R22 K78 ["insertInContainerBefore"]
      195 DUPCLOSURE                       R25 K79 [PROTO_22]
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R18
      198 SETTABLEKS                       R25 R22 K80 ["removeChild"]
      200 DUPCLOSURE                       R25 K81 [PROTO_23]
      201 CAPTURE                          VAL R22
      202 SETTABLEKS                       R25 R22 K82 ["removeChildFromContainer"]
      204 DUPCLOSURE                       R25 K83 [PROTO_24]
      205 SETTABLEKS                       R25 R22 K84 ["clearSuspenseBoundary"]
      207 DUPCLOSURE                       R25 K85 [PROTO_25]
      208 SETTABLEKS                       R25 R22 K86 ["clearSuspenseBoundaryFromContainer"]
      210 DUPCLOSURE                       R25 K87 [PROTO_26]
      211 SETTABLEKS                       R25 R22 K88 ["hideInstance"]
      213 DUPCLOSURE                       R25 K89 [PROTO_27]
      214 SETTABLEKS                       R25 R22 K90 ["hideTextInstance"]
      216 DUPCLOSURE                       R25 K91 [PROTO_28]
      217 SETTABLEKS                       R25 R22 K92 ["unhideInstance"]
      219 DUPCLOSURE                       R25 K93 [PROTO_29]
      220 SETTABLEKS                       R25 R22 K94 ["unhideTextInstance"]
      222 DUPCLOSURE                       R25 K95 [PROTO_30]
      223 CAPTURE                          VAL R22
      224 SETTABLEKS                       R25 R22 K96 ["clearContainer"]
      226 DUPCLOSURE                       R25 K97 [PROTO_31]
      227 SETTABLEKS                       R25 R22 K98 ["preparePortalMount"]
      229 RETURN                           R22 1
