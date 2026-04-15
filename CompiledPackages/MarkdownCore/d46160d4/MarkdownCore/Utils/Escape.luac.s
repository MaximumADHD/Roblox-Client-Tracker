PROTO_0:
        0 LOADK                            R3 K0 ["[&<>\"']"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["&amp;"]
        4 SETTABLEKS                       R5 R4 K2 ["&"]
        6 LOADK                            R5 K3 ["&lt;"]
        7 SETTABLEKS                       R5 R4 K4 ["<"]
        9 LOADK                            R5 K5 ["&gt;"]
       10 SETTABLEKS                       R5 R4 K6 [">"]
       12 LOADK                            R5 K7 ["&quot;"]
       13 SETTABLEKS                       R5 R4 K8 ["\""]
       15 LOADK                            R5 K9 ["&apos;"]
       16 SETTABLEKS                       R5 R4 K10 ["'"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 1
       21 LOADK                            R4 K12 ["&amp;%l+;"]
       22 NEWTABLE                         R5 8 0
       24 LOADK                            R6 K3 ["&lt;"]
       25 SETTABLEKS                       R6 R5 K13 ["&amp;lt;"]
       27 LOADK                            R6 K5 ["&gt;"]
       28 SETTABLEKS                       R6 R5 K14 ["&amp;gt;"]
       30 LOADK                            R6 K7 ["&quot;"]
       31 SETTABLEKS                       R6 R5 K15 ["&amp;quot;"]
       33 LOADK                            R6 K9 ["&apos;"]
       34 SETTABLEKS                       R6 R5 K16 ["&amp;apos;"]
       36 LOADK                            R6 K1 ["&amp;"]
       37 SETTABLEKS                       R6 R5 K17 ["&amp;amp;"]
       39 NAMECALL                         R2 R1 K11 ["gsub"]
       41 CALL                             R2 3 1
       42 MOVE                             R1 R2
       43 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["&%l+;"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["<"]
        4 SETTABLEKS                       R5 R4 K2 ["&lt;"]
        6 LOADK                            R5 K3 [">"]
        7 SETTABLEKS                       R5 R4 K4 ["&gt;"]
        9 LOADK                            R5 K5 ["\""]
       10 SETTABLEKS                       R5 R4 K6 ["&quot;"]
       12 LOADK                            R5 K7 ["'"]
       13 SETTABLEKS                       R5 R4 K8 ["&apos;"]
       15 LOADK                            R5 K9 ["&"]
       16 SETTABLEKS                       R5 R4 K10 ["&amp;"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPTABLE                         R2 K4 [{"escapeRichFormatting", "unescapeRichFormatting"}]
        4 SETTABLEKS                       R0 R2 K2 ["escapeRichFormatting"]
        6 SETTABLEKS                       R1 R2 K3 ["unescapeRichFormatting"]
        8 RETURN                           R2 1
