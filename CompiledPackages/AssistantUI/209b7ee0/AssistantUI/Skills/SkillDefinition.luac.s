MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"DocsQA"}]
        2 LOADK                            R1 K2 ["docs_qa"]
        3 SETTABLEKS                       R1 R0 K0 ["DocsQA"]
        5 DUPTABLE                         R1 K4 [{"SkillNames"}]
        6 SETTABLEKS                       R0 R1 K3 ["SkillNames"]
        8 RETURN                           R1 1
