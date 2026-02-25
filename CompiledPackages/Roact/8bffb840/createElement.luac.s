PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["typeChecks"]
        3 JUMPIFNOT                        R3 ; [+46]
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       10 LOADK                            R5 K1 ["`component` is required"]
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 LOADB                            R4 1
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K5 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["table"] ; [+5]
       22 JUMPIFEQKNIL                     R1 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       28 LOADK                            R5 K7 ["`props` must be a table or nil"]
       29 GETIMPORT                        R3 K3 [assert]
       31 CALL                             R3 2 0
       32 LOADB                            R4 1
       33 FASTCALL1                        TYPEOF R2 ; [+3]
       34 MOVE                             R6 R2
       35 GETIMPORT                        R5 K5 [typeof]
       37 CALL                             R5 1 1
       38 JUMPIFEQKS                       R5 K6 ["table"] ; [+5]
       40 JUMPIFEQKNIL                     R2 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       46 LOADK                            R5 K8 ["`children` must be a table or nil"]
       47 GETIMPORT                        R3 K3 [assert]
       49 CALL                             R3 2 0
       50 JUMPIFNOTEQKNIL                  R1 ; [+3]
       52 NEWTABLE                         R1 0 0
       54 JUMPIFEQKNIL                     R2 ; [+12]
       56 GETUPVAL                         R4 1
       57 GETTABLE                         R3 R1 R4
       58 JUMPIFEQKNIL                     R3 ; [+6]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R3 R4 K9 ["warnOnce"]
       63 LOADK                            R4 K10 ["The prop `Roact.Children` was defined but was overriden by the third parameter to createElement!\nThis can happen when a component passes props through to a child element but also uses the `children` argument:\n\n\tRoact.createElement(\"Frame\", passedProps, {\n\t\tchild = ...\n\t})\n\nInstead, consider using a utility function to merge tables of children together:\n\n\tlocal children = mergeTables(passedProps[Roact.Children], {\n\t\tchild = ...\n\t})\n\n\tlocal fullProps = mergeTables(passedProps, {\n\t\t[Roact.Children] = children\n\t})\n\n\tRoact.createElement(\"Frame\", fullProps)"]
       64 CALL                             R3 1 0
       65 GETUPVAL                         R3 1
       66 SETTABLE                         R2 R1 R3
       67 GETUPVAL                         R4 3
       68 GETTABLEKS                       R3 R4 K11 ["fromComponent"]
       70 MOVE                             R4 R0
       71 CALL                             R3 1 1
       72 NEWTABLE                         R4 4 0
       74 GETUPVAL                         R5 4
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R6 R7 K12 ["Element"]
       78 SETTABLE                         R6 R4 R5
       79 GETUPVAL                         R5 3
       80 SETTABLE                         R3 R4 R5
       81 SETTABLEKS                       R0 R4 K13 ["component"]
       83 SETTABLEKS                       R1 R4 K14 ["props"]
       85 GETUPVAL                         R6 0
       86 GETTABLEKS                       R5 R6 K15 ["elementTracing"]
       88 JUMPIFNOT                        R5 ; [+11]
       89 GETIMPORT                        R5 K18 [debug.traceback]
       91 LOADK                            R6 K19 [""]
       92 LOADN                            R7 2
       93 CALL                             R5 2 1
       94 LOADN                            R7 2
       95 NAMECALL                         R5 R5 K20 ["sub"]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K21 ["source"]
      100 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["PropMarkers"]
        9 GETTABLEKS                       R1 R2 K6 ["Children"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K7 ["ElementKind"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R5 K3 [script]
       25 GETTABLEKS                       R4 R5 K4 ["Parent"]
       27 GETTABLEKS                       R3 R4 K8 ["Logging"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R5 R6 K4 ["Parent"]
       36 GETTABLEKS                       R4 R5 K9 ["Type"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R5 K1 [require]
       41 GETIMPORT                        R8 K3 [script]
       43 GETTABLEKS                       R7 R8 K4 ["Parent"]
       45 GETTABLEKS                       R6 R7 K10 ["GlobalConfig"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R4 R5 K11 ["get"]
       50 CALL                             R4 0 1
       51 DUPCLOSURE                       R5 K12 [PROTO_0]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 RETURN                           R5 1
