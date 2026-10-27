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
        0 GETIMPORT                        R1 K2 [table.remove]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["specificMockImpls"]
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+4]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["mockImpl"]
       12 JUMPIFNOT                        R1 ; [+8]
       13 MOVE                             R2 R1
       14 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K6 [unpack]
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
       89 CAPTURE                          VAL R3
       90 NEWTABLE                         R7 0 0
       92 GETVARARGS                       R8 -1
       93 SETLIST                          R7 R8 -1 [1]
       95 CALL                             R5 2 2
       96 JUMPIF                           R5 ; [+9]
       97 LOADK                            R7 K24 ["throw"]
       98 SETTABLEKS                       R7 R4 K13 ["type"]
      100 SETTABLEKS                       R6 R4 K15 ["value"]
      102 GETIMPORT                        R7 K26 [error]
      104 MOVE                             R8 R6
      105 CALL                             R7 1 0
      106 LOADK                            R7 K27 ["return"]
      107 SETTABLEKS                       R7 R4 K13 ["type"]
      109 SETTABLEKS                       R6 R4 K15 ["value"]
      111 RETURN                           R6 1

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
        2 JUMPIFNOTEQKS                    R3 K1 ["function"] ; [+126]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 NEWTABLE                         R5 16 0
        9 DUPTABLE                         R6 K3 [{"__call"}]
       10 SETTABLEKS                       R3 R6 K2 ["__call"]
       12 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       14 GETIMPORT                        R4 K5 [setmetatable]
       16 CALL                             R4 2 1
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K6 ["_isMockFunction"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R5 R4 K7 ["getMockImplementation"]
       25 FASTCALL1                        TYPEOF R2 ; [+3]
       26 MOVE                             R6 R2
       27 GETIMPORT                        R5 K9 [typeof]
       29 CALL                             R5 1 1
       30 JUMPIFNOTEQKS                    R5 K1 ["function"] ; [+7]
       32 GETTABLEKS                       R5 R0 K10 ["_spyState"]
       34 MOVE                             R7 R2
       35 NAMECALL                         R5 R5 K11 ["add"]
       37 CALL                             R5 2 0
       38 GETTABLEKS                       R5 R0 K12 ["_mockState"]
       40 GETTABLEKS                       R6 R0 K13 ["_defaultMockState"]
       42 CALL                             R6 0 1
       43 SETTABLE                         R6 R5 R4
       44 GETTABLEKS                       R5 R0 K14 ["_mockConfigRegistry"]
       46 GETTABLEKS                       R6 R0 K15 ["_defaultMockConfig"]
       48 CALL                             R6 0 1
       49 SETTABLE                         R6 R5 R4
       50 NEWTABLE                         R6 0 0
       52 DUPTABLE                         R7 K17 [{"__index"}]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R8 R7 K16 ["__index"]
       58 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       60 GETIMPORT                        R5 K5 [setmetatable]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K18 ["mock"]
       65 NEWCLOSURE                       R5 P3
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R5 R4 K19 ["mockClear"]
       70 NEWCLOSURE                       R5 P4
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R5 R4 K20 ["mockReset"]
       75 NEWCLOSURE                       R5 P5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R5 R4 K21 ["mockRestore"]
       80 NEWCLOSURE                       R5 P6
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R5 R4 K22 ["mockImplementationOnce"]
       85 NEWCLOSURE                       R5 P7
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R5 R4 K23 ["mockImplementation"]
       90 NEWCLOSURE                       R5 P8
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R5 R4 K24 ["mockReturnValueOnce"]
       94 NEWCLOSURE                       R5 P9
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R5 R4 K25 ["mockReturnValue"]
       98 NEWCLOSURE                       R5 P10
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R5 R4 K26 ["mockReturnThis"]
      102 NEWCLOSURE                       R5 P11
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R5 R4 K27 ["mockName"]
      107 NEWCLOSURE                       R5 P12
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R5 R4 K28 ["getMockName"]
      112 NEWCLOSURE                       R5 P13
      113 CAPTURE                          VAL R4
      114 SETTABLEKS                       R5 R4 K29 ["new"]
      116 GETTABLEKS                       R5 R1 K30 ["mockImpl"]
      118 JUMPIFNOT                        R5 ; [+5]
      119 GETTABLEKS                       R5 R4 K23 ["mockImplementation"]
      121 GETTABLEKS                       R6 R1 K30 ["mockImpl"]
      123 CALL                             R5 1 0
      124 MOVE                             R5 R4
      125 NEWCLOSURE                       R6 P14
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 RETURN                           R5 2
      129 GETIMPORT                        R3 K32 [error]
      131 LOADK                            R4 K33 ["Call to _makeComponent with non-function"]
      132 CALL                             R3 1 0
      133 RETURN                           R0 0

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
        0 GETTABLEKS                       R3 R0 K0 ["_projectConfig"]
        2 GETTABLEKS                       R5 R0 K1 ["_mocksOnObjectsMap"]
        4 GETTABLE                         R4 R5 R1
        5 JUMPIFNOTEQKNIL                  R4 ; [+6]
        7 NEWTABLE                         R4 0 0
        9 GETTABLEKS                       R5 R0 K1 ["_mocksOnObjectsMap"]
       11 SETTABLE                         R4 R5 R1
       12 GETTABLEKS                       R5 R0 K2 ["dataModelMocker"]
       14 MOVE                             R7 R1
       15 NAMECALL                         R5 R5 K3 ["intoProxy"]
       17 CALL                             R5 2 1
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R7 R1
       20 GETIMPORT                        R6 K5 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFEQKS                       R6 K6 ["Instance"] ; [+3]
       25 JUMPIFEQKNIL                     R5 ; [+80]
       27 GETTABLEKS                       R6 R3 K7 ["mockDataModel"]
       29 JUMPIF                           R6 ; [+9]
       30 GETIMPORT                        R6 K9 [error]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K10 ["new"]
       35 LOADK                            R8 K11 ["Can't spy on instances - the `mockDataModel` setting is not enabled."]
       36 CALL                             R7 1 -1
       37 CALL                             R6 -1 0
       38 JUMP                             ; [+39]
       39 FASTCALL1                        TYPEOF R2 ; [+3]
       40 MOVE                             R7 R2
       41 GETIMPORT                        R6 K5 [typeof]
       43 CALL                             R6 1 1
       44 JUMPIFEQKS                       R6 K12 ["string"] ; [+10]
       46 GETIMPORT                        R6 K9 [error]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K10 ["new"]
       51 LOADK                            R8 K13 ["Method names must be strings when spying on instances."]
       52 CALL                             R7 1 -1
       53 CALL                             R6 -1 0
       54 JUMP                             ; [+23]
       55 JUMPIFEQKNIL                     R5 ; [+8]
       57 GETTABLEKS                       R6 R0 K14 ["_dataModelProtector"]
       59 GETTABLEKS                       R7 R5 K15 ["original"]
       61 MOVE                             R8 R2
       62 CALL                             R6 2 1
       63 JUMPIF                           R6 ; [+14]
       64 GETIMPORT                        R6 K9 [error]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K10 ["new"]
       69 LOADK                            R8 K16 ["Can't spy on %*:%*() because it is not mockable."]
       70 GETTABLEKS                       R10 R1 K17 ["Name"]
       72 MOVE                             R11 R2
       73 NAMECALL                         R8 R8 K18 ["format"]
       75 CALL                             R8 3 1
       76 CALL                             R7 1 -1
       77 CALL                             R6 -1 0
       78 GETTABLE                         R6 R4 R2
       79 JUMPIFNOTEQKNIL                  R6 ; [+24]
       81 LOADNIL                          R6
       82 DUPTABLE                         R9 K21 [{["type"] = "function"}]
       83 NEWCLOSURE                       R10 P0
       84 CAPTURE                          REF R6
       85 NAMECALL                         R7 R0 K22 ["_makeComponent"]
       87 CALL                             R7 3 2
       88 GETTABLEKS                       R9 R5 K23 ["controls"]
       90 MOVE                             R11 R2
       91 MOVE                             R12 R8
       92 NAMECALL                         R9 R9 K24 ["mockMethod"]
       94 CALL                             R9 3 1
       95 MOVE                             R6 R9
       96 SETTABLE                         R7 R4 R2
       97 GETTABLEKS                       R9 R7 K25 ["mockImplementation"]
       99 NEWCLOSURE                       R10 P1
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R2
      102 CALL                             R9 1 0
      103 CLOSEUPVALS                      R6
      104 GETTABLE                         R6 R4 R2
      105 RETURN                           R6 1
      106 GETUPVAL                         R6 1
      107 MOVE                             R8 R1
      108 NAMECALL                         R6 R6 K26 ["isMockGlobalLibrary"]
      110 CALL                             R6 2 1
      111 JUMPIFNOT                        R6 ; [+50]
      112 GETTABLEKS                       R6 R1 K27 ["_automocksRef"]
      114 GETTABLE                         R7 R6 R2
      115 FASTCALL1                        TYPEOF R7 ; [+3]
      116 MOVE                             R9 R7
      117 GETIMPORT                        R8 K5 [typeof]
      119 CALL                             R8 1 1
      120 JUMPIFNOTEQKS                    R8 K28 ["table"] ; [+4]
      122 GETTABLEKS                       R8 R7 K29 ["_isGlobalAutomockFn"]
      124 JUMPIF                           R8 ; [+22]
      125 GETIMPORT                        R8 K9 [error]
      127 GETUPVAL                         R9 0
      128 GETTABLEKS                       R9 R9 K10 ["new"]
      130 LOADK                            R10 K30 ["Cannot spy the %s property because it is not a function; %s given instead"]
      131 FASTCALL1                        TOSTRING R2 ; [+3]
      132 MOVE                             R13 R2
      133 GETIMPORT                        R12 K32 [tostring]
      135 CALL                             R12 1 1
      136 FASTCALL1                        TYPEOF R7 ; [+3]
      137 MOVE                             R14 R7
      138 GETIMPORT                        R13 K5 [typeof]
      140 CALL                             R13 1 1
      141 NAMECALL                         R10 R10 K18 ["format"]
      143 CALL                             R10 3 -1
      144 CALL                             R9 -1 -1
      145 CALL                             R8 -1 0
      146 JUMP                             ; [+12]
      147 GETTABLEKS                       R8 R7 K33 ["_maybeMock"]
      149 JUMPIFNOTEQKNIL                  R8 ; [+9]
      151 GETIMPORT                        R8 K9 [error]
      153 GETUPVAL                         R9 0
      154 GETTABLEKS                       R9 R9 K10 ["new"]
      156 LOADK                            R10 K34 ["globalEnv has not been initialised by Jest here"]
      157 CALL                             R9 1 -1
      158 CALL                             R8 -1 0
      159 GETTABLEKS                       R8 R7 K33 ["_maybeMock"]
      161 RETURN                           R8 1
      162 FASTCALL1                        TYPEOF R1 ; [+3]
      163 MOVE                             R7 R1
      164 GETIMPORT                        R6 K5 [typeof]
      166 CALL                             R6 1 1
      167 JUMPIFNOTEQKS                    R6 K28 ["table"] ; [+146]
      169 GETTABLE                         R6 R4 R2
      170 JUMPIFNOTEQKNIL                  R6 ; [+141]
      172 GETTABLE                         R6 R1 R2
      173 FASTCALL2                        RAWGET R1 R2 ; [+5]
      175 MOVE                             R9 R1
      176 MOVE                             R10 R2
      177 GETIMPORT                        R8 K36 [rawget]
      179 CALL                             R8 2 1
      180 JUMPIFNOTEQKNIL                  R8 ; [+2]
      182 LOADB                            R7 0 +1
      183 LOADB                            R7 1
      184 LOADNIL                          R8
      185 FASTCALL1                        TYPEOF R6 ; [+3]
      186 MOVE                             R10 R6
      187 GETIMPORT                        R9 K5 [typeof]
      189 CALL                             R9 1 1
      190 JUMPIFNOTEQKS                    R9 K28 ["table"] ; [+18]
      192 FASTCALL1                        GETMETATABLE R6 ; [+3]
      193 MOVE                             R10 R6
      194 GETIMPORT                        R9 K38 [getmetatable]
      196 CALL                             R9 1 1
      197 FASTCALL1                        TYPEOF R9 ; [+3]
      198 MOVE                             R11 R9
      199 GETIMPORT                        R10 K5 [typeof]
      201 CALL                             R10 1 1
      202 JUMPIFNOTEQKS                    R10 K28 ["table"] ; [+6]
      204 GETTABLEKS                       R10 R9 K39 ["__call"]
      206 JUMPIFEQKNIL                     R10 ; [+2]
      208 MOVE                             R8 R9
      209 DUPTABLE                         R11 K21 [{["type"] = "function"}]
      210 NEWCLOSURE                       R12 P2
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R6
      215 NAMECALL                         R9 R0 K22 ["_makeComponent"]
      217 CALL                             R9 3 2
      218 FASTCALL1                        TYPEOF R6 ; [+3]
      219 MOVE                             R12 R6
      220 GETIMPORT                        R11 K5 [typeof]
      222 CALL                             R11 1 1
      223 JUMPIFNOTEQKS                    R11 K20 ["function"] ; [+15]
      225 GETTABLEKS                       R12 R3 K40 ["oldFunctionSpying"]
      227 JUMPIFNOT                        R12 ; [+2]
      228 MOVE                             R11 R9
      229 JUMP                             ; [+1]
      230 MOVE                             R11 R10
      231 SETTABLE                         R11 R1 R2
      232 SETTABLE                         R9 R4 R2
      233 GETTABLEKS                       R11 R9 K25 ["mockImplementation"]
      235 NEWCLOSURE                       R12 P3
      236 CAPTURE                          VAL R6
      237 CALL                             R11 1 0
      238 JUMP                             ; [+72]
      239 JUMPIFEQKNIL                     R8 ; [+50]
      241 GETIMPORT                        R11 K42 [pcall]
      243 GETIMPORT                        R12 K44 [table.clone]
      245 MOVE                             R13 R6
      246 CALL                             R11 2 2
      247 JUMPIF                           R11 ; [+21]
      248 GETIMPORT                        R13 K9 [error]
      250 GETUPVAL                         R14 0
      251 GETTABLEKS                       R14 R14 K10 ["new"]
      253 LOADK                            R15 K45 ["Cannot spy the %s property because it cannot be cloned. (%s)"]
      254 FASTCALL1                        TOSTRING R2 ; [+3]
      255 MOVE                             R18 R2
      256 GETIMPORT                        R17 K32 [tostring]
      258 CALL                             R17 1 1
      259 LOADK                            R21 K46 ["protected metatable"]
      260 NAMECALL                         R19 R12 K47 ["match"]
      262 CALL                             R19 2 1
      263 OR                               R18 R19 R12
      264 NAMECALL                         R15 R15 K18 ["format"]
      266 CALL                             R15 3 -1
      267 CALL                             R14 -1 -1
      268 CALL                             R13 -1 0
      269 GETIMPORT                        R13 K44 [table.clone]
      271 MOVE                             R14 R8
      272 CALL                             R13 1 1
      273 SETTABLEKS                       R10 R13 K39 ["__call"]
      275 FASTCALL2                        SETMETATABLE R12 R13 ; [+5]
      277 MOVE                             R15 R12
      278 MOVE                             R16 R13
      279 GETIMPORT                        R14 K49 [setmetatable]
      281 CALL                             R14 2 1
      282 SETTABLE                         R14 R1 R2
      283 SETTABLE                         R9 R4 R2
      284 GETTABLEKS                       R14 R9 K25 ["mockImplementation"]
      286 NEWCLOSURE                       R15 P4
      287 CAPTURE                          REF R8
      288 CALL                             R14 1 0
      289 JUMP                             ; [+21]
      290 GETIMPORT                        R11 K9 [error]
      292 GETUPVAL                         R12 0
      293 GETTABLEKS                       R12 R12 K10 ["new"]
      295 LOADK                            R13 K50 ["Cannot spy the %s property because it is not a function or callable table; %s given instead"]
      296 FASTCALL1                        TOSTRING R2 ; [+3]
      297 MOVE                             R16 R2
      298 GETIMPORT                        R15 K32 [tostring]
      300 CALL                             R15 1 1
      301 FASTCALL1                        TYPEOF R6 ; [+3]
      302 MOVE                             R17 R6
      303 GETIMPORT                        R16 K5 [typeof]
      305 CALL                             R16 1 1
      306 NAMECALL                         R13 R13 K18 ["format"]
      308 CALL                             R13 3 -1
      309 CALL                             R12 -1 -1
      310 CALL                             R11 -1 0
      311 CLOSEUPVALS                      R8
      312 GETTABLE                         R6 R4 R2
      313 RETURN                           R6 1
      314 GETIMPORT                        R6 K9 [error]
      316 GETUPVAL                         R7 0
      317 GETTABLEKS                       R7 R7 K10 ["new"]
      319 LOADK                            R8 K51 ["Cannot spyOn on a primitive value; %s given"]
      320 FASTCALL1                        TYPEOF R1 ; [+3]
      321 MOVE                             R11 R1
      322 GETIMPORT                        R10 K5 [typeof]
      324 CALL                             R10 1 1
      325 NAMECALL                         R8 R8 K18 ["format"]
      327 CALL                             R8 2 -1
      328 CALL                             R7 -1 -1
      329 CALL                             R6 -1 0
      330 RETURN                           R0 0

PROTO_36:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockState"]
        4 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockConfigRegistry"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_mockState"]
        8 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
        0 RETURN                           R1 1

