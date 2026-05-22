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
      396 NEWTABLE                         R1 2 0
      398 LOADN                            R2 255
      399 SETTABLEKS                       R2 R1 K79 ["priority"]
      401 NEWTABLE                         R2 1 0
      403 GETIMPORT                        R3 K82 [Enum.Font.BuilderSans]
      405 SETTABLEKS                       R3 R2 K80 ["Font"]
      407 SETTABLEKS                       R2 R1 K8 ["properties"]
      409 SETTABLEKS                       R1 R0 K83 ["text-defaults"]
      411 NEWTABLE                         R1 1 0
      413 NEWTABLE                         R2 1 0
      415 LOADB                            R3 1
      416 SETTABLEKS                       R3 R2 K32 ["TextWrapped"]
      418 SETTABLEKS                       R2 R1 K8 ["properties"]
      420 SETTABLEKS                       R1 R0 K84 ["text-wrap"]
      422 NEWTABLE                         R1 1 0
      424 NEWTABLE                         R2 1 0
      426 GETIMPORT                        R3 K27 [UDim2.new]
      428 LOADK                            R4 K13 [0.5]
      429 LOADN                            R5 0
      430 LOADK                            R6 K13 [0.5]
      431 LOADN                            R7 0
      432 CALL                             R3 4 1
      433 SETTABLEKS                       R3 R2 K28 ["Position"]
      435 SETTABLEKS                       R2 R1 K8 ["properties"]
      437 SETTABLEKS                       R1 R0 K85 ["position-center-center"]
      439 NEWTABLE                         R1 1 0
      441 NEWTABLE                         R2 1 0
      443 GETIMPORT                        R3 K12 [Vector2.new]
      445 LOADN                            R4 1
      446 LOADK                            R5 K13 [0.5]
      447 CALL                             R3 2 1
      448 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      450 SETTABLEKS                       R2 R1 K8 ["properties"]
      452 SETTABLEKS                       R1 R0 K86 ["anchor-center-right"]
      454 NEWTABLE                         R1 2 0
      456 LOADK                            R2 K0 ["UIFlexItem"]
      457 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      459 NEWTABLE                         R2 2 0
      461 LOADN                            R3 4
      462 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      464 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      466 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      468 SETTABLEKS                       R2 R1 K8 ["properties"]
      470 SETTABLEKS                       R1 R0 K87 ["shrink-4"]
      472 NEWTABLE                         R1 2 0
      474 LOADK                            R2 K0 ["UIFlexItem"]
      475 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      477 NEWTABLE                         R2 1 0
      479 GETIMPORT                        R3 K88 [Enum.ItemLineAlignment.Center]
      481 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      483 SETTABLEKS                       R2 R1 K8 ["properties"]
      485 SETTABLEKS                       R1 R0 K89 ["self-center"]
      487 NEWTABLE                         R1 1 0
      489 NEWTABLE                         R2 1 0
      491 GETIMPORT                        R3 K27 [UDim2.new]
      493 LOADN                            R4 0
      494 LOADN                            R5 0
      495 LOADN                            R6 0
      496 LOADN                            R7 0
      497 CALL                             R3 4 1
      498 SETTABLEKS                       R3 R2 K28 ["Position"]
      500 SETTABLEKS                       R2 R1 K8 ["properties"]
      502 SETTABLEKS                       R1 R0 K90 ["position-top-left"]
      504 NEWTABLE                         R1 1 0
      506 NEWTABLE                         R2 1 0
      508 GETIMPORT                        R3 K92 [Enum.TextYAlignment.Top]
      510 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      512 SETTABLEKS                       R2 R1 K8 ["properties"]
      514 SETTABLEKS                       R1 R0 K93 ["text-align-y-top"]
      516 NEWTABLE                         R1 1 0
      518 NEWTABLE                         R2 1 0
      520 GETIMPORT                        R3 K27 [UDim2.new]
      522 LOADN                            R4 1
      523 LOADN                            R5 0
      524 LOADN                            R6 0
      525 LOADN                            R7 0
      526 CALL                             R3 4 1
      527 SETTABLEKS                       R3 R2 K28 ["Position"]
      529 SETTABLEKS                       R2 R1 K8 ["properties"]
      531 SETTABLEKS                       R1 R0 K94 ["position-top-right"]
      533 NEWTABLE                         R1 2 0
      535 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      536 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      538 NEWTABLE                         R2 1 0
      540 LOADK                            R3 K13 [0.5]
      541 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      543 SETTABLEKS                       R2 R1 K8 ["properties"]
      545 SETTABLEKS                       R1 R0 K95 ["aspect-1-2"]
      547 NEWTABLE                         R1 2 0
      549 LOADK                            R2 K0 ["UIFlexItem"]
      550 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      552 NEWTABLE                         R2 2 0
      554 LOADN                            R3 4
      555 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      557 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      559 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      561 SETTABLEKS                       R2 R1 K8 ["properties"]
      563 SETTABLEKS                       R1 R0 K96 ["grow-4"]
      565 NEWTABLE                         R1 2 0
      567 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      568 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      570 NEWTABLE                         R2 1 0
      572 LOADK                            R3 K97 [0.563]
      573 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      575 SETTABLEKS                       R2 R1 K8 ["properties"]
      577 SETTABLEKS                       R1 R0 K98 ["aspect-9-16"]
      579 NEWTABLE                         R1 2 0
      581 LOADK                            R2 K0 ["UIFlexItem"]
      582 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      584 NEWTABLE                         R2 1 0
      586 GETIMPORT                        R3 K100 [Enum.UIFlexMode.Grow]
      588 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      590 SETTABLEKS                       R2 R1 K8 ["properties"]
      592 SETTABLEKS                       R1 R0 K101 ["grow"]
      594 NEWTABLE                         R1 2 0
      596 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      597 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      599 NEWTABLE                         R2 1 0
      601 LOADK                            R3 K102 [1.5]
      602 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      604 SETTABLEKS                       R2 R1 K8 ["properties"]
      606 SETTABLEKS                       R1 R0 K103 ["aspect-3-2"]
      608 NEWTABLE                         R1 1 0
      610 NEWTABLE                         R2 1 0
      612 GETIMPORT                        R3 K12 [Vector2.new]
      614 LOADN                            R4 0
      615 LOADK                            R5 K13 [0.5]
      616 CALL                             R3 2 1
      617 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      619 SETTABLEKS                       R2 R1 K8 ["properties"]
      621 SETTABLEKS                       R1 R0 K104 ["anchor-center-left"]
      623 NEWTABLE                         R1 2 0
      625 LOADK                            R2 K0 ["UIFlexItem"]
      626 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      628 NEWTABLE                         R2 2 0
      630 LOADN                            R3 5
      631 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      633 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      635 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      637 SETTABLEKS                       R2 R1 K8 ["properties"]
      639 SETTABLEKS                       R1 R0 K105 ["grow-5"]
      641 NEWTABLE                         R1 2 0
      643 LOADK                            R2 K0 ["UIFlexItem"]
      644 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      646 NEWTABLE                         R2 1 0
      648 GETIMPORT                        R3 K107 [Enum.ItemLineAlignment.Start]
      650 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      652 SETTABLEKS                       R2 R1 K8 ["properties"]
      654 SETTABLEKS                       R1 R0 K108 ["self-start"]
      656 NEWTABLE                         R1 1 0
      658 NEWTABLE                         R2 1 0
      660 GETIMPORT                        R3 K12 [Vector2.new]
      662 LOADK                            R4 K13 [0.5]
      663 LOADN                            R5 0
      664 CALL                             R3 2 1
      665 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      667 SETTABLEKS                       R2 R1 K8 ["properties"]
      669 SETTABLEKS                       R1 R0 K109 ["anchor-top-center"]
      671 NEWTABLE                         R1 2 0
      673 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      674 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      676 NEWTABLE                         R2 1 0
      678 LOADK                            R3 K110 [1.25]
      679 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      681 SETTABLEKS                       R2 R1 K8 ["properties"]
      683 SETTABLEKS                       R1 R0 K111 ["aspect-5-4"]
      685 NEWTABLE                         R1 1 0
      687 NEWTABLE                         R2 1 0
      689 LOADN                            R3 0
      690 SETTABLEKS                       R3 R2 K112 ["BackgroundTransparency"]
      692 SETTABLEKS                       R2 R1 K8 ["properties"]
      694 SETTABLEKS                       R1 R0 K113 ["x-default-transparency"]
      696 NEWTABLE                         R1 2 0
      698 LOADK                            R2 K0 ["UIFlexItem"]
      699 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      701 NEWTABLE                         R2 1 0
      703 GETIMPORT                        R3 K114 [Enum.UIFlexMode.None]
      705 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      707 SETTABLEKS                       R2 R1 K8 ["properties"]
      709 SETTABLEKS                       R1 R0 K115 ["no-flex"]
      711 NEWTABLE                         R1 1 0
      713 NEWTABLE                         R2 1 0
      715 GETIMPORT                        R3 K27 [UDim2.new]
      717 LOADN                            R4 1
      718 LOADN                            R5 0
      719 LOADK                            R6 K13 [0.5]
      720 LOADN                            R7 0
      721 CALL                             R3 4 1
      722 SETTABLEKS                       R3 R2 K28 ["Position"]
      724 SETTABLEKS                       R2 R1 K8 ["properties"]
      726 SETTABLEKS                       R1 R0 K116 ["position-center-right"]
      728 NEWTABLE                         R1 1 0
      730 NEWTABLE                         R2 1 0
      732 GETIMPORT                        R3 K118 [Enum.TextTruncate.AtEnd]
      734 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      736 SETTABLEKS                       R2 R1 K8 ["properties"]
      738 SETTABLEKS                       R1 R0 K119 ["text-truncate-end"]
      740 NEWTABLE                         R1 1 0
      742 NEWTABLE                         R2 1 0
      744 GETIMPORT                        R3 K120 [Enum.TextTruncate.None]
      746 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      748 SETTABLEKS                       R2 R1 K8 ["properties"]
      750 SETTABLEKS                       R1 R0 K121 ["text-truncate-none"]
      752 NEWTABLE                         R1 2 0
      754 LOADK                            R2 K0 ["UIFlexItem"]
      755 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      757 NEWTABLE                         R2 1 0
      759 GETIMPORT                        R3 K123 [Enum.UIFlexMode.Fill]
      761 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      763 SETTABLEKS                       R2 R1 K8 ["properties"]
      765 SETTABLEKS                       R1 R0 K124 ["fill"]
      767 NEWTABLE                         R1 2 0
      769 LOADK                            R2 K0 ["UIFlexItem"]
      770 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      772 NEWTABLE                         R2 2 0
      774 LOADN                            R3 1
      775 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      777 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      779 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      781 SETTABLEKS                       R2 R1 K8 ["properties"]
      783 SETTABLEKS                       R1 R0 K125 ["shrink-1"]
      785 NEWTABLE                         R1 1 0
      787 NEWTABLE                         R2 1 0
      789 GETIMPORT                        R3 K12 [Vector2.new]
      791 LOADK                            R4 K13 [0.5]
      792 LOADK                            R5 K13 [0.5]
      793 CALL                             R3 2 1
      794 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      796 SETTABLEKS                       R2 R1 K8 ["properties"]
      798 SETTABLEKS                       R1 R0 K126 ["anchor-center-center"]
      800 NEWTABLE                         R1 2 0
      802 LOADK                            R2 K0 ["UIFlexItem"]
      803 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      805 NEWTABLE                         R2 2 0
      807 LOADN                            R3 2
      808 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      810 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      812 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      814 SETTABLEKS                       R2 R1 K8 ["properties"]
      816 SETTABLEKS                       R1 R0 K127 ["grow-2"]
      818 NEWTABLE                         R1 2 0
      820 LOADK                            R2 K0 ["UIFlexItem"]
      821 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      823 NEWTABLE                         R2 1 0
      825 GETIMPORT                        R3 K129 [Enum.ItemLineAlignment.Stretch]
      827 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      829 SETTABLEKS                       R2 R1 K8 ["properties"]
      831 SETTABLEKS                       R1 R0 K130 ["self-stretch"]
      833 NEWTABLE                         R1 1 0
      835 NEWTABLE                         R2 1 0
      837 GETIMPORT                        R3 K12 [Vector2.new]
      839 LOADN                            R4 0
      840 LOADN                            R5 0
      841 CALL                             R3 2 1
      842 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      844 SETTABLEKS                       R2 R1 K8 ["properties"]
      846 SETTABLEKS                       R1 R0 K131 ["anchor-top-left"]
      848 NEWTABLE                         R1 2 0
      850 LOADK                            R2 K0 ["UIFlexItem"]
      851 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      853 NEWTABLE                         R2 2 0
      855 LOADN                            R3 1
      856 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      858 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      860 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      862 SETTABLEKS                       R2 R1 K8 ["properties"]
      864 SETTABLEKS                       R1 R0 K132 ["grow-1"]
      866 NEWTABLE                         R1 1 0
      868 NEWTABLE                         R2 1 0
      870 GETIMPORT                        R3 K134 [Enum.AutomaticSize.Y]
      872 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      874 SETTABLEKS                       R2 R1 K8 ["properties"]
      876 SETTABLEKS                       R1 R0 K135 ["auto-y"]
      878 NEWTABLE                         R1 1 0
      880 NEWTABLE                         R2 1 0
      882 LOADN                            R3 8
      883 SETTABLEKS                       R3 R2 K136 ["TextSize"]
      885 SETTABLEKS                       R2 R1 K8 ["properties"]
      887 SETTABLEKS                       R1 R0 K137 ["x-default-text-size"]
      889 NEWTABLE                         R1 1 0
      891 NEWTABLE                         R2 1 0
      893 GETIMPORT                        R3 K27 [UDim2.new]
      895 LOADN                            R4 0
      896 LOADN                            R5 0
      897 LOADK                            R6 K13 [0.5]
      898 LOADN                            R7 0
      899 CALL                             R3 4 1
      900 SETTABLEKS                       R3 R2 K28 ["Position"]
      902 SETTABLEKS                       R2 R1 K8 ["properties"]
      904 SETTABLEKS                       R1 R0 K138 ["position-center-left"]
      906 NEWTABLE                         R1 1 0
      908 NEWTABLE                         R2 1 0
      910 GETIMPORT                        R3 K140 [Enum.AutomaticSize.XY]
      912 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      914 SETTABLEKS                       R2 R1 K8 ["properties"]
      916 SETTABLEKS                       R1 R0 K141 ["auto-xy"]
      918 NEWTABLE                         R1 1 0
      920 NEWTABLE                         R2 1 0
      922 GETIMPORT                        R3 K27 [UDim2.new]
      924 LOADN                            R4 1
      925 LOADN                            R5 0
      926 LOADN                            R6 1
      927 LOADN                            R7 0
      928 CALL                             R3 4 1
      929 SETTABLEKS                       R3 R2 K28 ["Position"]
      931 SETTABLEKS                       R2 R1 K8 ["properties"]
      933 SETTABLEKS                       R1 R0 K142 ["position-bottom-right"]
      935 NEWTABLE                         R1 2 0
      937 LOADK                            R2 K0 ["UIFlexItem"]
      938 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      940 NEWTABLE                         R2 1 0
      942 GETIMPORT                        R3 K144 [Enum.ItemLineAlignment.Automatic]
      944 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      946 SETTABLEKS                       R2 R1 K8 ["properties"]
      948 SETTABLEKS                       R1 R0 K145 ["self-auto"]
      950 NEWTABLE                         R1 2 0
      952 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      953 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      955 NEWTABLE                         R2 1 0
      957 LOADN                            R3 2
      958 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      960 SETTABLEKS                       R2 R1 K8 ["properties"]
      962 SETTABLEKS                       R1 R0 K146 ["aspect-2-1"]
      964 NEWTABLE                         R1 1 0
      966 NEWTABLE                         R2 1 0
      968 GETIMPORT                        R3 K12 [Vector2.new]
      970 LOADN                            R4 1
      971 LOADN                            R5 0
      972 CALL                             R3 2 1
      973 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      975 SETTABLEKS                       R2 R1 K8 ["properties"]
      977 SETTABLEKS                       R1 R0 K147 ["anchor-top-right"]
      979 NEWTABLE                         R1 2 0
      981 LOADK                            R2 K0 ["UIFlexItem"]
      982 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      984 NEWTABLE                         R2 2 0
      986 LOADN                            R3 5
      987 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      989 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      991 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      993 SETTABLEKS                       R2 R1 K8 ["properties"]
      995 SETTABLEKS                       R1 R0 K148 ["shrink-5"]
      997 NEWTABLE                         R1 2 0
      999 LOADN                            R2 255
     1000 SETTABLEKS                       R2 R1 K79 ["priority"]
     1002 NEWTABLE                         R2 1 0
     1004 LOADN                            R3 1
     1005 SETTABLEKS                       R3 R2 K112 ["BackgroundTransparency"]
     1007 SETTABLEKS                       R2 R1 K8 ["properties"]
     1009 SETTABLEKS                       R1 R0 K149 ["gui-object-defaults"]
     1011 RETURN                           R0 1
