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
      255 NEWTABLE                         R1 2 0
      257 LOADK                            R2 K0 ["UIFlexItem"]
      258 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      260 NEWTABLE                         R2 2 0
      262 LOADN                            R3 5
      263 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      265 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      267 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      269 SETTABLEKS                       R2 R1 K8 ["properties"]
      271 SETTABLEKS                       R1 R0 K59 ["shrink-5"]
      273 NEWTABLE                         R1 1 0
      275 NEWTABLE                         R2 1 0
      277 GETIMPORT                        R3 K27 [UDim2.new]
      279 LOADN                            R4 0
      280 LOADN                            R5 0
      281 LOADN                            R6 1
      282 LOADN                            R7 0
      283 CALL                             R3 4 1
      284 SETTABLEKS                       R3 R2 K28 ["Position"]
      286 SETTABLEKS                       R2 R1 K8 ["properties"]
      288 SETTABLEKS                       R1 R0 K60 ["position-bottom-left"]
      290 NEWTABLE                         R1 1 0
      292 NEWTABLE                         R2 1 0
      294 GETIMPORT                        R3 K62 [Enum.TextXAlignment.Right]
      296 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      298 SETTABLEKS                       R2 R1 K8 ["properties"]
      300 SETTABLEKS                       R1 R0 K63 ["text-align-x-right"]
      302 NEWTABLE                         R1 2 0
      304 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      305 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      307 NEWTABLE                         R2 1 0
      309 LOADK                            R3 K64 [0.667]
      310 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      312 SETTABLEKS                       R2 R1 K8 ["properties"]
      314 SETTABLEKS                       R1 R0 K65 ["aspect-2-3"]
      316 NEWTABLE                         R1 2 0
      318 LOADK                            R2 K0 ["UIFlexItem"]
      319 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      321 NEWTABLE                         R2 1 0
      323 GETIMPORT                        R3 K68 [Enum.ItemLineAlignment.End]
      325 SETTABLEKS                       R3 R2 K66 ["ItemLineAlignment"]
      327 SETTABLEKS                       R2 R1 K8 ["properties"]
      329 SETTABLEKS                       R1 R0 K69 ["self-end"]
      331 NEWTABLE                         R1 1 0
      333 NEWTABLE                         R2 1 0
      335 GETIMPORT                        R3 K12 [Vector2.new]
      337 LOADN                            R4 1
      338 LOADN                            R5 1
      339 CALL                             R3 2 1
      340 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      342 SETTABLEKS                       R2 R1 K8 ["properties"]
      344 SETTABLEKS                       R1 R0 K70 ["anchor-bottom-right"]
      346 NEWTABLE                         R1 2 0
      348 LOADK                            R2 K0 ["UIFlexItem"]
      349 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      351 NEWTABLE                         R2 2 0
      353 LOADN                            R3 2
      354 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      356 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      358 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      360 SETTABLEKS                       R2 R1 K8 ["properties"]
      362 SETTABLEKS                       R1 R0 K71 ["shrink-2"]
      364 NEWTABLE                         R1 1 0
      366 NEWTABLE                         R2 1 0
      368 LOADB                            R3 0
      369 SETTABLEKS                       R3 R2 K30 ["ClipsDescendants"]
      371 SETTABLEKS                       R2 R1 K8 ["properties"]
      373 SETTABLEKS                       R1 R0 K72 ["no-clip"]
      375 NEWTABLE                         R1 1 0
      377 NEWTABLE                         R2 1 0
      379 GETIMPORT                        R3 K27 [UDim2.new]
      381 LOADN                            R4 0
      382 LOADN                            R5 0
      383 LOADK                            R6 K13 [0.5]
      384 LOADN                            R7 0
      385 CALL                             R3 4 1
      386 SETTABLEKS                       R3 R2 K28 ["Position"]
      388 SETTABLEKS                       R2 R1 K8 ["properties"]
      390 SETTABLEKS                       R1 R0 K73 ["position-center-left"]
      392 NEWTABLE                         R1 1 0
      394 NEWTABLE                         R2 1 0
      396 GETIMPORT                        R3 K12 [Vector2.new]
      398 LOADN                            R4 0
      399 LOADN                            R5 1
      400 CALL                             R3 2 1
      401 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      403 SETTABLEKS                       R2 R1 K8 ["properties"]
      405 SETTABLEKS                       R1 R0 K74 ["anchor-bottom-left"]
      407 NEWTABLE                         R1 2 0
      409 LOADN                            R2 -1
      410 SETTABLEKS                       R2 R1 K75 ["priority"]
      412 NEWTABLE                         R2 1 0
      414 GETIMPORT                        R3 K78 [Enum.Font.BuilderSans]
      416 SETTABLEKS                       R3 R2 K76 ["Font"]
      418 SETTABLEKS                       R2 R1 K8 ["properties"]
      420 SETTABLEKS                       R1 R0 K79 ["text-defaults"]
      422 NEWTABLE                         R1 1 0
      424 NEWTABLE                         R2 1 0
      426 LOADB                            R3 1
      427 SETTABLEKS                       R3 R2 K32 ["TextWrapped"]
      429 SETTABLEKS                       R2 R1 K8 ["properties"]
      431 SETTABLEKS                       R1 R0 K80 ["text-wrap"]
      433 NEWTABLE                         R1 1 0
      435 NEWTABLE                         R2 1 0
      437 GETIMPORT                        R3 K27 [UDim2.new]
      439 LOADK                            R4 K13 [0.5]
      440 LOADN                            R5 0
      441 LOADK                            R6 K13 [0.5]
      442 LOADN                            R7 0
      443 CALL                             R3 4 1
      444 SETTABLEKS                       R3 R2 K28 ["Position"]
      446 SETTABLEKS                       R2 R1 K8 ["properties"]
      448 SETTABLEKS                       R1 R0 K81 ["position-center-center"]
      450 NEWTABLE                         R1 1 0
      452 NEWTABLE                         R2 1 0
      454 GETIMPORT                        R3 K12 [Vector2.new]
      456 LOADN                            R4 1
      457 LOADK                            R5 K13 [0.5]
      458 CALL                             R3 2 1
      459 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      461 SETTABLEKS                       R2 R1 K8 ["properties"]
      463 SETTABLEKS                       R1 R0 K82 ["anchor-center-right"]
      465 NEWTABLE                         R1 2 0
      467 LOADK                            R2 K0 ["UIFlexItem"]
      468 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      470 NEWTABLE                         R2 2 0
      472 LOADN                            R3 4
      473 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      475 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      477 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      479 SETTABLEKS                       R2 R1 K8 ["properties"]
      481 SETTABLEKS                       R1 R0 K83 ["shrink-4"]
      483 NEWTABLE                         R1 2 0
      485 LOADK                            R2 K0 ["UIFlexItem"]
      486 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      488 NEWTABLE                         R2 1 0
      490 GETIMPORT                        R3 K84 [Enum.ItemLineAlignment.Center]
      492 SETTABLEKS                       R3 R2 K66 ["ItemLineAlignment"]
      494 SETTABLEKS                       R2 R1 K8 ["properties"]
      496 SETTABLEKS                       R1 R0 K85 ["self-center"]
      498 NEWTABLE                         R1 1 0
      500 NEWTABLE                         R2 1 0
      502 GETIMPORT                        R3 K27 [UDim2.new]
      504 LOADN                            R4 0
      505 LOADN                            R5 0
      506 LOADN                            R6 0
      507 LOADN                            R7 0
      508 CALL                             R3 4 1
      509 SETTABLEKS                       R3 R2 K28 ["Position"]
      511 SETTABLEKS                       R2 R1 K8 ["properties"]
      513 SETTABLEKS                       R1 R0 K86 ["position-top-left"]
      515 NEWTABLE                         R1 1 0
      517 NEWTABLE                         R2 1 0
      519 GETIMPORT                        R3 K88 [Enum.TextYAlignment.Top]
      521 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      523 SETTABLEKS                       R2 R1 K8 ["properties"]
      525 SETTABLEKS                       R1 R0 K89 ["text-align-y-top"]
      527 NEWTABLE                         R1 1 0
      529 NEWTABLE                         R2 1 0
      531 GETIMPORT                        R3 K27 [UDim2.new]
      533 LOADN                            R4 1
      534 LOADN                            R5 0
      535 LOADN                            R6 0
      536 LOADN                            R7 0
      537 CALL                             R3 4 1
      538 SETTABLEKS                       R3 R2 K28 ["Position"]
      540 SETTABLEKS                       R2 R1 K8 ["properties"]
      542 SETTABLEKS                       R1 R0 K90 ["position-top-right"]
      544 NEWTABLE                         R1 2 0
      546 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      547 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      549 NEWTABLE                         R2 1 0
      551 LOADK                            R3 K13 [0.5]
      552 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      554 SETTABLEKS                       R2 R1 K8 ["properties"]
      556 SETTABLEKS                       R1 R0 K91 ["aspect-1-2"]
      558 NEWTABLE                         R1 1 0
      560 NEWTABLE                         R2 1 0
      562 GETIMPORT                        R3 K27 [UDim2.new]
      564 LOADN                            R4 1
      565 LOADN                            R5 0
      566 LOADN                            R6 1
      567 LOADN                            R7 0
      568 CALL                             R3 4 1
      569 SETTABLEKS                       R3 R2 K28 ["Position"]
      571 SETTABLEKS                       R2 R1 K8 ["properties"]
      573 SETTABLEKS                       R1 R0 K92 ["position-bottom-right"]
      575 NEWTABLE                         R1 2 0
      577 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      578 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      580 NEWTABLE                         R2 1 0
      582 LOADK                            R3 K93 [0.563]
      583 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      585 SETTABLEKS                       R2 R1 K8 ["properties"]
      587 SETTABLEKS                       R1 R0 K94 ["aspect-9-16"]
      589 NEWTABLE                         R1 1 0
      591 NEWTABLE                         R2 1 0
      593 LOADN                            R3 0
      594 SETTABLEKS                       R3 R2 K95 ["BackgroundTransparency"]
      596 SETTABLEKS                       R2 R1 K8 ["properties"]
      598 SETTABLEKS                       R1 R0 K96 ["x-default-transparency"]
      600 NEWTABLE                         R1 1 0
      602 NEWTABLE                         R2 1 0
      604 GETIMPORT                        R3 K98 [Enum.AutomaticSize.None]
      606 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      608 SETTABLEKS                       R2 R1 K8 ["properties"]
      610 SETTABLEKS                       R1 R0 K99 ["auto-none"]
      612 NEWTABLE                         R1 1 0
      614 NEWTABLE                         R2 1 0
      616 GETIMPORT                        R3 K12 [Vector2.new]
      618 LOADN                            R4 0
      619 LOADK                            R5 K13 [0.5]
      620 CALL                             R3 2 1
      621 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      623 SETTABLEKS                       R2 R1 K8 ["properties"]
      625 SETTABLEKS                       R1 R0 K100 ["anchor-center-left"]
      627 NEWTABLE                         R1 1 0
      629 NEWTABLE                         R2 1 0
      631 GETIMPORT                        R3 K12 [Vector2.new]
      633 LOADK                            R4 K13 [0.5]
      634 LOADN                            R5 0
      635 CALL                             R3 2 1
      636 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      638 SETTABLEKS                       R2 R1 K8 ["properties"]
      640 SETTABLEKS                       R1 R0 K101 ["anchor-top-center"]
      642 NEWTABLE                         R1 2 0
      644 LOADK                            R2 K0 ["UIFlexItem"]
      645 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      647 NEWTABLE                         R2 2 0
      649 LOADN                            R3 5
      650 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      652 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      654 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      656 SETTABLEKS                       R2 R1 K8 ["properties"]
      658 SETTABLEKS                       R1 R0 K102 ["grow-5"]
      660 NEWTABLE                         R1 2 0
      662 LOADK                            R2 K0 ["UIFlexItem"]
      663 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      665 NEWTABLE                         R2 1 0
      667 GETIMPORT                        R3 K104 [Enum.ItemLineAlignment.Start]
      669 SETTABLEKS                       R3 R2 K66 ["ItemLineAlignment"]
      671 SETTABLEKS                       R2 R1 K8 ["properties"]
      673 SETTABLEKS                       R1 R0 K105 ["self-start"]
      675 NEWTABLE                         R1 2 0
      677 LOADK                            R2 K0 ["UIFlexItem"]
      678 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      680 NEWTABLE                         R2 2 0
      682 LOADN                            R3 4
      683 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      685 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      687 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      689 SETTABLEKS                       R2 R1 K8 ["properties"]
      691 SETTABLEKS                       R1 R0 K106 ["grow-4"]
      693 NEWTABLE                         R1 1 0
      695 NEWTABLE                         R2 1 0
      697 GETIMPORT                        R3 K27 [UDim2.new]
      699 LOADN                            R4 1
      700 LOADN                            R5 0
      701 LOADK                            R6 K13 [0.5]
      702 LOADN                            R7 0
      703 CALL                             R3 4 1
      704 SETTABLEKS                       R3 R2 K28 ["Position"]
      706 SETTABLEKS                       R2 R1 K8 ["properties"]
      708 SETTABLEKS                       R1 R0 K107 ["position-center-right"]
      710 NEWTABLE                         R1 1 0
      712 NEWTABLE                         R2 1 0
      714 GETIMPORT                        R3 K109 [Enum.TextTruncate.AtEnd]
      716 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      718 SETTABLEKS                       R2 R1 K8 ["properties"]
      720 SETTABLEKS                       R1 R0 K110 ["text-truncate-end"]
      722 NEWTABLE                         R1 2 0
      724 LOADK                            R2 K0 ["UIFlexItem"]
      725 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      727 NEWTABLE                         R2 1 0
      729 GETIMPORT                        R3 K112 [Enum.UIFlexMode.Grow]
      731 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      733 SETTABLEKS                       R2 R1 K8 ["properties"]
      735 SETTABLEKS                       R1 R0 K113 ["grow"]
      737 NEWTABLE                         R1 1 0
      739 NEWTABLE                         R2 1 0
      741 GETIMPORT                        R3 K12 [Vector2.new]
      743 LOADK                            R4 K13 [0.5]
      744 LOADK                            R5 K13 [0.5]
      745 CALL                             R3 2 1
      746 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      748 SETTABLEKS                       R2 R1 K8 ["properties"]
      750 SETTABLEKS                       R1 R0 K114 ["anchor-center-center"]
      752 NEWTABLE                         R1 2 0
      754 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      755 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      757 NEWTABLE                         R2 1 0
      759 LOADK                            R3 K115 [1.25]
      760 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      762 SETTABLEKS                       R2 R1 K8 ["properties"]
      764 SETTABLEKS                       R1 R0 K116 ["aspect-5-4"]
      766 NEWTABLE                         R1 1 0
      768 NEWTABLE                         R2 1 0
      770 GETIMPORT                        R3 K117 [Enum.TextTruncate.None]
      772 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      774 SETTABLEKS                       R2 R1 K8 ["properties"]
      776 SETTABLEKS                       R1 R0 K118 ["text-truncate-none"]
      778 NEWTABLE                         R1 2 0
      780 LOADK                            R2 K0 ["UIFlexItem"]
      781 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      783 NEWTABLE                         R2 2 0
      785 LOADN                            R3 2
      786 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      788 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      790 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      792 SETTABLEKS                       R2 R1 K8 ["properties"]
      794 SETTABLEKS                       R1 R0 K119 ["grow-2"]
      796 NEWTABLE                         R1 2 0
      798 LOADK                            R2 K0 ["UIFlexItem"]
      799 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      801 NEWTABLE                         R2 1 0
      803 GETIMPORT                        R3 K121 [Enum.ItemLineAlignment.Stretch]
      805 SETTABLEKS                       R3 R2 K66 ["ItemLineAlignment"]
      807 SETTABLEKS                       R2 R1 K8 ["properties"]
      809 SETTABLEKS                       R1 R0 K122 ["self-stretch"]
      811 NEWTABLE                         R1 2 0
      813 LOADK                            R2 K0 ["UIFlexItem"]
      814 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      816 NEWTABLE                         R2 1 0
      818 GETIMPORT                        R3 K124 [Enum.UIFlexMode.Fill]
      820 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      822 SETTABLEKS                       R2 R1 K8 ["properties"]
      824 SETTABLEKS                       R1 R0 K125 ["fill"]
      826 NEWTABLE                         R1 2 0
      828 LOADK                            R2 K0 ["UIFlexItem"]
      829 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      831 NEWTABLE                         R2 2 0
      833 LOADN                            R3 1
      834 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      836 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      838 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      840 SETTABLEKS                       R2 R1 K8 ["properties"]
      842 SETTABLEKS                       R1 R0 K126 ["grow-1"]
      844 NEWTABLE                         R1 2 0
      846 LOADK                            R2 K0 ["UIFlexItem"]
      847 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      849 NEWTABLE                         R2 2 0
      851 LOADN                            R3 1
      852 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      854 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      856 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      858 SETTABLEKS                       R2 R1 K8 ["properties"]
      860 SETTABLEKS                       R1 R0 K127 ["shrink-1"]
      862 NEWTABLE                         R1 2 0
      864 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      865 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      867 NEWTABLE                         R2 1 0
      869 LOADK                            R3 K128 [1.5]
      870 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      872 SETTABLEKS                       R2 R1 K8 ["properties"]
      874 SETTABLEKS                       R1 R0 K129 ["aspect-3-2"]
      876 NEWTABLE                         R1 1 0
      878 NEWTABLE                         R2 1 0
      880 GETIMPORT                        R3 K12 [Vector2.new]
      882 LOADN                            R4 0
      883 LOADN                            R5 0
      884 CALL                             R3 2 1
      885 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      887 SETTABLEKS                       R2 R1 K8 ["properties"]
      889 SETTABLEKS                       R1 R0 K130 ["anchor-top-left"]
      891 NEWTABLE                         R1 1 0
      893 NEWTABLE                         R2 1 0
      895 GETIMPORT                        R3 K132 [Enum.AutomaticSize.XY]
      897 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      899 SETTABLEKS                       R2 R1 K8 ["properties"]
      901 SETTABLEKS                       R1 R0 K133 ["auto-xy"]
      903 NEWTABLE                         R1 1 0
      905 NEWTABLE                         R2 1 0
      907 GETIMPORT                        R3 K135 [Enum.TextXAlignment.Left]
      909 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      911 SETTABLEKS                       R2 R1 K8 ["properties"]
      913 SETTABLEKS                       R1 R0 K136 ["text-align-x-left"]
      915 NEWTABLE                         R1 2 0
      917 LOADK                            R2 K0 ["UIFlexItem"]
      918 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      920 NEWTABLE                         R2 1 0
      922 GETIMPORT                        R3 K138 [Enum.ItemLineAlignment.Automatic]
      924 SETTABLEKS                       R3 R2 K66 ["ItemLineAlignment"]
      926 SETTABLEKS                       R2 R1 K8 ["properties"]
      928 SETTABLEKS                       R1 R0 K139 ["self-auto"]
      930 NEWTABLE                         R1 2 0
      932 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      933 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      935 NEWTABLE                         R2 1 0
      937 LOADN                            R3 2
      938 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      940 SETTABLEKS                       R2 R1 K8 ["properties"]
      942 SETTABLEKS                       R1 R0 K140 ["aspect-2-1"]
      944 NEWTABLE                         R1 1 0
      946 NEWTABLE                         R2 1 0
      948 GETIMPORT                        R3 K12 [Vector2.new]
      950 LOADN                            R4 1
      951 LOADN                            R5 0
      952 CALL                             R3 2 1
      953 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      955 SETTABLEKS                       R2 R1 K8 ["properties"]
      957 SETTABLEKS                       R1 R0 K141 ["anchor-top-right"]
      959 NEWTABLE                         R1 2 0
      961 LOADN                            R2 -1
      962 SETTABLEKS                       R2 R1 K75 ["priority"]
      964 NEWTABLE                         R2 1 0
      966 LOADN                            R3 1
      967 SETTABLEKS                       R3 R2 K95 ["BackgroundTransparency"]
      969 SETTABLEKS                       R2 R1 K8 ["properties"]
      971 SETTABLEKS                       R1 R0 K142 ["gui-object-defaults"]
      973 NEWTABLE                         R1 1 0
      975 NEWTABLE                         R2 1 0
      977 GETIMPORT                        R3 K144 [Enum.AutomaticSize.Y]
      979 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      981 SETTABLEKS                       R2 R1 K8 ["properties"]
      983 SETTABLEKS                       R1 R0 K145 ["auto-y"]
      985 RETURN                           R0 1
