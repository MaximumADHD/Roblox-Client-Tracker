PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["__componentName"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["typeChecks"]
        3 JUMPIFNOT                        R2 ; [+33]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["of"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K2 ["StatefulComponentClass"]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       18 LOADK                            R4 K3 ["Invalid `self` argument to `extend`."]
       19 GETIMPORT                        R2 K5 [assert]
       21 CALL                             R2 2 0
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K7 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFEQKS                       R4 K8 ["string"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       33 LOADK                            R4 K9 ["Component class name must be a string"]
       34 GETIMPORT                        R2 K5 [assert]
       36 CALL                             R2 2 0
       37 NEWTABLE                         R2 2 0
       39 GETIMPORT                        R3 K11 [pairs]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 3
       43 FORGPREP_NEXT                    R3
       44 JUMPIFEQKS                       R6 K12 ["extend"] ; [+2]
       46 SETTABLE                         R7 R2 R6
       47 FORGLOOP                         R3 2 ; [-4]
       49 GETUPVAL                         R3 1
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K2 ["StatefulComponentClass"]
       53 SETTABLE                         R4 R2 R3
       54 SETTABLEKS                       R2 R2 K13 ["__index"]
       56 SETTABLEKS                       R1 R2 K14 ["__componentName"]
       58 GETUPVAL                         R5 2
       59 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       61 MOVE                             R4 R2
       62 GETIMPORT                        R3 K16 [setmetatable]
       64 CALL                             R3 2 0
       65 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__getDerivedState`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 3
       20 GETTABLE                         R3 R0 R4
       21 GETTABLEKS                       R4 R3 K4 ["componentClass"]
       23 GETTABLEKS                       R5 R4 K5 ["getDerivedStateFromProps"]
       25 JUMPIFEQKNIL                     R5 ; [+28]
       27 GETTABLEKS                       R5 R4 K5 ["getDerivedStateFromProps"]
       29 MOVE                             R6 R1
       30 MOVE                             R7 R2
       31 CALL                             R5 2 1
       32 JUMPIFEQKNIL                     R5 ; [+21]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K6 ["typeChecks"]
       37 JUMPIFNOT                        R6 ; [+15]
       38 FASTCALL1                        TYPEOF R5 ; [+3]
       39 MOVE                             R9 R5
       40 GETIMPORT                        R8 K8 [typeof]
       42 CALL                             R8 1 1
       43 JUMPIFEQKS                       R8 K9 ["table"] ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 FASTCALL2K                       ASSERT R7 K10 ; [+4]
       49 LOADK                            R8 K10 ["getDerivedStateFromProps must return a table!"]
       50 GETIMPORT                        R6 K12 [assert]
       52 CALL                             R6 2 0
       53 RETURN                           R5 1
       54 LOADNIL                          R5
       55 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["typeChecks"]
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["of"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K2 ["StatefulComponentInstance"]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       18 LOADK                            R4 K3 ["Invalid `self` argument to `extend`."]
       19 GETIMPORT                        R2 K5 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 2
       23 GETTABLE                         R2 R0 R3
       24 GETTABLEKS                       R3 R2 K6 ["lifecyclePhase"]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K7 ["ShouldUpdate"]
       29 JUMPIFEQ                         R3 R4 ; [+16]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K8 ["WillUpdate"]
       34 JUMPIFEQ                         R3 R4 ; [+11]
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R4 R5 K9 ["Render"]
       39 JUMPIFEQ                         R3 R4 ; [+6]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R4 R5 K10 ["WillUnmount"]
       44 JUMPIFNOTEQ                      R3 R4 ; [+19]
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R6 R2 K6 ["lifecyclePhase"]
       49 GETTABLE                         R4 R5 R6
       50 GETTABLEKS                       R8 R2 K11 ["componentClass"]
       52 FASTCALL1                        TOSTRING R8 ; [+2]
       53 GETIMPORT                        R7 K13 [tostring]
       55 CALL                             R7 1 1
       56 NAMECALL                         R5 R4 K14 ["format"]
       58 CALL                             R5 2 1
       59 GETIMPORT                        R6 K16 [error]
       61 MOVE                             R7 R5
       62 LOADN                            R8 2
       63 CALL                             R6 2 0
       64 GETTABLEKS                       R4 R2 K17 ["pendingState"]
       66 LOADNIL                          R5
       67 FASTCALL1                        TYPEOF R1 ; [+3]
       68 MOVE                             R7 R1
       69 GETIMPORT                        R6 K19 [typeof]
       71 CALL                             R6 1 1
       72 JUMPIFNOTEQKS                    R6 K20 ["function"] ; [+14]
       74 MOVE                             R6 R1
       75 MOVE                             R7 R4
       76 JUMPIF                           R7 ; [+2]
       77 GETTABLEKS                       R7 R0 K21 ["state"]
       79 GETTABLEKS                       R8 R0 K22 ["props"]
       81 CALL                             R6 2 1
       82 MOVE                             R5 R6
       83 JUMPIFNOTEQKNIL                  R5 ; [+17]
       85 RETURN                           R0 0
       86 JUMP                             ; [+14]
       87 FASTCALL1                        TYPEOF R1 ; [+3]
       88 MOVE                             R7 R1
       89 GETIMPORT                        R6 K19 [typeof]
       91 CALL                             R6 1 1
       92 JUMPIFNOTEQKS                    R6 K23 ["table"] ; [+3]
       94 MOVE                             R5 R1
       95 JUMP                             ; [+5]
       96 GETIMPORT                        R6 K16 [error]
       98 LOADK                            R7 K24 ["Invalid argument to setState, expected function or table"]
       99 LOADN                            R8 2
      100 CALL                             R6 2 0
      101 LOADNIL                          R6
      102 JUMPIFEQKNIL                     R4 ; [+7]
      104 GETUPVAL                         R7 5
      105 MOVE                             R8 R4
      106 MOVE                             R9 R5
      107 CALL                             R7 2 1
      108 MOVE                             R6 R7
      109 JUMP                             ; [+8]
      110 GETUPVAL                         R7 5
      111 NEWTABLE                         R8 0 0
      113 GETTABLEKS                       R9 R0 K21 ["state"]
      115 MOVE                             R10 R5
      116 CALL                             R7 3 1
      117 MOVE                             R6 R7
      118 GETUPVAL                         R8 3
      119 GETTABLEKS                       R7 R8 K25 ["Init"]
      121 JUMPIFNOTEQ                      R3 R7 ; [+14]
      123 GETTABLEKS                       R9 R0 K22 ["props"]
      125 MOVE                             R10 R6
      126 NAMECALL                         R7 R0 K26 ["__getDerivedState"]
      128 CALL                             R7 3 1
      129 GETUPVAL                         R8 5
      130 MOVE                             R9 R6
      131 MOVE                             R10 R7
      132 CALL                             R8 2 1
      133 SETTABLEKS                       R8 R0 K21 ["state"]
      135 RETURN                           R0 0
      136 GETUPVAL                         R8 3
      137 GETTABLEKS                       R7 R8 K27 ["DidMount"]
      139 JUMPIFEQ                         R3 R7 ; [+11]
      141 GETUPVAL                         R8 3
      142 GETTABLEKS                       R7 R8 K28 ["DidUpdate"]
      144 JUMPIFEQ                         R3 R7 ; [+6]
      146 GETUPVAL                         R8 3
      147 GETTABLEKS                       R7 R8 K29 ["ReconcileChildren"]
      149 JUMPIFNOTEQ                      R3 R7 ; [+14]
      151 GETTABLEKS                       R9 R0 K22 ["props"]
      153 MOVE                             R10 R6
      154 NAMECALL                         R7 R0 K26 ["__getDerivedState"]
      156 CALL                             R7 3 1
      157 GETUPVAL                         R8 5
      158 MOVE                             R9 R6
      159 MOVE                             R10 R7
      160 CALL                             R8 2 1
      161 SETTABLEKS                       R8 R2 K17 ["pendingState"]
      163 RETURN                           R0 0
      164 GETUPVAL                         R8 3
      165 GETTABLEKS                       R7 R8 K30 ["Idle"]
      167 JUMPIFNOTEQ                      R3 R7 ; [+7]
      169 LOADNIL                          R9
      170 MOVE                             R10 R6
      171 NAMECALL                         R7 R0 K31 ["__update"]
      173 CALL                             R7 3 0
      174 RETURN                           R0 0
      175 GETUPVAL                         R8 4
      176 GETTABLEKS                       R7 R8 K32 ["default"]
      178 GETTABLEKS                       R11 R2 K11 ["componentClass"]
      180 FASTCALL1                        TOSTRING R11 ; [+2]
      181 GETIMPORT                        R10 K13 [tostring]
      183 CALL                             R10 1 1
      184 NAMECALL                         R8 R7 K14 ["format"]
      186 CALL                             R8 2 1
      187 GETIMPORT                        R9 K16 [error]
      189 MOVE                             R10 R8
      190 LOADN                            R11 2
      191 CALL                             R9 2 0
      192 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R0 R5
        2 GETTABLEKS                       R3 R4 K0 ["virtualNode"]
        4 GETTABLEKS                       R2 R3 K1 ["currentElement"]
        6 GETTABLEKS                       R1 R2 K2 ["source"]
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 LOADK                            R2 K0 ["The component %q is missing the `render` method.\n`render` must be defined when creating a Roact component!"]
        3 GETTABLEKS                       R5 R1 K1 ["componentClass"]
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K3 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K6 [error]
       14 MOVE                             R4 R2
       15 LOADN                            R5 0
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R2 ; [+22]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["of"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R4 R5 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 LOADK                            R4 K3 ["Invalid use of `__getContext`"]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 1
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 LOADK                            R4 K4 ["Context key cannot be nil"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R4 3
       27 GETTABLE                         R3 R0 R4
       28 GETTABLEKS                       R2 R3 K5 ["virtualNode"]
       30 GETTABLEKS                       R3 R2 K6 ["context"]
       32 GETTABLE                         R4 R3 R1
       33 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__addContext`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R5 3
       20 GETTABLE                         R4 R0 R5
       21 GETTABLEKS                       R3 R4 K4 ["virtualNode"]
       23 GETTABLEKS                       R4 R3 K5 ["originalContext"]
       25 JUMPIFNOTEQKNIL                  R4 ; [+5]
       27 GETTABLEKS                       R4 R3 K6 ["context"]
       29 SETTABLEKS                       R4 R3 K5 ["originalContext"]
       31 GETTABLEKS                       R4 R3 K6 ["context"]
       33 GETUPVAL                         R5 4
       34 NEWTABLE                         R6 0 0
       36 MOVE                             R7 R4
       37 NEWTABLE                         R8 1 0
       39 SETTABLE                         R2 R8 R1
       40 CALL                             R5 3 1
       41 SETTABLEKS                       R5 R3 K6 ["context"]
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["propValidation"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R0 R5
        7 GETTABLEKS                       R3 R4 K1 ["componentClass"]
        9 GETTABLEKS                       R2 R3 K2 ["validateProps"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 RETURN                           R0 0
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K4 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFEQKS                       R3 K5 ["function"] ; [+15]
       21 GETIMPORT                        R3 K7 [error]
       23 LOADK                            R4 K8 ["validateProps must be a function, but it is a %s.\nCheck the definition of the component %q."]
       24 FASTCALL1                        TYPEOF R2 ; [+3]
       25 MOVE                             R7 R2
       26 GETIMPORT                        R6 K4 [typeof]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R0 K9 ["__componentName"]
       31 NAMECALL                         R4 R4 K10 ["format"]
       33 CALL                             R4 3 -1
       34 CALL                             R3 -1 0
       35 MOVE                             R3 R2
       36 MOVE                             R4 R1
       37 CALL                             R3 1 2
       38 JUMPIF                           R3 ; [+20]
       39 ORK                              R4 R4 K11 ["<Validator function did not supply a message>"]
       40 GETIMPORT                        R5 K7 [error]
       42 LOADK                            R6 K12 ["Property validation failed in %s: %s\n\n%s"]
       43 GETTABLEKS                       R8 R0 K9 ["__componentName"]
       45 FASTCALL1                        TOSTRING R4 ; [+3]
       46 MOVE                             R10 R4
       47 GETIMPORT                        R9 K14 [tostring]
       49 CALL                             R9 1 1
       50 NAMECALL                         R11 R0 K16 ["getElementTraceback"]
       52 CALL                             R11 1 1
       53 ORK                              R10 R11 K15 ["<enable element tracebacks>"]
       54 NAMECALL                         R6 R6 K10 ["format"]
       56 CALL                             R6 4 1
       57 LOADN                            R7 0
       58 CALL                             R5 2 0
       59 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+30]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K2 ["StatefulComponentClass"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__mount`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K1 ["of"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K4 ["VirtualNode"]
       28 JUMPIFEQ                         R5 R6 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 LOADK                            R5 K5 ["Expected arg #2 to be of type VirtualNode"]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R2 K6 ["currentElement"]
       36 GETTABLEKS                       R4 R2 K7 ["hostParent"]
       38 DUPTABLE                         R5 K12 [{"reconciler", "virtualNode", "componentClass", "lifecyclePhase"}]
       39 SETTABLEKS                       R1 R5 K8 ["reconciler"]
       41 SETTABLEKS                       R2 R5 K9 ["virtualNode"]
       43 SETTABLEKS                       R0 R5 K10 ["componentClass"]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R6 R7 K13 ["Init"]
       48 SETTABLEKS                       R6 R5 K11 ["lifecyclePhase"]
       50 NEWTABLE                         R6 2 0
       52 GETUPVAL                         R7 2
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K14 ["StatefulComponentInstance"]
       56 SETTABLE                         R8 R6 R7
       57 GETUPVAL                         R7 4
       58 SETTABLE                         R5 R6 R7
       59 FASTCALL2                        SETMETATABLE R6 R0 ; [+5]
       61 MOVE                             R8 R6
       62 MOVE                             R9 R0
       63 GETIMPORT                        R7 K16 [setmetatable]
       65 CALL                             R7 2 0
       66 SETTABLEKS                       R6 R2 K17 ["instance"]
       68 GETTABLEKS                       R7 R3 K18 ["props"]
       70 GETTABLEKS                       R8 R0 K19 ["defaultProps"]
       72 JUMPIFEQKNIL                     R8 ; [+9]
       74 GETUPVAL                         R8 5
       75 NEWTABLE                         R9 0 0
       77 GETTABLEKS                       R10 R0 K19 ["defaultProps"]
       79 MOVE                             R11 R7
       80 CALL                             R8 3 1
       81 MOVE                             R7 R8
       82 MOVE                             R10 R7
       83 NAMECALL                         R8 R6 K20 ["__validateProps"]
       85 CALL                             R8 2 0
       86 SETTABLEKS                       R7 R6 K18 ["props"]
       88 GETUPVAL                         R8 5
       89 NEWTABLE                         R9 0 0
       91 GETTABLEKS                       R10 R2 K21 ["legacyContext"]
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R6 K22 ["_context"]
       96 GETUPVAL                         R9 5
       97 NEWTABLE                         R10 0 0
       99 GETTABLEKS                       R13 R6 K18 ["props"]
      101 NEWTABLE                         R14 0 0
      103 NAMECALL                         R11 R6 K23 ["__getDerivedState"]
      105 CALL                             R11 3 -1
      106 CALL                             R9 -1 1
      107 SETTABLEKS                       R9 R6 K24 ["state"]
      109 GETTABLEKS                       R9 R6 K25 ["init"]
      111 JUMPIFEQKNIL                     R9 ; [+17]
      113 GETTABLEKS                       R11 R6 K18 ["props"]
      115 NAMECALL                         R9 R6 K25 ["init"]
      117 CALL                             R9 2 0
      118 GETUPVAL                         R9 5
      119 GETTABLEKS                       R10 R6 K24 ["state"]
      121 GETTABLEKS                       R13 R6 K18 ["props"]
      123 GETTABLEKS                       R14 R6 K24 ["state"]
      125 NAMECALL                         R11 R6 K23 ["__getDerivedState"]
      127 CALL                             R11 3 -1
      128 CALL                             R9 -1 0
      129 GETTABLEKS                       R9 R6 K22 ["_context"]
      131 SETTABLEKS                       R9 R2 K21 ["legacyContext"]
      133 GETUPVAL                         R10 3
      134 GETTABLEKS                       R9 R10 K26 ["Render"]
      136 SETTABLEKS                       R9 R5 K11 ["lifecyclePhase"]
      138 NAMECALL                         R9 R6 K27 ["render"]
      140 CALL                             R9 1 1
      141 GETUPVAL                         R11 3
      142 GETTABLEKS                       R10 R11 K28 ["ReconcileChildren"]
      144 SETTABLEKS                       R10 R5 K11 ["lifecyclePhase"]
      146 GETTABLEKS                       R10 R1 K29 ["updateVirtualNodeWithRenderResult"]
      148 MOVE                             R11 R2
      149 MOVE                             R12 R4
      150 MOVE                             R13 R9
      151 CALL                             R10 3 0
      152 GETTABLEKS                       R10 R6 K30 ["didMount"]
      154 JUMPIFEQKNIL                     R10 ; [+9]
      156 GETUPVAL                         R11 3
      157 GETTABLEKS                       R10 R11 K31 ["DidMount"]
      159 SETTABLEKS                       R10 R5 K11 ["lifecyclePhase"]
      161 NAMECALL                         R10 R6 K30 ["didMount"]
      163 CALL                             R10 1 0
      164 GETTABLEKS                       R10 R5 K32 ["pendingState"]
      166 JUMPIFEQKNIL                     R10 ; [+6]
      168 LOADNIL                          R12
      169 LOADNIL                          R13
      170 NAMECALL                         R10 R6 K33 ["__update"]
      172 CALL                             R10 3 0
      173 GETUPVAL                         R11 3
      174 GETTABLEKS                       R10 R11 K34 ["Idle"]
      176 SETTABLEKS                       R10 R5 K11 ["lifecyclePhase"]
      178 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["of"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 LOADK                            R3 K3 ["Invalid use of `__unmount`"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R2 3
       20 GETTABLE                         R1 R0 R2
       21 GETTABLEKS                       R2 R1 K4 ["virtualNode"]
       23 GETTABLEKS                       R3 R1 K5 ["reconciler"]
       25 GETTABLEKS                       R4 R0 K6 ["willUnmount"]
       27 JUMPIFEQKNIL                     R4 ; [+9]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R4 R5 K7 ["WillUnmount"]
       32 SETTABLEKS                       R4 R1 K8 ["lifecyclePhase"]
       34 NAMECALL                         R4 R0 K6 ["willUnmount"]
       36 CALL                             R4 1 0
       37 GETIMPORT                        R4 K10 [pairs]
       39 GETTABLEKS                       R5 R2 K11 ["children"]
       41 CALL                             R4 1 3
       42 FORGPREP_NEXT                    R4
       43 GETTABLEKS                       R9 R3 K12 ["unmountVirtualNode"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 0
       47 FORGLOOP                         R4 2 ; [-5]
       49 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+48]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__update`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 LOADB                            R4 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R5 R6 K1 ["of"]
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K4 ["Element"]
       29 JUMPIFEQ                         R5 R6 ; [+5]
       31 JUMPIFEQKNIL                     R1 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 LOADK                            R5 K5 ["Expected arg #1 to be of type Element or nil"]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R3 1
       38 LOADB                            R4 1
       39 FASTCALL1                        TYPEOF R2 ; [+3]
       40 MOVE                             R6 R2
       41 GETIMPORT                        R5 K7 [typeof]
       43 CALL                             R5 1 1
       44 JUMPIFEQKS                       R5 K8 ["table"] ; [+5]
       46 JUMPIFEQKNIL                     R2 ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 LOADK                            R5 K9 ["Expected arg #2 to be of type table or nil"]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R4 3
       53 GETTABLE                         R3 R0 R4
       54 GETTABLEKS                       R4 R3 K10 ["componentClass"]
       56 GETTABLEKS                       R5 R0 K11 ["props"]
       58 JUMPIFEQKNIL                     R1 ; [+19]
       60 GETTABLEKS                       R5 R1 K11 ["props"]
       62 GETTABLEKS                       R6 R4 K12 ["defaultProps"]
       64 JUMPIFEQKNIL                     R6 ; [+9]
       66 GETUPVAL                         R6 4
       67 NEWTABLE                         R7 0 0
       69 GETTABLEKS                       R8 R4 K12 ["defaultProps"]
       71 MOVE                             R9 R5
       72 CALL                             R6 3 1
       73 MOVE                             R5 R6
       74 MOVE                             R8 R5
       75 NAMECALL                         R6 R0 K13 ["__validateProps"]
       77 CALL                             R6 2 0
       78 LOADN                            R6 0
       79 LOADNIL                          R7
       80 LOADNIL                          R8
       81 GETTABLEKS                       R9 R3 K14 ["pendingState"]
       83 JUMPIFEQKNIL                     R9 ; [+6]
       85 GETTABLEKS                       R8 R3 K14 ["pendingState"]
       87 LOADNIL                          R9
       88 SETTABLEKS                       R9 R3 K14 ["pendingState"]
       90 JUMPIFNOTEQKNIL                  R2 ; [+5]
       92 GETTABLEKS                       R9 R0 K11 ["props"]
       94 JUMPIFEQ                         R5 R9 ; [+30]
       96 JUMPIFNOTEQKNIL                  R8 ; [+7]
       98 MOVE                             R9 R2
       99 JUMPIF                           R9 ; [+2]
      100 GETTABLEKS                       R9 R0 K15 ["state"]
      102 MOVE                             R7 R9
      103 JUMP                             ; [+5]
      104 GETUPVAL                         R9 4
      105 MOVE                             R10 R8
      106 MOVE                             R11 R2
      107 CALL                             R9 2 1
      108 MOVE                             R7 R9
      109 MOVE                             R11 R5
      110 MOVE                             R12 R7
      111 NAMECALL                         R9 R0 K16 ["__getDerivedState"]
      113 CALL                             R9 3 1
      114 JUMPIFEQKNIL                     R9 ; [+8]
      116 GETUPVAL                         R10 4
      117 NEWTABLE                         R11 0 0
      119 MOVE                             R12 R7
      120 MOVE                             R13 R9
      121 CALL                             R10 3 1
      122 MOVE                             R7 R10
      123 LOADNIL                          R2
      124 JUMP                             ; [+1]
      125 MOVE                             R7 R8
      126 MOVE                             R11 R5
      127 MOVE                             R12 R7
      128 NAMECALL                         R9 R0 K17 ["__resolveUpdate"]
      130 CALL                             R9 3 1
      131 JUMPIF                           R9 ; [+2]
      132 LOADB                            R9 0
      133 RETURN                           R9 1
      134 ADDK                             R6 R6 K18 [1]
      135 LOADN                            R9 100
      136 JUMPIFNOTLT                      R9 R6 ; [+15]
      138 GETIMPORT                        R9 K20 [error]
      140 LOADK                            R10 K21 ["The component %q has reached the setState update recursion limit.\nWhen using `setState` in `didUpdate`, make sure that it won't repeat infinitely!"]
      141 GETTABLEKS                       R13 R3 K10 ["componentClass"]
      143 FASTCALL1                        TOSTRING R13 ; [+2]
      144 GETIMPORT                        R12 K23 [tostring]
      146 CALL                             R12 1 1
      147 NAMECALL                         R10 R10 K24 ["format"]
      149 CALL                             R10 2 1
      150 LOADN                            R11 3
      151 CALL                             R9 2 0
      152 GETTABLEKS                       R9 R3 K14 ["pendingState"]
      154 JUMPIFEQKNIL                     R9 ; [+2]
      156 JUMPBACK                         ; [-78]
      157 LOADB                            R7 1
      158 RETURN                           R7 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__resolveUpdate`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 3
       20 GETTABLE                         R3 R0 R4
       21 GETTABLEKS                       R4 R3 K4 ["virtualNode"]
       23 GETTABLEKS                       R5 R3 K5 ["reconciler"]
       25 GETTABLEKS                       R6 R0 K6 ["props"]
       27 GETTABLEKS                       R7 R0 K7 ["state"]
       29 JUMPIFNOTEQKNIL                  R1 ; [+2]
       31 MOVE                             R1 R6
       32 JUMPIFNOTEQKNIL                  R2 ; [+2]
       34 MOVE                             R2 R7
       35 GETTABLEKS                       R8 R0 K8 ["shouldUpdate"]
       37 JUMPIFEQKNIL                     R8 ; [+19]
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R8 R9 K9 ["ShouldUpdate"]
       42 SETTABLEKS                       R8 R3 K10 ["lifecyclePhase"]
       44 MOVE                             R10 R1
       45 MOVE                             R11 R2
       46 NAMECALL                         R8 R0 K8 ["shouldUpdate"]
       48 CALL                             R8 3 1
       49 JUMPIF                           R8 ; [+7]
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R9 R10 K11 ["Idle"]
       53 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
       55 LOADB                            R9 0
       56 RETURN                           R9 1
       57 GETTABLEKS                       R8 R0 K12 ["willUpdate"]
       59 JUMPIFEQKNIL                     R8 ; [+11]
       61 GETUPVAL                         R9 4
       62 GETTABLEKS                       R8 R9 K13 ["WillUpdate"]
       64 SETTABLEKS                       R8 R3 K10 ["lifecyclePhase"]
       66 MOVE                             R10 R1
       67 MOVE                             R11 R2
       68 NAMECALL                         R8 R0 K12 ["willUpdate"]
       70 CALL                             R8 3 0
       71 GETUPVAL                         R9 4
       72 GETTABLEKS                       R8 R9 K14 ["Render"]
       74 SETTABLEKS                       R8 R3 K10 ["lifecyclePhase"]
       76 SETTABLEKS                       R1 R0 K6 ["props"]
       78 SETTABLEKS                       R2 R0 K7 ["state"]
       80 GETTABLEKS                       R8 R4 K15 ["instance"]
       82 NAMECALL                         R8 R8 K16 ["render"]
       84 CALL                             R8 1 1
       85 GETUPVAL                         R10 4
       86 GETTABLEKS                       R9 R10 K17 ["ReconcileChildren"]
       88 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
       90 GETTABLEKS                       R9 R5 K18 ["updateVirtualNodeWithRenderResult"]
       92 MOVE                             R10 R4
       93 GETTABLEKS                       R11 R4 K19 ["hostParent"]
       95 MOVE                             R12 R8
       96 CALL                             R9 3 0
       97 GETTABLEKS                       R9 R0 K20 ["didUpdate"]
       99 JUMPIFEQKNIL                     R9 ; [+11]
      101 GETUPVAL                         R10 4
      102 GETTABLEKS                       R9 R10 K21 ["DidUpdate"]
      104 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
      106 MOVE                             R11 R6
      107 MOVE                             R12 R7
      108 NAMECALL                         R9 R0 K20 ["didUpdate"]
      110 CALL                             R9 3 0
      111 GETUPVAL                         R10 4
      112 GETTABLEKS                       R9 R10 K11 ["Idle"]
      114 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
      116 LOADB                            R9 1
      117 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["assign"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["ComponentLifecyclePhase"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["Type"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["Symbol"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R7 K3 [script]
       41 GETTABLEKS                       R6 R7 K4 ["Parent"]
       43 GETTABLEKS                       R5 R6 K9 ["invalidSetStateMessages"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R8 K3 [script]
       50 GETTABLEKS                       R7 R8 K4 ["Parent"]
       52 GETTABLEKS                       R6 R7 K10 ["internalAssert"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R7 K1 [require]
       57 GETIMPORT                        R10 K3 [script]
       59 GETTABLEKS                       R9 R10 K4 ["Parent"]
       61 GETTABLEKS                       R8 R9 K11 ["GlobalConfig"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R6 R7 K12 ["get"]
       66 CALL                             R6 0 1
       67 GETTABLEKS                       R7 R3 K13 ["named"]
       69 LOADK                            R8 K14 ["InternalData"]
       70 CALL                             R7 1 1
       71 NEWTABLE                         R8 1 0
       73 DUPCLOSURE                       R9 K15 [PROTO_0]
       74 SETTABLEKS                       R9 R8 K16 ["__tostring"]
       76 NEWTABLE                         R9 16 0
       78 FASTCALL2                        SETMETATABLE R9 R8 ; [+5]
       80 MOVE                             R11 R9
       81 MOVE                             R12 R8
       82 GETIMPORT                        R10 K18 [setmetatable]
       84 CALL                             R10 2 0
       85 GETTABLEKS                       R10 R2 K19 ["StatefulComponentClass"]
       87 SETTABLE                         R10 R9 R2
       88 SETTABLEKS                       R9 R9 K20 ["__index"]
       90 LOADK                            R10 K21 ["Component"]
       91 SETTABLEKS                       R10 R9 K22 ["__componentName"]
       93 DUPCLOSURE                       R10 K23 [PROTO_1]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 SETTABLEKS                       R10 R9 K24 ["extend"]
       99 DUPCLOSURE                       R10 K25 [PROTO_2]
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R10 R9 K26 ["__getDerivedState"]
      106 DUPCLOSURE                       R10 K27 [PROTO_3]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R10 R9 K28 ["setState"]
      115 DUPCLOSURE                       R10 K29 [PROTO_4]
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R10 R9 K30 ["getElementTraceback"]
      119 DUPCLOSURE                       R10 K31 [PROTO_5]
      120 CAPTURE                          VAL R7
      121 SETTABLEKS                       R10 R9 K32 ["render"]
      123 DUPCLOSURE                       R10 K33 [PROTO_6]
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R10 R9 K34 ["__getContext"]
      130 DUPCLOSURE                       R10 K35 [PROTO_7]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R10 R9 K36 ["__addContext"]
      138 DUPCLOSURE                       R10 K37 [PROTO_8]
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 SETTABLEKS                       R10 R9 K38 ["__validateProps"]
      143 DUPCLOSURE                       R10 K39 [PROTO_9]
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R10 R9 K40 ["__mount"]
      152 DUPCLOSURE                       R10 K41 [PROTO_10]
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R10 R9 K42 ["__unmount"]
      160 DUPCLOSURE                       R10 K43 [PROTO_11]
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R10 R9 K44 ["__update"]
      168 DUPCLOSURE                       R10 K45 [PROTO_12]
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R10 R9 K46 ["__resolveUpdate"]
      176 RETURN                           R9 1
