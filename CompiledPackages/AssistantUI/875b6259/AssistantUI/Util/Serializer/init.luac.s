PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["clear"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Hydrators"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Serializers"]
       14 CALL                             R1 1 1
       15 DUPCLOSURE                       R2 K6 [PROTO_0]
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 DUPTABLE                         R3 K15 [{"registerSerializer", "deregisterSerializer", "serialize", "deserialize", "registerHydrator", "getHydrators", "hydrate", "clear"}]
       19 GETTABLEKS                       R4 R1 K7 ["registerSerializer"]
       21 SETTABLEKS                       R4 R3 K7 ["registerSerializer"]
       23 GETTABLEKS                       R4 R1 K8 ["deregisterSerializer"]
       25 SETTABLEKS                       R4 R3 K8 ["deregisterSerializer"]
       27 GETTABLEKS                       R4 R1 K9 ["serialize"]
       29 SETTABLEKS                       R4 R3 K9 ["serialize"]
       31 GETTABLEKS                       R4 R1 K10 ["deserialize"]
       33 SETTABLEKS                       R4 R3 K10 ["deserialize"]
       35 GETTABLEKS                       R4 R0 K11 ["registerHydrator"]
       37 SETTABLEKS                       R4 R3 K11 ["registerHydrator"]
       39 GETTABLEKS                       R4 R0 K12 ["getHydrators"]
       41 SETTABLEKS                       R4 R3 K12 ["getHydrators"]
       43 GETTABLEKS                       R4 R0 K13 ["hydrate"]
       45 SETTABLEKS                       R4 R3 K13 ["hydrate"]
       47 SETTABLEKS                       R2 R3 K14 ["clear"]
       49 RETURN                           R3 1
