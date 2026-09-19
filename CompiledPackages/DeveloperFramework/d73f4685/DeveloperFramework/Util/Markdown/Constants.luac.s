MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"CONTAINERS", "LISTS", "INLINE_TEXT", "PLAIN_TEXT", "STYLED_TEXT", "DIVIDERS", "ASCII", "UNICODE"}]
        2 DUPTABLE                         R1 K12 [{["ROOT"] = True, ["TAG"] = True}]
        3 SETTABLEKS                       R1 R0 K0 ["CONTAINERS"]
        5 DUPTABLE                         R1 K16 [{["BULLET_LIST_ITEM"] = True, ["BULLET_LIST_ITEM_2"] = True, ["ORDERED_LIST_ITEM"] = True}]
        6 SETTABLEKS                       R1 R0 K1 ["LISTS"]
        8 DUPTABLE                         R1 K25 [{["STYLED_TEXT"] = True, ["LINK"] = True, ["IMAGE"] = True, ["ACTION"] = True, ["TABLE_DIVIDER"] = True, ["TABLE_HEADER"] = True, ["TABLE_HEADER_2"] = True, ["TEXT"] = True, ["BREAK"] = True}]
        9 SETTABLEKS                       R1 R0 K2 ["INLINE_TEXT"]
       11 DUPTABLE                         R1 K26 [{["TEXT"] = True, ["TABLE_DIVIDER"] = True, ["TABLE_HEADER"] = True, ["TABLE_HEADER_2"] = True}]
       12 SETTABLEKS                       R1 R0 K3 ["PLAIN_TEXT"]
       14 DUPTABLE                         R1 K35 [{["BOLD"] = "b", ["BOLD_2"] = "b", ["ITALIC"] = "i", ["ITALIC_2"] = "i", ["STRIKE"] = "s"}]
       15 SETTABLEKS                       R1 R0 K4 ["STYLED_TEXT"]
       17 DUPTABLE                         R1 K38 [{["LINE_BREAK"] = True, ["DIVIDER"] = True}]
       18 SETTABLEKS                       R1 R0 K5 ["DIVIDERS"]
       20 DUPTABLE                         R1 K43 [{["WHITESPACE_PATTERN"] = "%s", ["PUNCTUATION_PATTERN"] = "[!/:;,_`|{}~<>=#&@'%%\"\\%$%(%)%*%+%-%.%?%[%]%^]"}]
       21 SETTABLEKS                       R1 R0 K6 ["ASCII"]
       23 GETIMPORT                        R1 K45 [require]
       25 GETIMPORT                        R2 K47 [script]
       27 GETTABLEKS                       R2 R2 K48 ["Parent"]
       29 GETTABLEKS                       R2 R2 K49 ["UnicodeConstants"]
       31 CALL                             R1 1 1
       32 SETTABLEKS                       R1 R0 K7 ["UNICODE"]
       34 RETURN                           R0 1
