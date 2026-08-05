MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 DUPTABLE                         R2 K17 [{"CONTAINERS", "LISTS", "INLINE_TEXT", "PLAIN_TEXT", "STYLED_TEXT", "DIVIDERS", "ASCII", "UNICODE"}]
       18 DUPTABLE                         R3 K21 [{["ROOT"] = True, ["TAG"] = True}]
       19 SETTABLEKS                       R3 R2 K9 ["CONTAINERS"]
       21 DUPTABLE                         R3 K25 [{["BULLET_LIST_ITEM"] = True, ["BULLET_LIST_ITEM_2"] = True, ["ORDERED_LIST_ITEM"] = True}]
       22 SETTABLEKS                       R3 R2 K10 ["LISTS"]
       24 DUPTABLE                         R3 K35 [{["STYLED_TEXT"] = True, ["INLINE_CODE"], ["LINK"] = True, ["IMAGE"] = True, ["ACTION"] = True, ["TABLE_DIVIDER"] = True, ["TABLE_HEADER"] = True, ["TABLE_HEADER_2"] = True, ["TEXT"] = True, ["BREAK"] = True}]
       25 JUMPIFNOT                        R1 ; [+2]
       26 LOADNIL                          R4
       27 JUMP                             ; [+1]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K26 ["INLINE_CODE"]
       31 SETTABLEKS                       R3 R2 K11 ["INLINE_TEXT"]
       33 DUPTABLE                         R3 K36 [{["TEXT"] = True, ["TABLE_DIVIDER"] = True, ["TABLE_HEADER"] = True, ["TABLE_HEADER_2"] = True}]
       34 SETTABLEKS                       R3 R2 K12 ["PLAIN_TEXT"]
       36 DUPTABLE                         R3 K45 [{["BOLD"] = "b", ["BOLD_2"] = "b", ["ITALIC"] = "i", ["ITALIC_2"] = "i", ["STRIKE"] = "s"}]
       37 SETTABLEKS                       R3 R2 K13 ["STYLED_TEXT"]
       39 DUPTABLE                         R3 K49 [{["LINE_BREAK"] = True, ["DIVIDER"] = True, ["DIVIDER_2"]}]
       40 JUMPIFNOT                        R1 ; [+2]
       41 LOADNIL                          R4
       42 JUMP                             ; [+1]
       43 LOADB                            R4 1
       44 SETTABLEKS                       R4 R3 K48 ["DIVIDER_2"]
       46 SETTABLEKS                       R3 R2 K14 ["DIVIDERS"]
       48 DUPTABLE                         R3 K54 [{["WHITESPACE_PATTERN"] = "%s", ["PUNCTUATION_PATTERN"] = "[!/:;,_`|{}~<>=#&@'%%\"\\%$%(%)%*%+%-%.%?%[%]%^]"}]
       49 SETTABLEKS                       R3 R2 K15 ["ASCII"]
       51 GETIMPORT                        R3 K6 [require]
       53 GETIMPORT                        R4 K1 [script]
       55 GETTABLEKS                       R4 R4 K4 ["Parent"]
       57 GETTABLEKS                       R4 R4 K55 ["UnicodeConstants"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K16 ["UNICODE"]
       62 RETURN                           R2 1
