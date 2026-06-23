MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 128 0
        3 NEWTABLE                         R1 2 0
        5 LOADK                            R2 K0 ["UIFlexItem"]
        6 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        8 NEWTABLE                         R2 2 0
       10 LOADN                            R3 3
       11 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
       13 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
       15 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
       17 SETTABLEKS                       R2 R1 K8 ["properties"]
       19 SETTABLEKS                       R1 R0 K9 ["shrink-3"]
       21 NEWTABLE                         R1 1 0
       23 NEWTABLE                         R2 1 0
       25 GETIMPORT                        R3 K12 [Vector2.new]
       27 LOADK                            R4 K13 [0.5]
       28 LOADN                            R5 1
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
       32 SETTABLEKS                       R2 R1 K8 ["properties"]
       34 SETTABLEKS                       R1 R0 K15 ["anchor-bottom-center"]
       36 NEWTABLE                         R1 2 0
       38 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
       39 SETTABLEKS                       R2 R1 K1 ["pseudo"]
       41 NEWTABLE                         R2 1 0
       43 LOADK                            R3 K17 [1.333]
       44 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
       46 SETTABLEKS                       R2 R1 K8 ["properties"]
       48 SETTABLEKS                       R1 R0 K19 ["aspect-4-3"]
       50 NEWTABLE                         R1 1 0
       52 NEWTABLE                         R2 1 0
       54 GETIMPORT                        R3 K22 [Enum.AutomaticSize.X]
       56 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
       58 SETTABLEKS                       R2 R1 K8 ["properties"]
       60 SETTABLEKS                       R1 R0 K23 ["auto-x"]
       62 NEWTABLE                         R1 2 0
       64 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
       65 SETTABLEKS                       R2 R1 K1 ["pseudo"]
       67 NEWTABLE                         R2 1 0
       69 LOADK                            R3 K24 [0.8]
       70 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
       72 SETTABLEKS                       R2 R1 K8 ["properties"]
       74 SETTABLEKS                       R1 R0 K25 ["aspect-4-5"]
       76 NEWTABLE                         R1 1 0
       78 NEWTABLE                         R2 1 0
       80 GETIMPORT                        R3 K27 [UDim2.new]
       82 LOADK                            R4 K13 [0.5]
       83 LOADN                            R5 0
       84 LOADN                            R6 0
       85 LOADN                            R7 0
       86 CALL                             R3 4 1
       87 SETTABLEKS                       R3 R2 K28 ["Position"]
       89 SETTABLEKS                       R2 R1 K8 ["properties"]
       91 SETTABLEKS                       R1 R0 K29 ["position-top-center"]
       93 NEWTABLE                         R1 1 0
       95 NEWTABLE                         R2 1 0
       97 LOADB                            R3 1
       98 SETTABLEKS                       R3 R2 K30 ["ClipsDescendants"]
      100 SETTABLEKS                       R2 R1 K8 ["properties"]
      102 SETTABLEKS                       R1 R0 K31 ["clip"]
      104 NEWTABLE                         R1 1 0
      106 NEWTABLE                         R2 1 0
      108 LOADB                            R3 0
      109 SETTABLEKS                       R3 R2 K32 ["TextWrapped"]
      111 SETTABLEKS                       R2 R1 K8 ["properties"]
      113 SETTABLEKS                       R1 R0 K33 ["text-no-wrap"]
      115 NEWTABLE                         R1 2 0
      117 LOADK                            R2 K0 ["UIFlexItem"]
      118 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      120 NEWTABLE                         R2 2 0
      122 LOADN                            R3 3
      123 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      125 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      127 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      129 SETTABLEKS                       R2 R1 K8 ["properties"]
      131 SETTABLEKS                       R1 R0 K35 ["grow-3"]
      133 NEWTABLE                         R1 1 0
      135 NEWTABLE                         R2 1 0
      137 GETIMPORT                        R3 K38 [Enum.TextTruncate.SplitWord]
      139 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      141 SETTABLEKS                       R2 R1 K8 ["properties"]
      143 SETTABLEKS                       R1 R0 K39 ["text-truncate-split"]
      145 NEWTABLE                         R1 1 0
      147 NEWTABLE                         R2 1 0
      149 GETIMPORT                        R3 K42 [Enum.TextYAlignment.Center]
      151 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      153 SETTABLEKS                       R2 R1 K8 ["properties"]
      155 SETTABLEKS                       R1 R0 K43 ["text-align-y-center"]
      157 NEWTABLE                         R1 2 0
      159 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      160 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      162 NEWTABLE                         R2 1 0
      164 LOADK                            R3 K44 [0.75]
      165 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      167 SETTABLEKS                       R2 R1 K8 ["properties"]
      169 SETTABLEKS                       R1 R0 K45 ["aspect-3-4"]
      171 NEWTABLE                         R1 1 0
      173 NEWTABLE                         R2 1 0
      175 GETIMPORT                        R3 K27 [UDim2.new]
      177 LOADK                            R4 K13 [0.5]
      178 LOADN                            R5 0
      179 LOADN                            R6 1
      180 LOADN                            R7 0
      181 CALL                             R3 4 1
      182 SETTABLEKS                       R3 R2 K28 ["Position"]
      184 SETTABLEKS                       R2 R1 K8 ["properties"]
      186 SETTABLEKS                       R1 R0 K46 ["position-bottom-center"]
      188 NEWTABLE                         R1 2 0
      190 LOADK                            R2 K0 ["UIFlexItem"]
      191 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      193 NEWTABLE                         R2 1 0
      195 GETIMPORT                        R3 K48 [Enum.UIFlexMode.Shrink]
      197 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      199 SETTABLEKS                       R2 R1 K8 ["properties"]
      201 SETTABLEKS                       R1 R0 K49 ["shrink"]
      203 NEWTABLE                         R1 1 0
      205 NEWTABLE                         R2 1 0
      207 GETIMPORT                        R3 K51 [Enum.TextYAlignment.Bottom]
      209 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      211 SETTABLEKS                       R2 R1 K8 ["properties"]
      213 SETTABLEKS                       R1 R0 K52 ["text-align-y-bottom"]
      215 NEWTABLE                         R1 1 0
      217 NEWTABLE                         R2 1 0
      219 GETIMPORT                        R3 K54 [Enum.TextXAlignment.Center]
      221 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      223 SETTABLEKS                       R2 R1 K8 ["properties"]
      225 SETTABLEKS                       R1 R0 K55 ["text-align-x-center"]
      227 NEWTABLE                         R1 2 0
      229 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      230 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      232 NEWTABLE                         R2 1 0
      234 LOADK                            R3 K56 [1.778]
      235 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      237 SETTABLEKS                       R2 R1 K8 ["properties"]
      239 SETTABLEKS                       R1 R0 K57 ["aspect-16-9"]
      241 NEWTABLE                         R1 2 0
      243 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      244 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      246 NEWTABLE                         R2 1 0
      248 LOADN                            R3 1
      249 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      251 SETTABLEKS                       R2 R1 K8 ["properties"]
      253 SETTABLEKS                       R1 R0 K58 ["aspect-1-1"]
      255 NEWTABLE                         R1 1 0
      257 NEWTABLE                         R2 1 0
      259 GETIMPORT                        R3 K60 [Enum.TextXAlignment.Left]
      261 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      263 SETTABLEKS                       R2 R1 K8 ["properties"]
      265 SETTABLEKS                       R1 R0 K61 ["text-align-x-left"]
      267 NEWTABLE                         R1 1 0
      269 NEWTABLE                         R2 1 0
      271 GETIMPORT                        R3 K27 [UDim2.new]
      273 LOADN                            R4 0
      274 LOADN                            R5 0
      275 LOADN                            R6 1
      276 LOADN                            R7 0
      277 CALL                             R3 4 1
      278 SETTABLEKS                       R3 R2 K28 ["Position"]
      280 SETTABLEKS                       R2 R1 K8 ["properties"]
      282 SETTABLEKS                       R1 R0 K62 ["position-bottom-left"]
      284 NEWTABLE                         R1 1 0
      286 NEWTABLE                         R2 1 0
      288 GETIMPORT                        R3 K64 [Enum.TextXAlignment.Right]
      290 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      292 SETTABLEKS                       R2 R1 K8 ["properties"]
      294 SETTABLEKS                       R1 R0 K65 ["text-align-x-right"]
      296 NEWTABLE                         R1 2 0
      298 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      299 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      301 NEWTABLE                         R2 1 0
      303 LOADK                            R3 K66 [0.667]
      304 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      306 SETTABLEKS                       R2 R1 K8 ["properties"]
      308 SETTABLEKS                       R1 R0 K67 ["aspect-2-3"]
      310 NEWTABLE                         R1 2 0
      312 LOADK                            R2 K0 ["UIFlexItem"]
      313 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      315 NEWTABLE                         R2 1 0
      317 GETIMPORT                        R3 K70 [Enum.ItemLineAlignment.End]
      319 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      321 SETTABLEKS                       R2 R1 K8 ["properties"]
      323 SETTABLEKS                       R1 R0 K71 ["self-end"]
      325 NEWTABLE                         R1 1 0
      327 NEWTABLE                         R2 1 0
      329 GETIMPORT                        R3 K12 [Vector2.new]
      331 LOADN                            R4 1
      332 LOADN                            R5 1
      333 CALL                             R3 2 1
      334 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      336 SETTABLEKS                       R2 R1 K8 ["properties"]
      338 SETTABLEKS                       R1 R0 K72 ["anchor-bottom-right"]
      340 NEWTABLE                         R1 2 0
      342 LOADK                            R2 K0 ["UIFlexItem"]
      343 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      345 NEWTABLE                         R2 2 0
      347 LOADN                            R3 2
      348 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      350 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      352 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      354 SETTABLEKS                       R2 R1 K8 ["properties"]
      356 SETTABLEKS                       R1 R0 K73 ["shrink-2"]
      358 NEWTABLE                         R1 1 0
      360 NEWTABLE                         R2 1 0
      362 LOADB                            R3 0
      363 SETTABLEKS                       R3 R2 K30 ["ClipsDescendants"]
      365 SETTABLEKS                       R2 R1 K8 ["properties"]
      367 SETTABLEKS                       R1 R0 K74 ["no-clip"]
      369 NEWTABLE                         R1 1 0
      371 NEWTABLE                         R2 1 0
      373 GETIMPORT                        R3 K76 [Enum.AutomaticSize.None]
      375 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      377 SETTABLEKS                       R2 R1 K8 ["properties"]
      379 SETTABLEKS                       R1 R0 K77 ["auto-none"]
      381 NEWTABLE                         R1 1 0
      383 NEWTABLE                         R2 1 0
      385 GETIMPORT                        R3 K12 [Vector2.new]
      387 LOADN                            R4 0
      388 LOADN                            R5 1
      389 CALL                             R3 2 1
      390 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      392 SETTABLEKS                       R2 R1 K8 ["properties"]
      394 SETTABLEKS                       R1 R0 K78 ["anchor-bottom-left"]
      396 NEWTABLE                         R1 4 0
      398 NEWTABLE                         R2 1 0
      400 LOADK                            R3 K79 ["$FontBodyLarge"]
      401 SETTABLEKS                       R3 R2 K80 ["Font"]
      403 SETTABLEKS                       R2 R1 K8 ["properties"]
      405 LOADN                            R2 255
      406 SETTABLEKS                       R2 R1 K81 ["priority"]
      408 NEWTABLE                         R2 0 1
      410 NEWTABLE                         R3 2 0
      412 LOADK                            R4 K82 ["FontBodyLarge"]
      413 SETTABLEKS                       R4 R3 K83 ["name"]
      415 GETIMPORT                        R4 K85 [Enum.Font.BuilderSans]
      417 SETTABLEKS                       R4 R3 K86 ["value"]
      419 SETTABLEN                        R3 R2 1
      420 SETTABLEKS                       R2 R1 K87 ["attributes"]
      422 SETTABLEKS                       R1 R0 K88 ["text-defaults"]
      424 NEWTABLE                         R1 1 0
      426 NEWTABLE                         R2 1 0
      428 LOADB                            R3 1
      429 SETTABLEKS                       R3 R2 K32 ["TextWrapped"]
      431 SETTABLEKS                       R2 R1 K8 ["properties"]
      433 SETTABLEKS                       R1 R0 K89 ["text-wrap"]
      435 NEWTABLE                         R1 1 0
      437 NEWTABLE                         R2 1 0
      439 GETIMPORT                        R3 K27 [UDim2.new]
      441 LOADK                            R4 K13 [0.5]
      442 LOADN                            R5 0
      443 LOADK                            R6 K13 [0.5]
      444 LOADN                            R7 0
      445 CALL                             R3 4 1
      446 SETTABLEKS                       R3 R2 K28 ["Position"]
      448 SETTABLEKS                       R2 R1 K8 ["properties"]
      450 SETTABLEKS                       R1 R0 K90 ["position-center-center"]
      452 NEWTABLE                         R1 1 0
      454 NEWTABLE                         R2 1 0
      456 GETIMPORT                        R3 K12 [Vector2.new]
      458 LOADN                            R4 1
      459 LOADK                            R5 K13 [0.5]
      460 CALL                             R3 2 1
      461 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      463 SETTABLEKS                       R2 R1 K8 ["properties"]
      465 SETTABLEKS                       R1 R0 K91 ["anchor-center-right"]
      467 NEWTABLE                         R1 2 0
      469 LOADK                            R2 K0 ["UIFlexItem"]
      470 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      472 NEWTABLE                         R2 2 0
      474 LOADN                            R3 4
      475 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      477 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      479 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      481 SETTABLEKS                       R2 R1 K8 ["properties"]
      483 SETTABLEKS                       R1 R0 K92 ["shrink-4"]
      485 NEWTABLE                         R1 2 0
      487 LOADK                            R2 K0 ["UIFlexItem"]
      488 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      490 NEWTABLE                         R2 1 0
      492 GETIMPORT                        R3 K93 [Enum.ItemLineAlignment.Center]
      494 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      496 SETTABLEKS                       R2 R1 K8 ["properties"]
      498 SETTABLEKS                       R1 R0 K94 ["self-center"]
      500 NEWTABLE                         R1 1 0
      502 NEWTABLE                         R2 1 0
      504 GETIMPORT                        R3 K27 [UDim2.new]
      506 LOADN                            R4 0
      507 LOADN                            R5 0
      508 LOADN                            R6 0
      509 LOADN                            R7 0
      510 CALL                             R3 4 1
      511 SETTABLEKS                       R3 R2 K28 ["Position"]
      513 SETTABLEKS                       R2 R1 K8 ["properties"]
      515 SETTABLEKS                       R1 R0 K95 ["position-top-left"]
      517 NEWTABLE                         R1 1 0
      519 NEWTABLE                         R2 1 0
      521 GETIMPORT                        R3 K97 [Enum.TextYAlignment.Top]
      523 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      525 SETTABLEKS                       R2 R1 K8 ["properties"]
      527 SETTABLEKS                       R1 R0 K98 ["text-align-y-top"]
      529 NEWTABLE                         R1 1 0
      531 NEWTABLE                         R2 1 0
      533 GETIMPORT                        R3 K27 [UDim2.new]
      535 LOADN                            R4 1
      536 LOADN                            R5 0
      537 LOADN                            R6 0
      538 LOADN                            R7 0
      539 CALL                             R3 4 1
      540 SETTABLEKS                       R3 R2 K28 ["Position"]
      542 SETTABLEKS                       R2 R1 K8 ["properties"]
      544 SETTABLEKS                       R1 R0 K99 ["position-top-right"]
      546 NEWTABLE                         R1 2 0
      548 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      549 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      551 NEWTABLE                         R2 1 0
      553 LOADK                            R3 K13 [0.5]
      554 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      556 SETTABLEKS                       R2 R1 K8 ["properties"]
      558 SETTABLEKS                       R1 R0 K100 ["aspect-1-2"]
      560 NEWTABLE                         R1 2 0
      562 LOADK                            R2 K0 ["UIFlexItem"]
      563 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      565 NEWTABLE                         R2 2 0
      567 LOADN                            R3 4
      568 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      570 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      572 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      574 SETTABLEKS                       R2 R1 K8 ["properties"]
      576 SETTABLEKS                       R1 R0 K101 ["grow-4"]
      578 NEWTABLE                         R1 2 0
      580 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      581 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      583 NEWTABLE                         R2 1 0
      585 LOADK                            R3 K102 [0.563]
      586 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      588 SETTABLEKS                       R2 R1 K8 ["properties"]
      590 SETTABLEKS                       R1 R0 K103 ["aspect-9-16"]
      592 NEWTABLE                         R1 2 0
      594 LOADK                            R2 K0 ["UIFlexItem"]
      595 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      597 NEWTABLE                         R2 1 0
      599 GETIMPORT                        R3 K105 [Enum.UIFlexMode.Grow]
      601 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      603 SETTABLEKS                       R2 R1 K8 ["properties"]
      605 SETTABLEKS                       R1 R0 K106 ["grow"]
      607 NEWTABLE                         R1 2 0
      609 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      610 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      612 NEWTABLE                         R2 1 0
      614 LOADK                            R3 K107 [1.5]
      615 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      617 SETTABLEKS                       R2 R1 K8 ["properties"]
      619 SETTABLEKS                       R1 R0 K108 ["aspect-3-2"]
      621 NEWTABLE                         R1 1 0
      623 NEWTABLE                         R2 1 0
      625 GETIMPORT                        R3 K12 [Vector2.new]
      627 LOADN                            R4 0
      628 LOADK                            R5 K13 [0.5]
      629 CALL                             R3 2 1
      630 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      632 SETTABLEKS                       R2 R1 K8 ["properties"]
      634 SETTABLEKS                       R1 R0 K109 ["anchor-center-left"]
      636 NEWTABLE                         R1 2 0
      638 LOADK                            R2 K0 ["UIFlexItem"]
      639 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      641 NEWTABLE                         R2 2 0
      643 LOADN                            R3 5
      644 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      646 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      648 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      650 SETTABLEKS                       R2 R1 K8 ["properties"]
      652 SETTABLEKS                       R1 R0 K110 ["grow-5"]
      654 NEWTABLE                         R1 2 0
      656 LOADK                            R2 K0 ["UIFlexItem"]
      657 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      659 NEWTABLE                         R2 1 0
      661 GETIMPORT                        R3 K112 [Enum.ItemLineAlignment.Start]
      663 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      665 SETTABLEKS                       R2 R1 K8 ["properties"]
      667 SETTABLEKS                       R1 R0 K113 ["self-start"]
      669 NEWTABLE                         R1 1 0
      671 NEWTABLE                         R2 1 0
      673 GETIMPORT                        R3 K12 [Vector2.new]
      675 LOADK                            R4 K13 [0.5]
      676 LOADN                            R5 0
      677 CALL                             R3 2 1
      678 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      680 SETTABLEKS                       R2 R1 K8 ["properties"]
      682 SETTABLEKS                       R1 R0 K114 ["anchor-top-center"]
      684 NEWTABLE                         R1 2 0
      686 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      687 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      689 NEWTABLE                         R2 1 0
      691 LOADK                            R3 K115 [1.25]
      692 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      694 SETTABLEKS                       R2 R1 K8 ["properties"]
      696 SETTABLEKS                       R1 R0 K116 ["aspect-5-4"]
      698 NEWTABLE                         R1 1 0
      700 NEWTABLE                         R2 1 0
      702 LOADN                            R3 0
      703 SETTABLEKS                       R3 R2 K117 ["BackgroundTransparency"]
      705 SETTABLEKS                       R2 R1 K8 ["properties"]
      707 SETTABLEKS                       R1 R0 K118 ["x-default-transparency"]
      709 NEWTABLE                         R1 2 0
      711 LOADK                            R2 K0 ["UIFlexItem"]
      712 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      714 NEWTABLE                         R2 1 0
      716 GETIMPORT                        R3 K119 [Enum.UIFlexMode.None]
      718 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      720 SETTABLEKS                       R2 R1 K8 ["properties"]
      722 SETTABLEKS                       R1 R0 K120 ["no-flex"]
      724 NEWTABLE                         R1 1 0
      726 NEWTABLE                         R2 1 0
      728 GETIMPORT                        R3 K27 [UDim2.new]
      730 LOADN                            R4 1
      731 LOADN                            R5 0
      732 LOADK                            R6 K13 [0.5]
      733 LOADN                            R7 0
      734 CALL                             R3 4 1
      735 SETTABLEKS                       R3 R2 K28 ["Position"]
      737 SETTABLEKS                       R2 R1 K8 ["properties"]
      739 SETTABLEKS                       R1 R0 K121 ["position-center-right"]
      741 NEWTABLE                         R1 1 0
      743 NEWTABLE                         R2 1 0
      745 GETIMPORT                        R3 K123 [Enum.TextTruncate.AtEnd]
      747 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      749 SETTABLEKS                       R2 R1 K8 ["properties"]
      751 SETTABLEKS                       R1 R0 K124 ["text-truncate-end"]
      753 NEWTABLE                         R1 1 0
      755 NEWTABLE                         R2 1 0
      757 GETIMPORT                        R3 K125 [Enum.TextTruncate.None]
      759 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      761 SETTABLEKS                       R2 R1 K8 ["properties"]
      763 SETTABLEKS                       R1 R0 K126 ["text-truncate-none"]
      765 NEWTABLE                         R1 2 0
      767 LOADK                            R2 K0 ["UIFlexItem"]
      768 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      770 NEWTABLE                         R2 1 0
      772 GETIMPORT                        R3 K128 [Enum.UIFlexMode.Fill]
      774 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      776 SETTABLEKS                       R2 R1 K8 ["properties"]
      778 SETTABLEKS                       R1 R0 K129 ["fill"]
      780 NEWTABLE                         R1 2 0
      782 LOADK                            R2 K0 ["UIFlexItem"]
      783 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      785 NEWTABLE                         R2 2 0
      787 LOADN                            R3 1
      788 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      790 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      792 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      794 SETTABLEKS                       R2 R1 K8 ["properties"]
      796 SETTABLEKS                       R1 R0 K130 ["shrink-1"]
      798 NEWTABLE                         R1 1 0
      800 NEWTABLE                         R2 1 0
      802 GETIMPORT                        R3 K12 [Vector2.new]
      804 LOADK                            R4 K13 [0.5]
      805 LOADK                            R5 K13 [0.5]
      806 CALL                             R3 2 1
      807 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      809 SETTABLEKS                       R2 R1 K8 ["properties"]
      811 SETTABLEKS                       R1 R0 K131 ["anchor-center-center"]
      813 NEWTABLE                         R1 2 0
      815 LOADK                            R2 K0 ["UIFlexItem"]
      816 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      818 NEWTABLE                         R2 2 0
      820 LOADN                            R3 2
      821 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      823 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      825 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      827 SETTABLEKS                       R2 R1 K8 ["properties"]
      829 SETTABLEKS                       R1 R0 K132 ["grow-2"]
      831 NEWTABLE                         R1 2 0
      833 LOADK                            R2 K0 ["UIFlexItem"]
      834 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      836 NEWTABLE                         R2 1 0
      838 GETIMPORT                        R3 K134 [Enum.ItemLineAlignment.Stretch]
      840 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      842 SETTABLEKS                       R2 R1 K8 ["properties"]
      844 SETTABLEKS                       R1 R0 K135 ["self-stretch"]
      846 NEWTABLE                         R1 1 0
      848 NEWTABLE                         R2 1 0
      850 GETIMPORT                        R3 K12 [Vector2.new]
      852 LOADN                            R4 0
      853 LOADN                            R5 0
      854 CALL                             R3 2 1
      855 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      857 SETTABLEKS                       R2 R1 K8 ["properties"]
      859 SETTABLEKS                       R1 R0 K136 ["anchor-top-left"]
      861 NEWTABLE                         R1 2 0
      863 LOADK                            R2 K0 ["UIFlexItem"]
      864 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      866 NEWTABLE                         R2 2 0
      868 LOADN                            R3 1
      869 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      871 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      873 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      875 SETTABLEKS                       R2 R1 K8 ["properties"]
      877 SETTABLEKS                       R1 R0 K137 ["grow-1"]
      879 NEWTABLE                         R1 1 0
      881 NEWTABLE                         R2 1 0
      883 GETIMPORT                        R3 K139 [Enum.AutomaticSize.Y]
      885 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      887 SETTABLEKS                       R2 R1 K8 ["properties"]
      889 SETTABLEKS                       R1 R0 K140 ["auto-y"]
      891 NEWTABLE                         R1 1 0
      893 NEWTABLE                         R2 1 0
      895 LOADN                            R3 8
      896 SETTABLEKS                       R3 R2 K141 ["TextSize"]
      898 SETTABLEKS                       R2 R1 K8 ["properties"]
      900 SETTABLEKS                       R1 R0 K142 ["x-default-text-size"]
      902 NEWTABLE                         R1 1 0
      904 NEWTABLE                         R2 1 0
      906 GETIMPORT                        R3 K27 [UDim2.new]
      908 LOADN                            R4 0
      909 LOADN                            R5 0
      910 LOADK                            R6 K13 [0.5]
      911 LOADN                            R7 0
      912 CALL                             R3 4 1
      913 SETTABLEKS                       R3 R2 K28 ["Position"]
      915 SETTABLEKS                       R2 R1 K8 ["properties"]
      917 SETTABLEKS                       R1 R0 K143 ["position-center-left"]
      919 NEWTABLE                         R1 1 0
      921 NEWTABLE                         R2 1 0
      923 GETIMPORT                        R3 K145 [Enum.AutomaticSize.XY]
      925 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      927 SETTABLEKS                       R2 R1 K8 ["properties"]
      929 SETTABLEKS                       R1 R0 K146 ["auto-xy"]
      931 NEWTABLE                         R1 1 0
      933 NEWTABLE                         R2 1 0
      935 GETIMPORT                        R3 K27 [UDim2.new]
      937 LOADN                            R4 1
      938 LOADN                            R5 0
      939 LOADN                            R6 1
      940 LOADN                            R7 0
      941 CALL                             R3 4 1
      942 SETTABLEKS                       R3 R2 K28 ["Position"]
      944 SETTABLEKS                       R2 R1 K8 ["properties"]
      946 SETTABLEKS                       R1 R0 K147 ["position-bottom-right"]
      948 NEWTABLE                         R1 2 0
      950 LOADK                            R2 K0 ["UIFlexItem"]
      951 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      953 NEWTABLE                         R2 1 0
      955 GETIMPORT                        R3 K149 [Enum.ItemLineAlignment.Automatic]
      957 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      959 SETTABLEKS                       R2 R1 K8 ["properties"]
      961 SETTABLEKS                       R1 R0 K150 ["self-auto"]
      963 NEWTABLE                         R1 2 0
      965 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      966 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      968 NEWTABLE                         R2 1 0
      970 LOADN                            R3 2
      971 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      973 SETTABLEKS                       R2 R1 K8 ["properties"]
      975 SETTABLEKS                       R1 R0 K151 ["aspect-2-1"]
      977 NEWTABLE                         R1 1 0
      979 NEWTABLE                         R2 1 0
      981 GETIMPORT                        R3 K12 [Vector2.new]
      983 LOADN                            R4 1
      984 LOADN                            R5 0
      985 CALL                             R3 2 1
      986 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      988 SETTABLEKS                       R2 R1 K8 ["properties"]
      990 SETTABLEKS                       R1 R0 K152 ["anchor-top-right"]
      992 NEWTABLE                         R1 2 0
      994 LOADK                            R2 K0 ["UIFlexItem"]
      995 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      997 NEWTABLE                         R2 2 0
      999 LOADN                            R3 5
     1000 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
     1002 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
     1004 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
     1006 SETTABLEKS                       R2 R1 K8 ["properties"]
     1008 SETTABLEKS                       R1 R0 K153 ["shrink-5"]
     1010 NEWTABLE                         R1 2 0
     1012 LOADN                            R2 255
     1013 SETTABLEKS                       R2 R1 K81 ["priority"]
     1015 NEWTABLE                         R2 1 0
     1017 LOADN                            R3 1
     1018 SETTABLEKS                       R3 R2 K117 ["BackgroundTransparency"]
     1020 SETTABLEKS                       R2 R1 K8 ["properties"]
     1022 SETTABLEKS                       R1 R0 K154 ["gui-object-defaults"]
     1024 RETURN                           R0 1
