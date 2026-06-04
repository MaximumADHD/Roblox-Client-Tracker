PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["__componentName"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["typeChecks"]
        3 JUMPIFNOT                        R2 ; [+33]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["of"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["StatefulComponentClass"]
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
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K2 ["StatefulComponentClass"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["StatefulComponentInstance"]
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
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K6 ["typeChecks"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["typeChecks"]
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["of"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["StatefulComponentInstance"]
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
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K7 ["ShouldUpdate"]
       29 JUMPIFEQ                         R3 R4 ; [+11]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K8 ["WillUpdate"]
       34 JUMPIFEQ                         R3 R4 ; [+6]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K9 ["Render"]
       39 JUMPIFNOTEQ                      R3 R4 ; [+20]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R6 R2 K6 ["lifecyclePhase"]
       44 GETTABLE                         R4 R5 R6
       45 GETTABLEKS                       R8 R2 K10 ["componentClass"]
       47 FASTCALL1                        TOSTRING R8 ; [+2]
       48 GETIMPORT                        R7 K12 [tostring]
       50 CALL                             R7 1 1
       51 NAMECALL                         R5 R4 K13 ["format"]
       53 CALL                             R5 2 1
       54 GETIMPORT                        R6 K15 [error]
       56 MOVE                             R7 R5
       57 LOADN                            R8 2
       58 CALL                             R6 2 0
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K16 ["WillUnmount"]
       63 JUMPIFNOTEQ                      R3 R4 ; [+2]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R4 R2 K17 ["pendingState"]
       68 LOADNIL                          R5
       69 FASTCALL1                        TYPEOF R1 ; [+3]
       70 MOVE                             R7 R1
       71 GETIMPORT                        R6 K19 [typeof]
       73 CALL                             R6 1 1
       74 JUMPIFNOTEQKS                    R6 K20 ["function"] ; [+14]
       76 MOVE                             R6 R1
       77 MOVE                             R7 R4
       78 JUMPIF                           R7 ; [+2]
       79 GETTABLEKS                       R7 R0 K21 ["state"]
       81 GETTABLEKS                       R8 R0 K22 ["props"]
       83 CALL                             R6 2 1
       84 MOVE                             R5 R6
       85 JUMPIFNOTEQKNIL                  R5 ; [+17]
       87 RETURN                           R0 0
       88 JUMP                             ; [+14]
       89 FASTCALL1                        TYPEOF R1 ; [+3]
       90 MOVE                             R7 R1
       91 GETIMPORT                        R6 K19 [typeof]
       93 CALL                             R6 1 1
       94 JUMPIFNOTEQKS                    R6 K23 ["table"] ; [+3]
       96 MOVE                             R5 R1
       97 JUMP                             ; [+5]
       98 GETIMPORT                        R6 K15 [error]
      100 LOADK                            R7 K24 ["Invalid argument to setState, expected function or table"]
      101 LOADN                            R8 2
      102 CALL                             R6 2 0
      103 LOADNIL                          R6
      104 JUMPIFEQKNIL                     R4 ; [+7]
      106 GETUPVAL                         R7 5
      107 MOVE                             R8 R4
      108 MOVE                             R9 R5
      109 CALL                             R7 2 1
      110 MOVE                             R6 R7
      111 JUMP                             ; [+8]
      112 GETUPVAL                         R7 5
      113 NEWTABLE                         R8 0 0
      115 GETTABLEKS                       R9 R0 K21 ["state"]
      117 MOVE                             R10 R5
      118 CALL                             R7 3 1
      119 MOVE                             R6 R7
      120 GETUPVAL                         R7 3
      121 GETTABLEKS                       R7 R7 K25 ["Init"]
      123 JUMPIFNOTEQ                      R3 R7 ; [+14]
      125 GETTABLEKS                       R9 R0 K22 ["props"]
      127 MOVE                             R10 R6
      128 NAMECALL                         R7 R0 K26 ["__getDerivedState"]
      130 CALL                             R7 3 1
      131 GETUPVAL                         R8 5
      132 MOVE                             R9 R6
      133 MOVE                             R10 R7
      134 CALL                             R8 2 1
      135 SETTABLEKS                       R8 R0 K21 ["state"]
      137 RETURN                           R0 0
      138 GETUPVAL                         R7 3
      139 GETTABLEKS                       R7 R7 K27 ["DidMount"]
      141 JUMPIFEQ                         R3 R7 ; [+11]
      143 GETUPVAL                         R7 3
      144 GETTABLEKS                       R7 R7 K28 ["DidUpdate"]
      146 JUMPIFEQ                         R3 R7 ; [+6]
      148 GETUPVAL                         R7 3
      149 GETTABLEKS                       R7 R7 K29 ["ReconcileChildren"]
      151 JUMPIFNOTEQ                      R3 R7 ; [+14]
      153 GETTABLEKS                       R9 R0 K22 ["props"]
      155 MOVE                             R10 R6
      156 NAMECALL                         R7 R0 K26 ["__getDerivedState"]
      158 CALL                             R7 3 1
      159 GETUPVAL                         R8 5
      160 MOVE                             R9 R6
      161 MOVE                             R10 R7
      162 CALL                             R8 2 1
      163 SETTABLEKS                       R8 R2 K17 ["pendingState"]
      165 RETURN                           R0 0
      166 GETUPVAL                         R7 3
      167 GETTABLEKS                       R7 R7 K30 ["Idle"]
      169 JUMPIFNOTEQ                      R3 R7 ; [+7]
      171 LOADNIL                          R9
      172 MOVE                             R10 R6
      173 NAMECALL                         R7 R0 K31 ["__update"]
      175 CALL                             R7 3 0
      176 RETURN                           R0 0
      177 GETUPVAL                         R7 4
      178 GETTABLEKS                       R7 R7 K32 ["default"]
      180 GETTABLEKS                       R11 R2 K10 ["componentClass"]
      182 FASTCALL1                        TOSTRING R11 ; [+2]
      183 GETIMPORT                        R10 K12 [tostring]
      185 CALL                             R10 1 1
      186 NAMECALL                         R8 R7 K13 ["format"]
      188 CALL                             R8 2 1
      189 GETIMPORT                        R9 K15 [error]
      191 MOVE                             R10 R8
      192 LOADN                            R11 2
      193 CALL                             R9 2 0
      194 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETTABLEKS                       R1 R1 K0 ["virtualNode"]
        4 GETTABLEKS                       R1 R1 K1 ["currentElement"]
        6 GETTABLEKS                       R1 R1 K2 ["source"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R2 ; [+22]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["of"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["StatefulComponentInstance"]
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
       26 GETUPVAL                         R3 3
       27 GETTABLE                         R2 R0 R3
       28 GETTABLEKS                       R2 R2 K5 ["virtualNode"]
       30 GETTABLEKS                       R3 R2 K6 ["context"]
       32 GETTABLE                         R4 R3 R1
       33 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__addContext`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 3
       20 GETTABLE                         R3 R0 R4
       21 GETTABLEKS                       R3 R3 K4 ["virtualNode"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["propValidation"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R0 R3
        7 GETTABLEKS                       R2 R2 K1 ["componentClass"]
        9 GETTABLEKS                       R2 R2 K2 ["validateProps"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+30]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["StatefulComponentClass"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__mount`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K1 ["of"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["VirtualNode"]
       28 JUMPIFEQ                         R5 R6 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 LOADK                            R5 K5 ["Expected arg #2 to be of type VirtualNode"]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R2 K6 ["currentElement"]
       36 GETTABLEKS                       R4 R2 K7 ["hostParent"]
       38 DUPTABLE                         R5 K13 [{"reconciler", "virtualNode", "componentClass", "lifecyclePhase", "pendingState"}]
       39 SETTABLEKS                       R1 R5 K8 ["reconciler"]
       41 SETTABLEKS                       R2 R5 K9 ["virtualNode"]
       43 SETTABLEKS                       R0 R5 K10 ["componentClass"]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K14 ["Init"]
       48 SETTABLEKS                       R6 R5 K11 ["lifecyclePhase"]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K12 ["pendingState"]
       53 NEWTABLE                         R6 2 0
       55 GETUPVAL                         R7 2
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R8 R8 K15 ["StatefulComponentInstance"]
       59 SETTABLE                         R8 R6 R7
       60 GETUPVAL                         R7 4
       61 SETTABLE                         R5 R6 R7
       62 FASTCALL2                        SETMETATABLE R6 R0 ; [+5]
       64 MOVE                             R8 R6
       65 MOVE                             R9 R0
       66 GETIMPORT                        R7 K17 [setmetatable]
       68 CALL                             R7 2 0
       69 SETTABLEKS                       R6 R2 K18 ["instance"]
       71 GETTABLEKS                       R7 R3 K19 ["props"]
       73 GETTABLEKS                       R8 R0 K20 ["defaultProps"]
       75 JUMPIFEQKNIL                     R8 ; [+9]
       77 GETUPVAL                         R8 5
       78 NEWTABLE                         R9 0 0
       80 GETTABLEKS                       R10 R0 K20 ["defaultProps"]
       82 MOVE                             R11 R7
       83 CALL                             R8 3 1
       84 MOVE                             R7 R8
       85 MOVE                             R10 R7
       86 NAMECALL                         R8 R6 K21 ["__validateProps"]
       88 CALL                             R8 2 0
       89 SETTABLEKS                       R7 R6 K19 ["props"]
       91 GETUPVAL                         R8 5
       92 NEWTABLE                         R9 0 0
       94 GETTABLEKS                       R10 R2 K22 ["legacyContext"]
       96 CALL                             R8 2 1
       97 SETTABLEKS                       R8 R6 K23 ["_context"]
       99 GETUPVAL                         R9 5
      100 NEWTABLE                         R10 0 0
      102 GETTABLEKS                       R13 R6 K19 ["props"]
      104 NEWTABLE                         R14 0 0
      106 NAMECALL                         R11 R6 K24 ["__getDerivedState"]
      108 CALL                             R11 3 -1
      109 CALL                             R9 -1 1
      110 SETTABLEKS                       R9 R6 K25 ["state"]
      112 GETTABLEKS                       R9 R6 K26 ["init"]
      114 JUMPIFEQKNIL                     R9 ; [+17]
      116 GETTABLEKS                       R11 R6 K19 ["props"]
      118 NAMECALL                         R9 R6 K26 ["init"]
      120 CALL                             R9 2 0
      121 GETUPVAL                         R9 5
      122 GETTABLEKS                       R10 R6 K25 ["state"]
      124 GETTABLEKS                       R13 R6 K19 ["props"]
      126 GETTABLEKS                       R14 R6 K25 ["state"]
      128 NAMECALL                         R11 R6 K24 ["__getDerivedState"]
      130 CALL                             R11 3 -1
      131 CALL                             R9 -1 0
      132 GETTABLEKS                       R9 R6 K23 ["_context"]
      134 SETTABLEKS                       R9 R2 K22 ["legacyContext"]
      136 GETUPVAL                         R9 3
      137 GETTABLEKS                       R9 R9 K27 ["Render"]
      139 SETTABLEKS                       R9 R5 K11 ["lifecyclePhase"]
      141 NAMECALL                         R9 R6 K28 ["render"]
      143 CALL                             R9 1 1
      144 GETUPVAL                         R10 3
      145 GETTABLEKS                       R10 R10 K29 ["ReconcileChildren"]
      147 SETTABLEKS                       R10 R5 K11 ["lifecyclePhase"]
      149 GETTABLEKS                       R10 R1 K30 ["updateVirtualNodeWithRenderResult"]
      151 MOVE                             R11 R2
      152 MOVE                             R12 R4
      153 MOVE                             R13 R9
      154 CALL                             R10 3 0
      155 GETTABLEKS                       R10 R6 K31 ["didMount"]
      157 JUMPIFEQKNIL                     R10 ; [+9]
      159 GETUPVAL                         R10 3
      160 GETTABLEKS                       R10 R10 K32 ["DidMount"]
      162 SETTABLEKS                       R10 R5 K11 ["lifecyclePhase"]
      164 NAMECALL                         R10 R6 K31 ["didMount"]
      166 CALL                             R10 1 0
      167 GETTABLEKS                       R10 R5 K12 ["pendingState"]
      169 JUMPIFEQKNIL                     R10 ; [+6]
      171 LOADNIL                          R12
      172 LOADNIL                          R13
      173 NAMECALL                         R10 R6 K33 ["__update"]
      175 CALL                             R10 3 0
      176 GETUPVAL                         R10 3
      177 GETTABLEKS                       R10 R10 K34 ["Idle"]
      179 SETTABLEKS                       R10 R5 K11 ["lifecyclePhase"]
      181 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["of"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["StatefulComponentInstance"]
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
       29 GETUPVAL                         R4 4
       30 GETTABLEKS                       R4 R4 K7 ["WillUnmount"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+48]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["StatefulComponentInstance"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Invalid use of `__update`"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 LOADB                            R4 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K1 ["of"]
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K4 ["Element"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["StatefulComponentInstance"]
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
       39 GETUPVAL                         R8 4
       40 GETTABLEKS                       R8 R8 K9 ["ShouldUpdate"]
       42 SETTABLEKS                       R8 R3 K10 ["lifecyclePhase"]
       44 MOVE                             R10 R1
       45 MOVE                             R11 R2
       46 NAMECALL                         R8 R0 K8 ["shouldUpdate"]
       48 CALL                             R8 3 1
       49 JUMPIF                           R8 ; [+7]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R9 R9 K11 ["Idle"]
       53 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
       55 LOADB                            R9 0
       56 RETURN                           R9 1
       57 GETTABLEKS                       R8 R0 K12 ["willUpdate"]
       59 JUMPIFEQKNIL                     R8 ; [+11]
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R8 R8 K13 ["WillUpdate"]
       64 SETTABLEKS                       R8 R3 K10 ["lifecyclePhase"]
       66 MOVE                             R10 R1
       67 MOVE                             R11 R2
       68 NAMECALL                         R8 R0 K12 ["willUpdate"]
       70 CALL                             R8 3 0
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R8 R8 K14 ["Render"]
       74 SETTABLEKS                       R8 R3 K10 ["lifecyclePhase"]
       76 SETTABLEKS                       R1 R0 K6 ["props"]
       78 SETTABLEKS                       R2 R0 K7 ["state"]
       80 GETTABLEKS                       R8 R4 K15 ["instance"]
       82 NAMECALL                         R8 R8 K16 ["render"]
       84 CALL                             R8 1 1
       85 GETUPVAL                         R9 4
       86 GETTABLEKS                       R9 R9 K17 ["ReconcileChildren"]
       88 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
       90 GETTABLEKS                       R9 R5 K18 ["updateVirtualNodeWithRenderResult"]
       92 MOVE                             R10 R4
       93 GETTABLEKS                       R11 R4 K19 ["hostParent"]
       95 MOVE                             R12 R8
       96 CALL                             R9 3 0
       97 GETTABLEKS                       R9 R0 K20 ["didUpdate"]
       99 JUMPIFEQKNIL                     R9 ; [+11]
      101 GETUPVAL                         R9 4
      102 GETTABLEKS                       R9 R9 K21 ["DidUpdate"]
      104 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
      106 MOVE                             R11 R6
      107 MOVE                             R12 R7
      108 NAMECALL                         R9 R0 K20 ["didUpdate"]
      110 CALL                             R9 3 0
      111 GETUPVAL                         R9 4
      112 GETTABLEKS                       R9 R9 K11 ["Idle"]
      114 SETTABLEKS                       R9 R3 K10 ["lifecyclePhase"]
      116 LOADB                            R9 1
      117 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["assign"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["ComponentLifecyclePhase"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Type"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["Symbol"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["invalidSetStateMessages"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K4 ["Parent"]
       52 GETTABLEKS                       R6 R6 K10 ["internalAssert"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K1 [require]
       57 GETIMPORT                        R7 K3 [script]
       59 GETTABLEKS                       R7 R7 K4 ["Parent"]
       61 GETTABLEKS                       R7 R7 K11 ["GlobalConfig"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R6 R6 K12 ["get"]
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
