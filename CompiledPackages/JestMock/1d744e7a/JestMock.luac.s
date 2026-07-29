PROTO_0:
        0 LOADB                            R2 1
        1 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K9 [{[1], ["_mocksOnObjectsMap"], ["_mockState"], ["_mockConfigRegistry"], ["_invocationCallCounter"] = 1, ["_spyState"], ["dataModelMocker"], ["_dataModelProtector"]}]
        1 SETTABLEKS                       R0 R1 K0 ["_projectConfig"]
        3 NEWTABLE                         R3 0 0
        5 DUPTABLE                         R4 K12 [{["__mode"] = "k"}]
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K14 [setmetatable]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K1 ["_mocksOnObjectsMap"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K2 ["_mockState"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K3 ["_mockConfigRegistry"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K15 ["new"]
       24 CALL                             R2 0 1
       25 SETTABLEKS                       R2 R1 K6 ["_spyState"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K15 ["new"]
       30 CALL                             R2 0 1
       31 SETTABLEKS                       R2 R1 K7 ["dataModelMocker"]
       33 DUPCLOSURE                       R2 K16 [PROTO_0]
       34 SETTABLEKS                       R2 R1 K8 ["_dataModelProtector"]
       36 GETUPVAL                         R4 2
       37 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K14 [setmetatable]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_mockConfigRegistry"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+7]
        4 NAMECALL                         R3 R0 K1 ["_defaultMockConfig"]
        6 CALL                             R3 1 1
        7 MOVE                             R2 R3
        8 GETTABLEKS                       R3 R0 K0 ["_mockConfigRegistry"]
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
        0 DUPTABLE                         R1 K6 [{[1] = , ["mockName"] = "jest.fn()", ["specificMockImpls"], ["specificReturnValues"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K4 ["specificMockImpls"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K5 ["specificReturnValues"]
        9 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shift"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["specificMockImpls"]
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

PROTO_7:
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
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K10 ["for_"]
       48 LOADK                            R8 K11 ["$$nil"]
       49 CALL                             R7 1 1
       50 SETTABLE                         R7 R1 R6
       51 FORNLOOP                         R4
       52 GETTABLEKS                       R5 R2 K12 ["calls"]
       54 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       56 MOVE                             R6 R1
       57 GETIMPORT                        R4 K5 [table.insert]
       59 CALL                             R4 2 0
       60 DUPTABLE                         R4 K17 [{["type"] = "incomplete", ["value"] = }]
       61 GETTABLEKS                       R6 R2 K18 ["results"]
       63 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       65 MOVE                             R7 R4
       66 GETIMPORT                        R5 K5 [table.insert]
       68 CALL                             R5 2 0
       69 GETTABLEKS                       R6 R2 K19 ["invocationCallOrder"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K20 ["_invocationCallCounter"]
       74 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       76 GETIMPORT                        R5 K5 [table.insert]
       78 CALL                             R5 2 0
       79 GETUPVAL                         R5 0
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K20 ["_invocationCallCounter"]
       83 ADDK                             R6 R7 K21 [1]
       84 SETTABLEKS                       R6 R5 K20 ["_invocationCallCounter"]
       86 GETIMPORT                        R5 K23 [pcall]
       88 NEWCLOSURE                       R6 P0
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          VAL R3
       91 NEWTABLE                         R7 0 0
       93 GETVARARGS                       R8 -1
       94 SETLIST                          R7 R8 -1 [1]
       96 CALL                             R5 2 2
       97 JUMPIF                           R5 ; [+9]
       98 LOADK                            R7 K24 ["throw"]
       99 SETTABLEKS                       R7 R4 K13 ["type"]
      101 SETTABLEKS                       R6 R4 K15 ["value"]
      103 GETIMPORT                        R7 K26 [error]
      105 MOVE                             R8 R6
      106 CALL                             R7 1 0
      107 LOADK                            R7 K27 ["return"]
      108 SETTABLEKS                       R7 R4 K13 ["type"]
      110 SETTABLEKS                       R6 R4 K15 ["value"]
      112 RETURN                           R6 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_ensureMockConfig"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R0 R0 K1 ["mockImpl"]
        7 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 NAMECALL                         R3 R3 K0 ["_ensureMockState"]
        4 CALL                             R3 2 1
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mockState"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 1
        7 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockClear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["_mockConfigRegistry"]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R0 0
       11 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockReset"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["_ensureMockConfig"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R0 R1 K1 ["mockImpl"]
        7 GETUPVAL                         R2 1
        8 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mockImplementationOnce"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R1 R1 K0 ["_ensureMockConfig"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R0 R1 K1 ["mockName"]
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_ensureMockConfig"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R2 R0 K2 ["mockName"]
        7 ORK                              R1 R2 K1 ["jest.fn()"]
        8 RETURN                           R1 1

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 RETURN                           R0 1

PROTO_24:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["function"] ; [+127]
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
      125 MOVE                             R5 R4
      126 NEWCLOSURE                       R6 P14
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R4
      129 RETURN                           R5 2
      130 GETIMPORT                        R3 K32 [error]
      132 LOADK                            R4 K33 ["Call to _makeComponent with non-function"]
      133 CALL                             R3 1 0
      134 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R2 1
        4 RETURN                           R2 1

PROTO_27:
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

PROTO_28:
        0 DUPTABLE                         R4 K4 [{[1] = 0, ["type"] = "function"}]
        1 NAMECALL                         R2 R0 K5 ["_makeComponent"]
        3 CALL                             R2 2 2
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R4 R2 K6 ["mockImplementation"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 0
        9 RETURN                           R2 2

PROTO_29:
        0 SETTABLEKS                       R1 R0 K0 ["_dataModelProtector"]
        2 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_31:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["original"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["original"]
        9 GETVARARGS                       R3 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 JUMPIFNOT                        R3 ; [+2]
        4 GETUPVAL                         R2 3
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 0

PROTO_33:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_34:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["__call"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_35:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        3 MOVE                             R5 R3
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+7]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 NAMECALL                         R4 R0 K1 ["_spyOnProperty"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1
       13 GETTABLEKS                       R4 R0 K2 ["_projectConfig"]
       15 GETTABLEKS                       R6 R0 K3 ["_mocksOnObjectsMap"]
       17 GETTABLE                         R5 R6 R1
       18 JUMPIFNOTEQKNIL                  R5 ; [+6]
       20 NEWTABLE                         R5 0 0
       22 GETTABLEKS                       R6 R0 K3 ["_mocksOnObjectsMap"]
       24 SETTABLE                         R5 R6 R1
       25 GETTABLEKS                       R6 R0 K4 ["dataModelMocker"]
       27 MOVE                             R8 R1
       28 NAMECALL                         R6 R6 K5 ["intoProxy"]
       30 CALL                             R6 2 1
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R8 R1
       33 GETIMPORT                        R7 K7 [typeof]
       35 CALL                             R7 1 1
       36 JUMPIFEQKS                       R7 K8 ["Instance"] ; [+3]
       38 JUMPIFEQKNIL                     R6 ; [+81]
       40 GETTABLEKS                       R7 R4 K9 ["mockDataModel"]
       42 JUMPIF                           R7 ; [+9]
       43 GETIMPORT                        R7 K11 [error]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K12 ["new"]
       48 LOADK                            R9 K13 ["Can't spy on instances - the `mockDataModel` setting is not enabled."]
       49 CALL                             R8 1 -1
       50 CALL                             R7 -1 0
       51 JUMP                             ; [+40]
       52 FASTCALL1                        TYPEOF R2 ; [+3]
       53 MOVE                             R8 R2
       54 GETIMPORT                        R7 K7 [typeof]
       56 CALL                             R7 1 1
       57 JUMPIFEQKS                       R7 K14 ["string"] ; [+10]
       59 GETIMPORT                        R7 K11 [error]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K12 ["new"]
       64 LOADK                            R9 K15 ["Method names must be strings when spying on instances."]
       65 CALL                             R8 1 -1
       66 CALL                             R7 -1 0
       67 JUMP                             ; [+24]
       68 JUMPIFEQKNIL                     R6 ; [+8]
       70 GETTABLEKS                       R7 R0 K16 ["_dataModelProtector"]
       72 GETTABLEKS                       R8 R6 K17 ["original"]
       74 MOVE                             R9 R2
       75 CALL                             R7 2 1
       76 JUMPIF                           R7 ; [+15]
       77 GETIMPORT                        R7 K11 [error]
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R8 R8 K12 ["new"]
       82 LOADK                            R10 K18 ["Can't spy on %*:%*() because it is not mockable."]
       83 GETTABLEKS                       R12 R1 K19 ["Name"]
       85 MOVE                             R13 R2
       86 NAMECALL                         R10 R10 K20 ["format"]
       88 CALL                             R10 3 1
       89 MOVE                             R9 R10
       90 CALL                             R8 1 -1
       91 CALL                             R7 -1 0
       92 GETTABLE                         R7 R5 R2
       93 JUMPIFNOTEQKNIL                  R7 ; [+24]
       95 LOADNIL                          R7
       96 DUPTABLE                         R10 K23 [{["type"] = "function"}]
       97 NEWCLOSURE                       R11 P0
       98 CAPTURE                          REF R7
       99 NAMECALL                         R8 R0 K24 ["_makeComponent"]
      101 CALL                             R8 3 2
      102 GETTABLEKS                       R10 R6 K25 ["controls"]
      104 MOVE                             R12 R2
      105 MOVE                             R13 R9
      106 NAMECALL                         R10 R10 K26 ["mockMethod"]
      108 CALL                             R10 3 1
      109 MOVE                             R7 R10
      110 SETTABLE                         R8 R5 R2
      111 GETTABLEKS                       R10 R8 K27 ["mockImplementation"]
      113 NEWCLOSURE                       R11 P1
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R2
      116 CALL                             R10 1 0
      117 CLOSEUPVALS                      R7
      118 GETTABLE                         R7 R5 R2
      119 RETURN                           R7 1
      120 GETUPVAL                         R7 2
      121 MOVE                             R9 R1
      122 NAMECALL                         R7 R7 K28 ["isMockGlobalLibrary"]
      124 CALL                             R7 2 1
      125 JUMPIFNOT                        R7 ; [+50]
      126 GETTABLEKS                       R7 R1 K29 ["_automocksRef"]
      128 GETTABLE                         R8 R7 R2
      129 FASTCALL1                        TYPEOF R8 ; [+3]
      130 MOVE                             R10 R8
      131 GETIMPORT                        R9 K7 [typeof]
      133 CALL                             R9 1 1
      134 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+4]
      136 GETTABLEKS                       R9 R8 K31 ["_isGlobalAutomockFn"]
      138 JUMPIF                           R9 ; [+22]
      139 GETIMPORT                        R9 K11 [error]
      141 GETUPVAL                         R10 1
      142 GETTABLEKS                       R10 R10 K12 ["new"]
      144 LOADK                            R11 K32 ["Cannot spy the %s property because it is not a function; %s given instead"]
      145 FASTCALL1                        TOSTRING R2 ; [+3]
      146 MOVE                             R14 R2
      147 GETIMPORT                        R13 K34 [tostring]
      149 CALL                             R13 1 1
      150 FASTCALL1                        TYPEOF R8 ; [+3]
      151 MOVE                             R15 R8
      152 GETIMPORT                        R14 K7 [typeof]
      154 CALL                             R14 1 1
      155 NAMECALL                         R11 R11 K20 ["format"]
      157 CALL                             R11 3 -1
      158 CALL                             R10 -1 -1
      159 CALL                             R9 -1 0
      160 JUMP                             ; [+12]
      161 GETTABLEKS                       R9 R8 K35 ["_maybeMock"]
      163 JUMPIFNOTEQKNIL                  R9 ; [+9]
      165 GETIMPORT                        R9 K11 [error]
      167 GETUPVAL                         R10 1
      168 GETTABLEKS                       R10 R10 K12 ["new"]
      170 LOADK                            R11 K36 ["globalEnv has not been initialised by Jest here"]
      171 CALL                             R10 1 -1
      172 CALL                             R9 -1 0
      173 GETTABLEKS                       R9 R8 K35 ["_maybeMock"]
      175 RETURN                           R9 1
      176 FASTCALL1                        TYPEOF R1 ; [+3]
      177 MOVE                             R8 R1
      178 GETIMPORT                        R7 K7 [typeof]
      180 CALL                             R7 1 1
      181 JUMPIFNOTEQKS                    R7 K30 ["table"] ; [+146]
      183 GETTABLE                         R7 R5 R2
      184 JUMPIFNOTEQKNIL                  R7 ; [+141]
      186 GETTABLE                         R7 R1 R2
      187 FASTCALL2                        RAWGET R1 R2 ; [+5]
      189 MOVE                             R10 R1
      190 MOVE                             R11 R2
      191 GETIMPORT                        R9 K38 [rawget]
      193 CALL                             R9 2 1
      194 JUMPIFNOTEQKNIL                  R9 ; [+2]
      196 LOADB                            R8 0 +1
      197 LOADB                            R8 1
      198 LOADNIL                          R9
      199 FASTCALL1                        TYPEOF R7 ; [+3]
      200 MOVE                             R11 R7
      201 GETIMPORT                        R10 K7 [typeof]
      203 CALL                             R10 1 1
      204 JUMPIFNOTEQKS                    R10 K30 ["table"] ; [+18]
      206 FASTCALL1                        GETMETATABLE R7 ; [+3]
      207 MOVE                             R11 R7
      208 GETIMPORT                        R10 K40 [getmetatable]
      210 CALL                             R10 1 1
      211 FASTCALL1                        TYPEOF R10 ; [+3]
      212 MOVE                             R12 R10
      213 GETIMPORT                        R11 K7 [typeof]
      215 CALL                             R11 1 1
      216 JUMPIFNOTEQKS                    R11 K30 ["table"] ; [+6]
      218 GETTABLEKS                       R11 R10 K41 ["__call"]
      220 JUMPIFEQKNIL                     R11 ; [+2]
      222 MOVE                             R9 R10
      223 DUPTABLE                         R12 K23 [{["type"] = "function"}]
      224 NEWCLOSURE                       R13 P2
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R7
      229 NAMECALL                         R10 R0 K24 ["_makeComponent"]
      231 CALL                             R10 3 2
      232 FASTCALL1                        TYPEOF R7 ; [+3]
      233 MOVE                             R13 R7
      234 GETIMPORT                        R12 K7 [typeof]
      236 CALL                             R12 1 1
      237 JUMPIFNOTEQKS                    R12 K22 ["function"] ; [+15]
      239 GETTABLEKS                       R13 R4 K42 ["oldFunctionSpying"]
      241 JUMPIFNOT                        R13 ; [+2]
      242 MOVE                             R12 R10
      243 JUMP                             ; [+1]
      244 MOVE                             R12 R11
      245 SETTABLE                         R12 R1 R2
      246 SETTABLE                         R10 R5 R2
      247 GETTABLEKS                       R12 R10 K27 ["mockImplementation"]
      249 NEWCLOSURE                       R13 P3
      250 CAPTURE                          VAL R7
      251 CALL                             R12 1 0
      252 JUMP                             ; [+72]
      253 JUMPIFEQKNIL                     R9 ; [+50]
      255 GETIMPORT                        R12 K44 [pcall]
      257 GETIMPORT                        R13 K46 [table.clone]
      259 MOVE                             R14 R7
      260 CALL                             R12 2 2
      261 JUMPIF                           R12 ; [+21]
      262 GETIMPORT                        R14 K11 [error]
      264 GETUPVAL                         R15 1
      265 GETTABLEKS                       R15 R15 K12 ["new"]
      267 LOADK                            R16 K47 ["Cannot spy the %s property because it cannot be cloned. (%s)"]
      268 FASTCALL1                        TOSTRING R2 ; [+3]
      269 MOVE                             R19 R2
      270 GETIMPORT                        R18 K34 [tostring]
      272 CALL                             R18 1 1
      273 LOADK                            R22 K48 ["protected metatable"]
      274 NAMECALL                         R20 R13 K49 ["match"]
      276 CALL                             R20 2 1
      277 OR                               R19 R20 R13
      278 NAMECALL                         R16 R16 K20 ["format"]
      280 CALL                             R16 3 -1
      281 CALL                             R15 -1 -1
      282 CALL                             R14 -1 0
      283 GETIMPORT                        R14 K46 [table.clone]
      285 MOVE                             R15 R9
      286 CALL                             R14 1 1
      287 SETTABLEKS                       R11 R14 K41 ["__call"]
      289 FASTCALL2                        SETMETATABLE R13 R14 ; [+5]
      291 MOVE                             R16 R13
      292 MOVE                             R17 R14
      293 GETIMPORT                        R15 K51 [setmetatable]
      295 CALL                             R15 2 1
      296 SETTABLE                         R15 R1 R2
      297 SETTABLE                         R10 R5 R2
      298 GETTABLEKS                       R15 R10 K27 ["mockImplementation"]
      300 NEWCLOSURE                       R16 P4
      301 CAPTURE                          REF R9
      302 CALL                             R15 1 0
      303 JUMP                             ; [+21]
      304 GETIMPORT                        R12 K11 [error]
      306 GETUPVAL                         R13 1
      307 GETTABLEKS                       R13 R13 K12 ["new"]
      309 LOADK                            R14 K52 ["Cannot spy the %s property because it is not a function or callable table; %s given instead"]
      310 FASTCALL1                        TOSTRING R2 ; [+3]
      311 MOVE                             R17 R2
      312 GETIMPORT                        R16 K34 [tostring]
      314 CALL                             R16 1 1
      315 FASTCALL1                        TYPEOF R7 ; [+3]
      316 MOVE                             R18 R7
      317 GETIMPORT                        R17 K7 [typeof]
      319 CALL                             R17 1 1
      320 NAMECALL                         R14 R14 K20 ["format"]
      322 CALL                             R14 3 -1
      323 CALL                             R13 -1 -1
      324 CALL                             R12 -1 0
      325 CLOSEUPVALS                      R9
      326 GETTABLE                         R7 R5 R2
      327 RETURN                           R7 1
      328 GETIMPORT                        R7 K11 [error]
      330 GETUPVAL                         R8 1
      331 GETTABLEKS                       R8 R8 K12 ["new"]
      333 LOADK                            R9 K53 ["Cannot spyOn on a primitive value; %s given"]
      334 FASTCALL1                        TYPEOF R1 ; [+3]
      335 MOVE                             R12 R1
      336 GETIMPORT                        R11 K7 [typeof]
      338 CALL                             R11 1 1
      339 NAMECALL                         R9 R9 K20 ["format"]
      341 CALL                             R9 2 -1
      342 CALL                             R8 -1 -1
      343 CALL                             R7 -1 0
      344 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R4 K1 [error]
        2 LOADK                            R5 K2 ["spyOn with accessors is not currently supported"]
        3 CALL                             R4 1 0
        4 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockState"]
        4 RETURN                           R0 0

PROTO_38:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockConfigRegistry"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_mockState"]
        8 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_spyState"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 CALL                             R6 0 0
        7 FORGLOOP                         R1 2 ; [-3]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K0 ["_spyState"]
       15 RETURN                           R0 0

PROTO_40:
        0 RETURN                           R1 1

PROTO_41:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_43:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["_isGlobalAutomockFn"]
        6 JUMPIFNOT                        R7 ; [+23]
        7 GETTABLE                         R7 R1 R5
        8 LOADNIL                          R8
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          REF R8
       11 CAPTURE                          VAL R7
       12 GETUPVAL                         R10 0
       13 DUPTABLE                         R12 K3 [{["type"] = "function"}]
       14 MOVE                             R13 R9
       15 NAMECALL                         R10 R10 K4 ["_makeComponent"]
       17 CALL                             R10 3 1
       18 MOVE                             R8 R10
       19 GETTABLEKS                       R10 R8 K5 ["mockImplementation"]
       21 NEWCLOSURE                       R11 P1
       22 CAPTURE                          VAL R7
       23 CALL                             R10 1 0
       24 SETTABLEKS                       R7 R6 K6 ["_maybeUnmocked"]
       26 SETTABLEKS                       R8 R6 K7 ["_maybeMock"]
       28 CLOSEUPVALS                      R8
       29 JUMP                             ; [+4]
       30 GETUPVAL                         R7 1
       31 MOVE                             R8 R6
       32 GETTABLE                         R9 R1 R5
       33 CALL                             R7 2 0
       34 FORGLOOP                         R2 2 ; [-31]
       36 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["currentlyMocked"]
        3 DUPCLOSURE                       R2 K1 [PROTO_45]
        4 CAPTURE                          VAL R2
        5 MOVE                             R3 R2
        6 GETTABLEKS                       R4 R1 K2 ["automocks"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

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
       27 GETIMPORT                        R10 K4 [require]
       29 GETTABLEKS                       R11 R1 K13 ["JestTypes"]
       31 CALL                             R10 1 1
       32 GETIMPORT                        R11 K4 [require]
       34 GETTABLEKS                       R12 R1 K14 ["JestMockRbx"]
       36 CALL                             R11 1 1
       37 GETTABLEKS                       R12 R11 K15 ["DataModelMocker"]
       39 NEWTABLE                         R13 1 0
       41 NEWTABLE                         R14 32 0
       43 SETTABLEKS                       R14 R14 K16 ["__index"]
       45 DUPCLOSURE                       R15 K17 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R12
       48 CAPTURE                          VAL R14
       49 SETTABLEKS                       R15 R14 K18 ["new"]
       51 DUPCLOSURE                       R15 K19 [PROTO_2]
       52 SETTABLEKS                       R15 R14 K20 ["_ensureMockConfig"]
       54 DUPCLOSURE                       R15 K21 [PROTO_3]
       55 SETTABLEKS                       R15 R14 K22 ["_ensureMockState"]
       57 DUPCLOSURE                       R15 K23 [PROTO_4]
       58 SETTABLEKS                       R15 R14 K24 ["_defaultMockConfig"]
       60 DUPCLOSURE                       R15 K25 [PROTO_5]
       61 SETTABLEKS                       R15 R14 K26 ["_defaultMockState"]
       63 DUPCLOSURE                       R15 K27 [PROTO_25]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R15 R14 K28 ["_makeComponent"]
       68 DUPCLOSURE                       R15 K29 [PROTO_26]
       69 SETTABLEKS                       R15 R14 K30 ["_createMockFunction"]
       71 DUPCLOSURE                       R15 K31 [PROTO_27]
       72 SETTABLEKS                       R15 R14 K32 ["isMockFunction"]
       74 DUPCLOSURE                       R15 K33 [PROTO_28]
       75 SETTABLEKS                       R15 R14 K34 ["fn"]
       77 DUPCLOSURE                       R15 K35 [PROTO_29]
       78 SETTABLEKS                       R15 R14 K36 ["protectDataModel"]
       80 DUPCLOSURE                       R15 K37 [PROTO_35]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R15 R14 K38 ["spyOn"]
       86 DUPCLOSURE                       R15 K39 [PROTO_36]
       87 SETTABLEKS                       R15 R14 K40 ["_spyOnProperty"]
       89 DUPCLOSURE                       R15 K41 [PROTO_37]
       90 SETTABLEKS                       R15 R14 K42 ["clearAllMocks"]
       92 DUPCLOSURE                       R15 K43 [PROTO_38]
       93 SETTABLEKS                       R15 R14 K44 ["resetAllMocks"]
       95 DUPCLOSURE                       R15 K45 [PROTO_39]
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R15 R14 K46 ["restoreAllMocks"]
       99 DUPCLOSURE                       R15 K47 [PROTO_40]
      100 SETTABLEKS                       R15 R14 K48 ["mocked"]
      102 DUPCLOSURE                       R15 K49 [PROTO_44]
      103 SETTABLEKS                       R15 R14 K50 ["mockGlobals"]
      105 DUPCLOSURE                       R15 K51 [PROTO_46]
      106 SETTABLEKS                       R15 R14 K52 ["unmockGlobals"]
      108 SETTABLEKS                       R14 R13 K53 ["ModuleMocker"]
      110 RETURN                           R13 1
