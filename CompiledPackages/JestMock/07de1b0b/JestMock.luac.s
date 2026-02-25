PROTO_0:
        0 DUPTABLE                         R0 K4 [{"_mockState", "_mockConfigRegistry", "_invocationCallCounter", "_spyState"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_mockState"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["_mockConfigRegistry"]
        9 LOADN                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["_invocationCallCounter"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K5 ["new"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K3 ["_spyState"]
       18 GETUPVAL                         R3 1
       19 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K7 [setmetatable]
       24 CALL                             R1 2 0
       25 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_mockConfigRegistry"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+7]
        4 NAMECALL                         R3 R0 K1 ["_defaultMockConfig"]
        6 CALL                             R3 1 1
        7 MOVE                             R2 R3
        8 GETTABLEKS                       R3 R0 K0 ["_mockConfigRegistry"]
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_mockState"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+7]
        4 NAMECALL                         R3 R0 K1 ["_defaultMockState"]
        6 CALL                             R3 1 1
        7 MOVE                             R2 R3
        8 GETTABLEKS                       R3 R0 K0 ["_mockState"]
       10 SETTABLE                         R2 R3 R1
       11 GETTABLEKS                       R4 R2 K2 ["calls"]
       13 LENGTH                           R3 R4
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R4 R3 ; [+9]
       17 GETTABLEKS                       R4 R2 K2 ["calls"]
       19 GETTABLEKS                       R6 R2 K2 ["calls"]
       21 LENGTH                           R5 R6
       22 GETTABLE                         R3 R4 R5
       23 SETTABLEKS                       R3 R2 K3 ["lastCall"]
       25 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R1 K4 [{"mockImpl", "mockName", "specificMockImpls", "specificReturnValues"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["mockImpl"]
        4 LOADK                            R2 K5 ["jest.fn()"]
        5 SETTABLEKS                       R2 R1 K1 ["mockName"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["specificMockImpls"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R1 K3 ["specificReturnValues"]
       15 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K5 [{"calls", "contexts", "instances", "invocationCallOrder", "results"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["calls"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["contexts"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["instances"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["invocationCallOrder"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["results"]
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shift"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["specificMockImpls"]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["mockImpl"]
       12 JUMPIFNOT                        R1 ; [+8]
       13 MOVE                             R2 R1
       14 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K4 [unpack]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 -1
       20 RETURN                           R2 -1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K0 ["_ensureMockState"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 MOVE                             R5 R0
       13 NAMECALL                         R3 R3 K1 ["_ensureMockConfig"]
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R5 R2 K2 ["instances"]
       18 FASTCALL2                        TABLE_INSERT R5 R0 ; [+4]
       20 MOVE                             R6 R0
       21 GETIMPORT                        R4 K5 [table.insert]
       23 CALL                             R4 2 0
       24 GETTABLEKS                       R5 R2 K6 ["contexts"]
       26 GETTABLEN                        R6 R1 1
       27 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       29 GETIMPORT                        R4 K5 [table.insert]
       31 CALL                             R4 2 0
       32 LOADN                            R6 1
       33 LOADK                            R8 K7 ["#"]
       34 FASTCALL1                        SELECT_VARARG R8 ; [+3]
       35 GETIMPORT                        R7 K9 [select]
       37 GETVARARGS                       R9 -1
       38 CALL                             R7 -1 1
       39 MOVE                             R4 R7
       40 LOADN                            R5 1
       41 FORNPREP                         R4
       42 GETTABLE                         R7 R1 R6
       43 JUMPIFNOTEQKNIL                  R7 ; [+7]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K10 ["for_"]
       48 LOADK                            R8 K11 ["$$nil"]
       49 CALL                             R7 1 1
       50 SETTABLE                         R7 R1 R6
       51 FORNLOOP                         R4
       52 GETTABLEKS                       R5 R2 K12 ["calls"]
       54 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       56 MOVE                             R6 R1
       57 GETIMPORT                        R4 K5 [table.insert]
       59 CALL                             R4 2 0
       60 DUPTABLE                         R4 K15 [{"type", "value"}]
       61 LOADK                            R5 K16 ["incomplete"]
       62 SETTABLEKS                       R5 R4 K13 ["type"]
       64 LOADNIL                          R5
       65 SETTABLEKS                       R5 R4 K14 ["value"]
       67 GETTABLEKS                       R6 R2 K17 ["results"]
       69 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       71 MOVE                             R7 R4
       72 GETIMPORT                        R5 K5 [table.insert]
       74 CALL                             R5 2 0
       75 GETTABLEKS                       R6 R2 K18 ["invocationCallOrder"]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K19 ["_invocationCallCounter"]
       80 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       82 GETIMPORT                        R5 K5 [table.insert]
       84 CALL                             R5 2 0
       85 GETUPVAL                         R5 0
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R7 R8 K19 ["_invocationCallCounter"]
       89 ADDK                             R6 R7 K20 [1]
       90 SETTABLEKS                       R6 R5 K19 ["_invocationCallCounter"]
       92 GETIMPORT                        R5 K22 [pcall]
       94 NEWCLOSURE                       R6 P0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R3
       97 NEWTABLE                         R7 0 0
       99 GETVARARGS                       R8 -1
      100 SETLIST                          R7 R8 -1 [1]
      102 CALL                             R5 2 2
      103 JUMPIF                           R5 ; [+9]
      104 LOADK                            R7 K23 ["throw"]
      105 SETTABLEKS                       R7 R4 K13 ["type"]
      107 SETTABLEKS                       R6 R4 K14 ["value"]
      109 GETIMPORT                        R7 K25 [error]
      111 MOVE                             R8 R6
      112 CALL                             R7 1 0
      113 LOADK                            R7 K26 ["return"]
      114 SETTABLEKS                       R7 R4 K13 ["type"]
      116 SETTABLEKS                       R6 R4 K14 ["value"]
      118 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_ensureMockConfig"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R0 R1 K1 ["mockImpl"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 NAMECALL                         R3 R3 K0 ["_ensureMockState"]
        4 CALL                             R3 2 1
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_mockState"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 1
        7 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mockClear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["_mockConfigRegistry"]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R0 0
       11 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mockReset"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_ensureMockConfig"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R3 R1 K1 ["specificMockImpls"]
        7 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R2 K4 [table.insert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_ensureMockConfig"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R0 R1 K1 ["mockImpl"]
        7 GETUPVAL                         R2 1
        8 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mockImplementationOnce"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R1 R1 K0 ["_ensureMockConfig"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R0 R1 K1 ["mockName"]
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_ensureMockConfig"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R2 R0 K2 ["mockName"]
        7 ORK                              R1 R2 K1 ["jest.fn()"]
        8 RETURN                           R1 1

PROTO_22:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 RETURN                           R0 1

PROTO_23:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["function"] ; [+123]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 NEWTABLE                         R5 16 0
       10 DUPTABLE                         R6 K3 [{"__call"}]
       11 SETTABLEKS                       R3 R6 K2 ["__call"]
       13 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       15 GETIMPORT                        R4 K5 [setmetatable]
       17 CALL                             R4 2 1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K6 ["_isMockFunction"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R5 R4 K7 ["getMockImplementation"]
       26 FASTCALL1                        TYPEOF R2 ; [+3]
       27 MOVE                             R6 R2
       28 GETIMPORT                        R5 K9 [typeof]
       30 CALL                             R5 1 1
       31 JUMPIFNOTEQKS                    R5 K1 ["function"] ; [+7]
       33 GETTABLEKS                       R5 R0 K10 ["_spyState"]
       35 MOVE                             R7 R2
       36 NAMECALL                         R5 R5 K11 ["add"]
       38 CALL                             R5 2 0
       39 GETTABLEKS                       R5 R0 K12 ["_mockState"]
       41 GETTABLEKS                       R6 R0 K13 ["_defaultMockState"]
       43 CALL                             R6 0 1
       44 SETTABLE                         R6 R5 R4
       45 GETTABLEKS                       R5 R0 K14 ["_mockConfigRegistry"]
       47 GETTABLEKS                       R6 R0 K15 ["_defaultMockConfig"]
       49 CALL                             R6 0 1
       50 SETTABLE                         R6 R5 R4
       51 NEWTABLE                         R6 0 0
       53 DUPTABLE                         R7 K17 [{"__index"}]
       54 NEWCLOSURE                       R8 P2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R8 R7 K16 ["__index"]
       59 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       61 GETIMPORT                        R5 K5 [setmetatable]
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K18 ["mock"]
       66 NEWCLOSURE                       R5 P3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R5 R4 K19 ["mockClear"]
       71 NEWCLOSURE                       R5 P4
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R5 R4 K20 ["mockReset"]
       76 NEWCLOSURE                       R5 P5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R5 R4 K21 ["mockRestore"]
       81 NEWCLOSURE                       R5 P6
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R5 R4 K22 ["mockImplementationOnce"]
       86 NEWCLOSURE                       R5 P7
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R5 R4 K23 ["mockImplementation"]
       91 NEWCLOSURE                       R5 P8
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R5 R4 K24 ["mockReturnValueOnce"]
       95 NEWCLOSURE                       R5 P9
       96 CAPTURE                          VAL R4
       97 SETTABLEKS                       R5 R4 K25 ["mockReturnValue"]
       99 NEWCLOSURE                       R5 P10
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R5 R4 K26 ["mockReturnThis"]
      103 NEWCLOSURE                       R5 P11
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R5 R4 K27 ["mockName"]
      108 NEWCLOSURE                       R5 P12
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R5 R4 K28 ["getMockName"]
      113 NEWCLOSURE                       R5 P13
      114 CAPTURE                          VAL R4
      115 SETTABLEKS                       R5 R4 K29 ["new"]
      117 GETTABLEKS                       R5 R1 K30 ["mockImpl"]
      119 JUMPIFNOT                        R5 ; [+5]
      120 GETTABLEKS                       R5 R4 K23 ["mockImplementation"]
      122 GETTABLEKS                       R6 R1 K30 ["mockImpl"]
      124 CALL                             R5 1 0
      125 RETURN                           R4 1
      126 GETIMPORT                        R3 K32 [error]
      128 LOADK                            R4 K33 ["Call to _makeComponent with non-function"]
      129 CALL                             R3 1 0
      130 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R2 1
        4 RETURN                           R2 1

PROTO_25:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R3 R1 K3 ["_isMockFunction"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_26:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 FASTCALL1                        GETMETATABLE R2 ; [+2]
        3 GETIMPORT                        R1 K1 [getmetatable]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R0 R1 K2 ["__call"]
        8 GETUPVAL                         R1 0
        9 GETVARARGS                       R2 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_27:
        0 DUPTABLE                         R4 K2 [{"length", "type"}]
        1 LOADN                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["length"]
        4 LOADK                            R5 K3 ["function"]
        5 SETTABLEKS                       R5 R4 K1 ["type"]
        7 NAMECALL                         R2 R0 K4 ["_makeComponent"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETTABLEKS                       R3 R2 K5 ["mockImplementation"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 0
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 RETURN                           R2 2

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toJSBoolean"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 4
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 3
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 RETURN                           R0 0

PROTO_29:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["toJSBoolean"]
        3 MOVE                             R5 R3
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+7]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 NAMECALL                         R4 R0 K1 ["_spyOnProperty"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K3 [typeof]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K4 ["table"] ; [+17]
       20 GETIMPORT                        R4 K6 [error]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K7 ["new"]
       25 LOADK                            R6 K8 ["Cannot spyOn on a primitive value; %s given"]
       26 FASTCALL1                        TYPEOF R1 ; [+3]
       27 MOVE                             R9 R1
       28 GETIMPORT                        R8 K3 [typeof]
       30 CALL                             R8 1 1
       31 NAMECALL                         R6 R6 K9 ["format"]
       33 CALL                             R6 2 -1
       34 CALL                             R5 -1 -1
       35 CALL                             R4 -1 0
       36 GETUPVAL                         R4 2
       37 MOVE                             R6 R1
       38 NAMECALL                         R4 R4 K10 ["isMockGlobalLibrary"]
       40 CALL                             R4 2 1
       41 JUMPIFNOT                        R4 ; [+50]
       42 GETTABLEKS                       R4 R1 K11 ["_automocksRef"]
       44 GETTABLE                         R5 R4 R2
       45 FASTCALL1                        TYPEOF R5 ; [+3]
       46 MOVE                             R7 R5
       47 GETIMPORT                        R6 K3 [typeof]
       49 CALL                             R6 1 1
       50 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+4]
       52 GETTABLEKS                       R6 R5 K12 ["_isGlobalAutomockFn"]
       54 JUMPIF                           R6 ; [+22]
       55 GETIMPORT                        R6 K6 [error]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K7 ["new"]
       60 LOADK                            R8 K13 ["Cannot spy the %s property because it is not a function; %s given instead"]
       61 FASTCALL1                        TOSTRING R2 ; [+3]
       62 MOVE                             R11 R2
       63 GETIMPORT                        R10 K15 [tostring]
       65 CALL                             R10 1 1
       66 FASTCALL1                        TYPEOF R5 ; [+3]
       67 MOVE                             R12 R5
       68 GETIMPORT                        R11 K3 [typeof]
       70 CALL                             R11 1 1
       71 NAMECALL                         R8 R8 K9 ["format"]
       73 CALL                             R8 3 -1
       74 CALL                             R7 -1 -1
       75 CALL                             R6 -1 0
       76 JUMP                             ; [+12]
       77 GETTABLEKS                       R6 R5 K16 ["_maybeMock"]
       79 JUMPIFNOTEQKNIL                  R6 ; [+9]
       81 GETIMPORT                        R6 K6 [error]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R7 R8 K7 ["new"]
       86 LOADK                            R8 K17 ["globalEnv has not been initialised by Jest here"]
       87 CALL                             R7 1 -1
       88 CALL                             R6 -1 0
       89 GETTABLEKS                       R6 R5 K16 ["_maybeMock"]
       91 RETURN                           R6 1
       92 GETTABLE                         R4 R1 R2
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       96 MOVE                             R8 R4
       97 NAMECALL                         R6 R0 K18 ["isMockFunction"]
       99 CALL                             R6 2 -1
      100 CALL                             R5 -1 1
      101 JUMPIF                           R5 ; [+60]
      102 FASTCALL1                        TYPEOF R4 ; [+3]
      103 MOVE                             R6 R4
      104 GETIMPORT                        R5 K3 [typeof]
      106 CALL                             R5 1 1
      107 JUMPIFEQKS                       R5 K19 ["function"] ; [+22]
      109 GETIMPORT                        R5 K6 [error]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R6 R7 K7 ["new"]
      114 LOADK                            R7 K13 ["Cannot spy the %s property because it is not a function; %s given instead"]
      115 FASTCALL1                        TOSTRING R2 ; [+3]
      116 MOVE                             R10 R2
      117 GETIMPORT                        R9 K15 [tostring]
      119 CALL                             R9 1 1
      120 FASTCALL1                        TYPEOF R4 ; [+3]
      121 MOVE                             R11 R4
      122 GETIMPORT                        R10 K3 [typeof]
      124 CALL                             R10 1 1
      125 NAMECALL                         R7 R7 K9 ["format"]
      127 CALL                             R7 3 -1
      128 CALL                             R6 -1 -1
      129 CALL                             R5 -1 0
      130 FASTCALL2                        RAWGET R1 R2 ; [+5]
      132 MOVE                             R7 R1
      133 MOVE                             R8 R2
      134 GETIMPORT                        R6 K21 [rawget]
      136 CALL                             R6 2 1
      137 JUMPIFNOTEQKNIL                  R6 ; [+2]
      139 LOADB                            R5 0 +1
      140 LOADB                            R5 1
      141 LOADNIL                          R6
      142 DUPTABLE                         R9 K23 [{"type"}]
      143 LOADK                            R10 K19 ["function"]
      144 SETTABLEKS                       R10 R9 K22 ["type"]
      146 NEWCLOSURE                       R10 P0
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R4
      152 NAMECALL                         R7 R0 K24 ["_makeComponent"]
      154 CALL                             R7 3 1
      155 MOVE                             R6 R7
      156 SETTABLE                         R6 R1 R2
      157 GETTABLEKS                       R7 R6 K25 ["mockImplementation"]
      159 NEWCLOSURE                       R8 P1
      160 CAPTURE                          VAL R4
      161 CALL                             R7 1 0
      162 GETTABLE                         R5 R1 R2
      163 RETURN                           R5 1

PROTO_31:
        0 GETIMPORT                        R4 K1 [error]
        2 LOADK                            R5 K2 ["spyOn with accessors is not currently supported"]
        3 CALL                             R4 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockState"]
        4 RETURN                           R0 0

PROTO_33:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockConfigRegistry"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_mockState"]
        8 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_spyState"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 CALL                             R6 0 0
        7 FORGLOOP                         R1 2 ; [-3]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K0 ["_spyState"]
       15 RETURN                           R0 0

PROTO_35:
        0 RETURN                           R1 1

PROTO_36:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_38:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["_isGlobalAutomockFn"]
        6 JUMPIFNOT                        R7 ; [+26]
        7 GETTABLE                         R7 R1 R5
        8 LOADNIL                          R8
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          REF R8
       11 CAPTURE                          VAL R7
       12 GETUPVAL                         R10 0
       13 DUPTABLE                         R12 K2 [{"type"}]
       14 LOADK                            R13 K3 ["function"]
       15 SETTABLEKS                       R13 R12 K1 ["type"]
       17 MOVE                             R13 R9
       18 NAMECALL                         R10 R10 K4 ["_makeComponent"]
       20 CALL                             R10 3 1
       21 MOVE                             R8 R10
       22 GETTABLEKS                       R10 R8 K5 ["mockImplementation"]
       24 NEWCLOSURE                       R11 P1
       25 CAPTURE                          VAL R7
       26 CALL                             R10 1 0
       27 SETTABLEKS                       R7 R6 K6 ["_maybeUnmocked"]
       29 SETTABLEKS                       R8 R6 K7 ["_maybeMock"]
       31 CLOSEUPVALS                      R8
       32 JUMP                             ; [+4]
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R6
       35 GETTABLE                         R9 R1 R5
       36 CALL                             R7 2 0
       37 FORGLOOP                         R2 2 ; [-34]
       39 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R5 R1 K0 ["currentlyMocked"]
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        5 LOADK                            R5 K1 ["Attempt to mock globals while they're already mocked"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R1 K0 ["currentlyMocked"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 MOVE                             R4 R3
       16 GETTABLEKS                       R5 R1 K4 ["automocks"]
       18 MOVE                             R6 R2
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_40:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["_isGlobalAutomockFn"]
        6 JUMPIFNOT                        R6 ; [+7]
        7 LOADNIL                          R6
        8 SETTABLEKS                       R6 R5 K1 ["_maybeUnmocked"]
       10 LOADNIL                          R6
       11 SETTABLEKS                       R6 R5 K2 ["_maybeMock"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-14]
       19 RETURN                           R0 0

PROTO_41:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["currentlyMocked"]
        3 DUPCLOSURE                       R2 K1 [PROTO_40]
        4 CAPTURE                          VAL R2
        5 MOVE                             R3 R2
        6 GETTABLEKS                       R4 R1 K2 ["automocks"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["fn"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_43:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["spyOn"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["mocked"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Array"]
       12 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       14 GETTABLEKS                       R5 R2 K8 ["Error"]
       16 GETTABLEKS                       R6 R2 K9 ["Set"]
       18 GETTABLEKS                       R7 R2 K10 ["Symbol"]
       20 GETIMPORT                        R8 K4 [require]
       22 GETTABLEKS                       R9 R1 K11 ["JestMockGenv"]
       24 CALL                             R8 1 1
       25 GETTABLEKS                       R9 R8 K12 ["GlobalMocker"]
       27 NEWTABLE                         R10 4 0
       29 NEWTABLE                         R11 32 0
       31 SETTABLEKS                       R11 R11 K13 ["__index"]
       33 DUPCLOSURE                       R12 K14 [PROTO_0]
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R11
       36 SETTABLEKS                       R12 R11 K15 ["new"]
       38 DUPCLOSURE                       R12 K16 [PROTO_1]
       39 SETTABLEKS                       R12 R11 K17 ["_ensureMockConfig"]
       41 DUPCLOSURE                       R12 K18 [PROTO_2]
       42 SETTABLEKS                       R12 R11 K19 ["_ensureMockState"]
       44 DUPCLOSURE                       R12 K20 [PROTO_3]
       45 SETTABLEKS                       R12 R11 K21 ["_defaultMockConfig"]
       47 DUPCLOSURE                       R12 K22 [PROTO_4]
       48 SETTABLEKS                       R12 R11 K23 ["_defaultMockState"]
       50 DUPCLOSURE                       R12 K24 [PROTO_23]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R12 R11 K25 ["_makeComponent"]
       55 DUPCLOSURE                       R12 K26 [PROTO_24]
       56 SETTABLEKS                       R12 R11 K27 ["_createMockFunction"]
       58 DUPCLOSURE                       R12 K28 [PROTO_25]
       59 SETTABLEKS                       R12 R11 K29 ["isMockFunction"]
       61 DUPCLOSURE                       R12 K30 [PROTO_27]
       62 SETTABLEKS                       R12 R11 K31 ["fn"]
       64 DUPCLOSURE                       R12 K32 [PROTO_30]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R12 R11 K33 ["spyOn"]
       70 DUPCLOSURE                       R12 K34 [PROTO_31]
       71 SETTABLEKS                       R12 R11 K35 ["_spyOnProperty"]
       73 DUPCLOSURE                       R12 K36 [PROTO_32]
       74 SETTABLEKS                       R12 R11 K37 ["clearAllMocks"]
       76 DUPCLOSURE                       R12 K38 [PROTO_33]
       77 SETTABLEKS                       R12 R11 K39 ["resetAllMocks"]
       79 DUPCLOSURE                       R12 K40 [PROTO_34]
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R12 R11 K41 ["restoreAllMocks"]
       83 DUPCLOSURE                       R12 K42 [PROTO_35]
       84 SETTABLEKS                       R12 R11 K43 ["mocked"]
       86 DUPCLOSURE                       R12 K44 [PROTO_39]
       87 SETTABLEKS                       R12 R11 K45 ["mockGlobals"]
       89 DUPCLOSURE                       R12 K46 [PROTO_41]
       90 SETTABLEKS                       R12 R11 K47 ["unmockGlobals"]
       92 SETTABLEKS                       R11 R10 K48 ["ModuleMocker"]
       94 GETTABLEKS                       R12 R11 K15 ["new"]
       96 CALL                             R12 0 1
       97 DUPCLOSURE                       R13 K49 [PROTO_42]
       98 CAPTURE                          VAL R12
       99 SETTABLEKS                       R13 R10 K31 ["fn"]
      101 DUPCLOSURE                       R14 K50 [PROTO_43]
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R14 R10 K33 ["spyOn"]
      105 DUPCLOSURE                       R15 K51 [PROTO_44]
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R15 R10 K43 ["mocked"]
      109 RETURN                           R10 1