PROTO_40:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["currentlyMocked"]
        3 DUPCLOSURE                       R2 K1 [PROTO_44]
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
       10 GETTABLEKS                       R3 R2 K6 ["Error"]
       12 GETTABLEKS                       R4 R2 K7 ["Set"]
       14 GETIMPORT                        R5 K4 [require]
       16 GETTABLEKS                       R6 R1 K8 ["Symbol"]
       18 CALL                             R5 1 1
       19 GETIMPORT                        R6 K4 [require]
       21 GETTABLEKS                       R7 R1 K9 ["JestMockGenv"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R7 R6 K10 ["GlobalMocker"]
       26 GETIMPORT                        R8 K4 [require]
       28 GETTABLEKS                       R9 R1 K11 ["JestTypes"]
       30 CALL                             R8 1 1
       31 GETIMPORT                        R9 K4 [require]
       33 GETTABLEKS                       R10 R1 K12 ["JestMockRbx"]
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R10 R9 K13 ["DataModelMocker"]
       38 NEWTABLE                         R11 32 0
       40 SETTABLEKS                       R11 R11 K14 ["__index"]
       42 DUPCLOSURE                       R12 K15 [PROTO_1]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R11
       46 SETTABLEKS                       R12 R11 K16 ["new"]
       48 DUPCLOSURE                       R12 K17 [PROTO_2]
       49 SETTABLEKS                       R12 R11 K18 ["_ensureMockConfig"]
       51 DUPCLOSURE                       R12 K19 [PROTO_3]
       52 SETTABLEKS                       R12 R11 K20 ["_ensureMockState"]
       54 DUPCLOSURE                       R12 K21 [PROTO_4]
       55 SETTABLEKS                       R12 R11 K22 ["_defaultMockConfig"]
       57 DUPCLOSURE                       R12 K23 [PROTO_5]
       58 SETTABLEKS                       R12 R11 K24 ["_defaultMockState"]
       60 DUPCLOSURE                       R12 K25 [PROTO_25]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R12 R11 K26 ["_makeComponent"]
       64 DUPCLOSURE                       R12 K27 [PROTO_26]
       65 SETTABLEKS                       R12 R11 K28 ["_createMockFunction"]
       67 DUPCLOSURE                       R12 K29 [PROTO_27]
       68 SETTABLEKS                       R12 R11 K30 ["isMockFunction"]
       70 DUPCLOSURE                       R12 K31 [PROTO_28]
       71 SETTABLEKS                       R12 R11 K32 ["fn"]
       73 DUPCLOSURE                       R12 K33 [PROTO_29]
       74 SETTABLEKS                       R12 R11 K34 ["protectDataModel"]
       76 DUPCLOSURE                       R12 K35 [PROTO_35]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R12 R11 K36 ["spyOn"]
       81 DUPCLOSURE                       R12 K37 [PROTO_36]
       82 SETTABLEKS                       R12 R11 K38 ["clearAllMocks"]
       84 DUPCLOSURE                       R12 K39 [PROTO_37]
       85 SETTABLEKS                       R12 R11 K40 ["resetAllMocks"]
       87 DUPCLOSURE                       R12 K41 [PROTO_38]
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R12 R11 K42 ["restoreAllMocks"]
       91 DUPCLOSURE                       R12 K43 [PROTO_39]
       92 SETTABLEKS                       R12 R11 K44 ["mocked"]
       94 DUPCLOSURE                       R12 K45 [PROTO_43]
       95 SETTABLEKS                       R12 R11 K46 ["mockGlobals"]
       97 DUPCLOSURE                       R12 K47 [PROTO_45]
       98 SETTABLEKS                       R12 R11 K48 ["unmockGlobals"]
      100 DUPTABLE                         R12 K50 [{"ModuleMocker"}]
      101 SETTABLEKS                       R11 R12 K49 ["ModuleMocker"]
      103 RETURN                           R12 1
