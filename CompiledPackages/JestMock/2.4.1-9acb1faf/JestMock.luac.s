PROTO_0:
        0 DUPTABLE                         R0 K5 [{[1], ["_mockConfigRegistry"], ["_invocationCallCounter"] = 1, ["_spyState"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_mockState"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["_mockConfigRegistry"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K6 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K4 ["_spyState"]
       15 GETUPVAL                         R3 1
       16 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K8 [setmetatable]
       21 CALL                             R1 2 0
       22 RETURN                           R0 1

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
       11 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{[1] = , ["mockName"] = "jest.fn()", ["specificMockImpls"], ["specificReturnValues"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K4 ["specificMockImpls"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K5 ["specificReturnValues"]
        9 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K4 [{"calls", "instances", "invocationCallOrder", "results"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["calls"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["instances"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["invocationCallOrder"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["results"]
       17 RETURN                           R1 1

PROTO_5:
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
       24 LOADN                            R6 1
       25 LOADK                            R8 K6 ["#"]
       26 FASTCALL1                        SELECT_VARARG R8 ; [+3]
       27 GETIMPORT                        R7 K8 [select]
       29 GETVARARGS                       R9 -1
       30 CALL                             R7 -1 1
       31 MOVE                             R4 R7
       32 LOADN                            R5 1
       33 FORNPREP                         R4
       34 GETTABLE                         R7 R1 R6
       35 JUMPIFNOTEQKNIL                  R7 ; [+7]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K9 ["for_"]
       40 LOADK                            R8 K10 ["$$nil"]
       41 CALL                             R7 1 1
       42 SETTABLE                         R7 R1 R6
       43 FORNLOOP                         R4
       44 GETTABLEKS                       R5 R2 K11 ["calls"]
       46 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       48 MOVE                             R6 R1
       49 GETIMPORT                        R4 K5 [table.insert]
       51 CALL                             R4 2 0
       52 DUPTABLE                         R4 K16 [{["type"] = "incomplete", ["value"] = }]
       53 GETTABLEKS                       R6 R2 K17 ["results"]
       55 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       57 MOVE                             R7 R4
       58 GETIMPORT                        R5 K5 [table.insert]
       60 CALL                             R5 2 0
       61 GETTABLEKS                       R6 R2 K18 ["invocationCallOrder"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K19 ["_invocationCallCounter"]
       66 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       68 GETIMPORT                        R5 K5 [table.insert]
       70 CALL                             R5 2 0
       71 GETUPVAL                         R5 2
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K19 ["_invocationCallCounter"]
       75 ADDK                             R6 R7 K20 [1]
       76 SETTABLEKS                       R6 R5 K19 ["_invocationCallCounter"]
       78 GETIMPORT                        R5 K22 [pcall]
       80 NEWCLOSURE                       R6 P0
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R3
       83 NEWTABLE                         R7 0 0
       85 GETVARARGS                       R8 -1
       86 SETLIST                          R7 R8 -1 [1]
       88 CALL                             R5 2 2
       89 JUMPIF                           R5 ; [+9]
       90 LOADK                            R7 K23 ["throw"]
       91 SETTABLEKS                       R7 R4 K12 ["type"]
       93 SETTABLEKS                       R6 R4 K14 ["value"]
       95 GETIMPORT                        R7 K25 [error]
       97 MOVE                             R8 R6
       98 CALL                             R7 1 0
       99 LOADK                            R7 K26 ["return"]
      100 SETTABLEKS                       R7 R4 K12 ["type"]
      102 SETTABLEKS                       R6 R4 K14 ["value"]
      104 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_ensureMockConfig"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R0 R0 K1 ["mockImpl"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 NAMECALL                         R3 R3 K0 ["_ensureMockState"]
        4 CALL                             R3 2 1
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mockState"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 1
        7 RETURN                           R0 1

PROTO_10:
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

PROTO_11:
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mockImplementationOnce"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mockImplementation"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockImplementation"]
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
        2 JUMPIFNOTEQKS                    R3 K1 ["function"] ; [+124]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 NEWTABLE                         R5 16 0
       11 DUPTABLE                         R6 K3 [{"__call"}]
       12 SETTABLEKS                       R3 R6 K2 ["__call"]
       14 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       16 GETIMPORT                        R4 K5 [setmetatable]
       18 CALL                             R4 2 1
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K6 ["_isMockFunction"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R5 R4 K7 ["getMockImplementation"]
       27 FASTCALL1                        TYPEOF R2 ; [+3]
       28 MOVE                             R6 R2
       29 GETIMPORT                        R5 K9 [typeof]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K1 ["function"] ; [+7]
       34 GETTABLEKS                       R5 R0 K10 ["_spyState"]
       36 GETTABLEKS                       R5 R5 K11 ["add"]
       38 MOVE                             R6 R2
       39 CALL                             R5 1 0
       40 GETTABLEKS                       R5 R0 K12 ["_mockState"]
       42 GETTABLEKS                       R6 R0 K13 ["_defaultMockState"]
       44 CALL                             R6 0 1
       45 SETTABLE                         R6 R5 R4
       46 GETTABLEKS                       R5 R0 K14 ["_mockConfigRegistry"]
       48 GETTABLEKS                       R6 R0 K15 ["_defaultMockConfig"]
       50 CALL                             R6 0 1
       51 SETTABLE                         R6 R5 R4
       52 NEWTABLE                         R6 0 0
       54 DUPTABLE                         R7 K17 [{"__index"}]
       55 NEWCLOSURE                       R8 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R8 R7 K16 ["__index"]
       60 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       62 GETIMPORT                        R5 K5 [setmetatable]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K18 ["mock"]
       67 NEWCLOSURE                       R5 P3
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R5 R4 K19 ["mockClear"]
       72 NEWCLOSURE                       R5 P4
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R5 R4 K20 ["mockReset"]
       77 NEWCLOSURE                       R5 P5
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R5 R4 K21 ["mockRestore"]
       82 NEWCLOSURE                       R5 P6
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R5 R4 K22 ["mockImplementationOnce"]
       87 NEWCLOSURE                       R5 P7
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R5 R4 K23 ["mockImplementation"]
       92 NEWCLOSURE                       R5 P8
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R5 R4 K24 ["mockReturnValueOnce"]
       96 NEWCLOSURE                       R5 P9
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R5 R4 K25 ["mockReturnValue"]
      100 NEWCLOSURE                       R5 P10
      101 CAPTURE                          VAL R4
      102 SETTABLEKS                       R5 R4 K26 ["mockReturnThis"]
      104 NEWCLOSURE                       R5 P11
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R5 R4 K27 ["mockName"]
      109 NEWCLOSURE                       R5 P12
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R5 R4 K28 ["getMockName"]
      114 NEWCLOSURE                       R5 P13
      115 CAPTURE                          VAL R4
      116 SETTABLEKS                       R5 R4 K29 ["new"]
      118 GETTABLEKS                       R5 R1 K30 ["mockImpl"]
      120 JUMPIFNOT                        R5 ; [+5]
      121 GETTABLEKS                       R5 R4 K23 ["mockImplementation"]
      123 GETTABLEKS                       R6 R1 K30 ["mockImpl"]
      125 CALL                             R5 1 0
      126 RETURN                           R4 1
      127 GETIMPORT                        R3 K32 [error]
      129 LOADK                            R4 K33 ["Call to _makeComponent with non-function"]
      130 CALL                             R3 1 0
      131 RETURN                           R0 0

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
        1 GETUPVAL                         R1 0
        2 FASTCALL1                        GETMETATABLE R1 ; [+2]
        3 GETIMPORT                        R0 K1 [getmetatable]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R0 R0 K2 ["__call"]
        8 GETUPVAL                         R1 0
        9 GETVARARGS                       R2 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_27:
        0 DUPTABLE                         R4 K4 [{[1] = 0, ["type"] = "function"}]
        1 NAMECALL                         R2 R0 K5 ["_makeComponent"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R3 R2 K6 ["mockImplementation"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 RETURN                           R2 2

PROTO_28:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockState"]
        4 RETURN                           R0 0

PROTO_29:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockConfigRegistry"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_mockState"]
        8 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_spyState"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 MOVE                             R6 R4
        7 CALL                             R6 0 0
        8 FORGLOOP                         R1 2 [inext] ; [-3]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["new"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K2 ["_spyState"]
       16 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Array"]
       12 GETTABLEKS                       R4 R2 K7 ["Set"]
       14 GETTABLEKS                       R5 R2 K8 ["Symbol"]
       16 NEWTABLE                         R6 4 0
       18 NEWTABLE                         R7 16 0
       20 SETTABLEKS                       R7 R7 K9 ["__index"]
       22 DUPCLOSURE                       R8 K10 [PROTO_0]
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R7
       25 SETTABLEKS                       R8 R7 K11 ["new"]
       27 DUPCLOSURE                       R8 K12 [PROTO_1]
       28 SETTABLEKS                       R8 R7 K13 ["_ensureMockConfig"]
       30 DUPCLOSURE                       R8 K14 [PROTO_2]
       31 SETTABLEKS                       R8 R7 K15 ["_ensureMockState"]
       33 DUPCLOSURE                       R8 K16 [PROTO_3]
       34 SETTABLEKS                       R8 R7 K17 ["_defaultMockConfig"]
       36 DUPCLOSURE                       R8 K18 [PROTO_4]
       37 SETTABLEKS                       R8 R7 K19 ["_defaultMockState"]
       39 DUPCLOSURE                       R8 K20 [PROTO_23]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R8 R7 K21 ["_makeComponent"]
       44 DUPCLOSURE                       R8 K22 [PROTO_24]
       45 SETTABLEKS                       R8 R7 K23 ["_createMockFunction"]
       47 DUPCLOSURE                       R8 K24 [PROTO_25]
       48 SETTABLEKS                       R8 R7 K25 ["isMockFunction"]
       50 DUPCLOSURE                       R8 K26 [PROTO_27]
       51 SETTABLEKS                       R8 R7 K27 ["fn"]
       53 DUPCLOSURE                       R8 K28 [PROTO_28]
       54 SETTABLEKS                       R8 R7 K29 ["clearAllMocks"]
       56 DUPCLOSURE                       R8 K30 [PROTO_29]
       57 SETTABLEKS                       R8 R7 K31 ["resetAllMocks"]
       59 DUPCLOSURE                       R8 K32 [PROTO_30]
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R8 R7 K33 ["restoreAllMocks"]
       63 DUPCLOSURE                       R8 K34 [PROTO_31]
       64 SETTABLEKS                       R8 R7 K35 ["mocked"]
       66 SETTABLEKS                       R7 R6 K36 ["ModuleMocker"]
       68 GETTABLEKS                       R8 R7 K11 ["new"]
       70 CALL                             R8 0 1
       71 GETTABLEKS                       R9 R8 K27 ["fn"]
       73 SETTABLEKS                       R9 R6 K27 ["fn"]
       75 GETTABLEKS                       R10 R8 K35 ["mocked"]
       77 SETTABLEKS                       R10 R6 K35 ["mocked"]
       79 RETURN                           R6 1
