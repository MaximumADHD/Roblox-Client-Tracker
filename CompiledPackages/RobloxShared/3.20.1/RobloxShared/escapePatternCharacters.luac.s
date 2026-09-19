PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["([%(%)%.%%%+%-%*%?%[%^%$])"]
        4 LOADK                            R4 K4 ["%%%1"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"escapePatternCharacters"}]
        3 SETTABLEKS                       R0 R1 K1 ["escapePatternCharacters"]
        5 RETURN                           R1 1
