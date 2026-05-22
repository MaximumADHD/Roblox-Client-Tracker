PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-Toggle-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandLabel-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandCopy-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R2 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_10:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPEOF R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+5]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 JUMP                             ; [+49]
       15 LOADNIL                          R6
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K1 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+24]
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+5]
       32 MOVE                             R7 R5
       33 CALL                             R7 0 1
       34 MOVE                             R6 R7
       35 JUMP                             ; [+13]
       36 GETIMPORT                        R7 K6 [error]
       38 LOADK                            R9 K7 ["Unexpected value type: %*"]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K1 [typeof]
       43 CALL                             R11 1 1
       44 NAMECALL                         R9 R9 K8 ["format"]
       46 CALL                             R9 2 1
       47 MOVE                             R8 R9
       48 CALL                             R7 1 0
       49 GETUPVAL                         R8 1
       50 GETTABLE                         R7 R8 R6
       51 JUMPIFNOT                        R7 ; [+9]
       52 GETIMPORT                        R7 K6 [error]
       54 LOADK                            R9 K9 ["Duplicate test id found: %*"]
       55 MOVE                             R11 R6
       56 NAMECALL                         R9 R9 K8 ["format"]
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 1
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R7 R6
       64 FORGLOOP                         R1 2 ; [-61]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K3 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent"}]
        4 LOADK                            R2 K4 ["Assistant-Header-ToggleThreadsMenu"]
        5 SETTABLEKS                       R2 R1 K0 ["ToggleThreadsMenu"]
        7 LOADK                            R2 K5 ["Assistant-Header-SettingsButton"]
        8 SETTABLEKS                       R2 R1 K1 ["SettingsButton"]
       10 LOADK                            R2 K6 ["Assistant-Header-SettingsContent"]
       11 SETTABLEKS                       R2 R1 K2 ["SettingsContent"]
       13 SETTABLEKS                       R1 R0 K7 ["Header"]
       15 DUPTABLE                         R1 K11 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
       16 LOADK                            R2 K12 ["Assistant-ThreadsMenu-Container"]
       17 SETTABLEKS                       R2 R1 K8 ["Container"]
       19 LOADK                            R2 K13 ["Assistant-ThreadsMenu-ExistingThreadButton"]
       20 SETTABLEKS                       R2 R1 K9 ["ExistingThreadButton"]
       22 LOADK                            R2 K14 ["Assistant-ThreadsMenu-AddThreadButton"]
       23 SETTABLEKS                       R2 R1 K10 ["AddThreadButton"]
       25 SETTABLEKS                       R1 R0 K15 ["ThreadsMenu"]
       27 DUPTABLE                         R1 K18 [{"OptionsButton", "RenameInput"}]
       28 LOADK                            R2 K19 ["Assistant-ThreadEntry-OptionsButton"]
       29 SETTABLEKS                       R2 R1 K16 ["OptionsButton"]
       31 LOADK                            R2 K20 ["Assistant-ThreadEntry-RenameInput"]
       32 SETTABLEKS                       R2 R1 K17 ["RenameInput"]
       34 SETTABLEKS                       R1 R0 K21 ["ThreadEntry"]
       36 DUPTABLE                         R1 K22 [{"Container"}]
       37 LOADK                            R2 K23 ["Assistant-ThreadOptionsMenu-Container"]
       38 SETTABLEKS                       R2 R1 K8 ["Container"]
       40 SETTABLEKS                       R1 R0 K24 ["ThreadOptionsMenu"]
       42 DUPTABLE                         R1 K31 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "AssistantModeDropdown", "AssistantModeDropdownMenu", "Footer"}]
       43 LOADK                            R2 K32 ["Assistant-InputArea-Container"]
       44 SETTABLEKS                       R2 R1 K8 ["Container"]
       46 LOADK                            R2 K33 ["Assistant-InputArea-StopButton"]
       47 SETTABLEKS                       R2 R1 K25 ["StopButton"]
       49 LOADK                            R2 K34 ["Assistant-InputArea-AttachImageButton"]
       50 SETTABLEKS                       R2 R1 K26 ["AttachImageButton"]
       52 LOADK                            R2 K35 ["Assistant-InputArea-AttachedImagesPreview"]
       53 SETTABLEKS                       R2 R1 K27 ["AttachedImagesPreview"]
       55 LOADK                            R2 K36 ["Assistant-InputArea-AssistantModeDropdown"]
       56 SETTABLEKS                       R2 R1 K28 ["AssistantModeDropdown"]
       58 LOADK                            R2 K37 ["Assistant-InputArea-AssistantModeDropdownMenu"]
       59 SETTABLEKS                       R2 R1 K29 ["AssistantModeDropdownMenu"]
       61 DUPTABLE                         R2 K39 [{"Container", "Icon"}]
       62 LOADK                            R3 K40 ["Assistant-InputArea-Footer-Container"]
       63 SETTABLEKS                       R3 R2 K8 ["Container"]
       65 LOADK                            R3 K41 ["Assistant-InputArea-Footer-Icon"]
       66 SETTABLEKS                       R3 R2 K38 ["Icon"]
       68 SETTABLEKS                       R2 R1 K30 ["Footer"]
       70 SETTABLEKS                       R1 R0 K42 ["InputArea"]
       72 DUPTABLE                         R1 K46 [{"Container", "ThumbsUp", "ThumbsDown", "Retry"}]
       73 LOADK                            R2 K47 ["Assistant-MessageActions-Container"]
       74 SETTABLEKS                       R2 R1 K8 ["Container"]
       76 LOADK                            R2 K48 ["Assistant-MessageActions-ThumbsUp"]
       77 SETTABLEKS                       R2 R1 K43 ["ThumbsUp"]
       79 LOADK                            R2 K49 ["Assistant-MessageActions-ThumbsDown"]
       80 SETTABLEKS                       R2 R1 K44 ["ThumbsDown"]
       82 LOADK                            R2 K50 ["Assistant-MessageActions-Retry"]
       83 SETTABLEKS                       R2 R1 K45 ["Retry"]
       85 SETTABLEKS                       R1 R0 K51 ["MessageActions"]
       87 DUPTABLE                         R1 K56 [{"Container", "Dropdown", "TextArea", "Close", "Submit"}]
       88 LOADK                            R2 K57 ["Assistant-FeedbackView-Container"]
       89 SETTABLEKS                       R2 R1 K8 ["Container"]
       91 LOADK                            R2 K58 ["Assistant-FeedbackView-Dropdown"]
       92 SETTABLEKS                       R2 R1 K52 ["Dropdown"]
       94 LOADK                            R2 K59 ["Assistant-FeedbackView-TextArea"]
       95 SETTABLEKS                       R2 R1 K53 ["TextArea"]
       97 LOADK                            R2 K60 ["Assistant-FeedbackView-Close"]
       98 SETTABLEKS                       R2 R1 K54 ["Close"]
      100 LOADK                            R2 K61 ["Assistant-FeedbackView-Submit"]
      101 SETTABLEKS                       R2 R1 K55 ["Submit"]
      103 SETTABLEKS                       R1 R0 K62 ["FeedbackView"]
      105 LOADK                            R1 K63 ["Assistant-GenerationIndicator"]
      106 SETTABLEKS                       R1 R0 K64 ["GenerationIndicator"]
      108 LOADK                            R1 K65 ["Assistant-ModelQualityWarning"]
      109 SETTABLEKS                       R1 R0 K66 ["ModelQualityWarning"]
      111 DUPTABLE                         R1 K68 [{"Button"}]
      112 LOADK                            R2 K69 ["Assistant-ServerManagement-Button"]
      113 SETTABLEKS                       R2 R1 K67 ["Button"]
      115 SETTABLEKS                       R1 R0 K70 ["ServerManagement"]
      117 DUPTABLE                         R1 K73 [{"Checkbox", "CheckboxInput"}]
      118 LOADK                            R2 K74 ["Assistant-McpServer-Checkbox"]
      119 SETTABLEKS                       R2 R1 K71 ["Checkbox"]
      121 LOADK                            R2 K75 ["Assistant-McpServer-Checkbox--container"]
      122 SETTABLEKS                       R2 R1 K72 ["CheckboxInput"]
      124 SETTABLEKS                       R1 R0 K76 ["McpServer"]
      126 DUPTABLE                         R1 K78 [{"Container", "Item"}]
      127 LOADK                            R2 K79 ["Assistant-SlashCommandMenu-Container"]
      128 SETTABLEKS                       R2 R1 K8 ["Container"]
      130 DUPTABLE                         R2 K81 [{"Container", "Command"}]
      131 LOADK                            R3 K82 ["Assistant-SlashCommandMenu-Item-Container"]
      132 SETTABLEKS                       R3 R2 K8 ["Container"]
      134 LOADK                            R3 K83 ["Assistant-SlashCommandMenu-Item-Command"]
      135 SETTABLEKS                       R3 R2 K80 ["Command"]
      137 SETTABLEKS                       R2 R1 K77 ["Item"]
      139 SETTABLEKS                       R1 R0 K84 ["SlashCommandMenu"]
      141 DUPTABLE                         R1 K86 [{"Container", "Option"}]
      142 LOADK                            R2 K87 ["Assistant-ToolMenuView-Container"]
      143 SETTABLEKS                       R2 R1 K8 ["Container"]
      145 DUPTABLE                         R2 K88 [{"Container", "Checkbox"}]
      146 LOADK                            R3 K89 ["Assistant-ToolMenuView-Option-Container"]
      147 SETTABLEKS                       R3 R2 K8 ["Container"]
      149 LOADK                            R3 K90 ["Assistant-ToolMenuView-Option-Checkbox"]
      150 SETTABLEKS                       R3 R2 K71 ["Checkbox"]
      152 SETTABLEKS                       R2 R1 K85 ["Option"]
      154 SETTABLEKS                       R1 R0 K91 ["ToolMenuView"]
      156 DUPTABLE                         R1 K92 [{"Container", "Dropdown"}]
      157 LOADK                            R2 K93 ["Assistant-ModelPicker-Container"]
      158 SETTABLEKS                       R2 R1 K8 ["Container"]
      160 LOADK                            R2 K94 ["Assistant-ModelPicker-Dropdown"]
      161 SETTABLEKS                       R2 R1 K52 ["Dropdown"]
      163 SETTABLEKS                       R1 R0 K95 ["ModelPicker"]
      165 DUPTABLE                         R1 K22 [{"Container"}]
      166 LOADK                            R2 K96 ["Assistant-Carousel-Container"]
      167 SETTABLEKS                       R2 R1 K8 ["Container"]
      169 SETTABLEKS                       R1 R0 K97 ["Carousel"]
      171 DUPTABLE                         R1 K99 [{"Selected"}]
      172 LOADK                            R2 K100 ["Assistant-CarouselItem-Selected"]
      173 SETTABLEKS                       R2 R1 K98 ["Selected"]
      175 SETTABLEKS                       R1 R0 K101 ["CarouselItem"]
      177 DUPTABLE                         R1 K104 [{"Continue", "EditApiKeys", "Close"}]
      178 LOADK                            R2 K105 ["Assistant-Alert-Continue"]
      179 SETTABLEKS                       R2 R1 K102 ["Continue"]
      181 LOADK                            R2 K106 ["Assistant-Alert-EditApiKeys"]
      182 SETTABLEKS                       R2 R1 K103 ["EditApiKeys"]
      184 LOADK                            R2 K107 ["Assistant-Alert-Close"]
      185 SETTABLEKS                       R2 R1 K54 ["Close"]
      187 SETTABLEKS                       R1 R0 K108 ["Alert"]
      189 DUPTABLE                         R1 K111 [{"Image", "Expand"}]
      190 LOADK                            R2 K112 ["Assistant-ImageContent-Image"]
      191 SETTABLEKS                       R2 R1 K109 ["Image"]
      193 LOADK                            R2 K113 ["Assistant-ImageContent-Expand"]
      194 SETTABLEKS                       R2 R1 K110 ["Expand"]
      196 SETTABLEKS                       R1 R0 K114 ["ImageContent"]
      198 DUPTABLE                         R1 K115 [{"Expand"}]
      199 LOADK                            R2 K116 ["Assistant-AssetInsert-Expand"]
      200 SETTABLEKS                       R2 R1 K110 ["Expand"]
      202 SETTABLEKS                       R1 R0 K117 ["AssetInsert"]
      204 DUPTABLE                         R1 K115 [{"Expand"}]
      205 LOADK                            R2 K118 ["Assistant-AssetSearch-Expand"]
      206 SETTABLEKS                       R2 R1 K110 ["Expand"]
      208 SETTABLEKS                       R1 R0 K119 ["AssetSearch"]
      210 DUPTABLE                         R1 K115 [{"Expand"}]
      211 LOADK                            R2 K120 ["Assistant-AssetVariation-Expand"]
      212 SETTABLEKS                       R2 R1 K110 ["Expand"]
      214 SETTABLEKS                       R1 R0 K121 ["AssetVariation"]
      216 DUPTABLE                         R1 K124 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      217 LOADK                            R2 K125 ["Assistant-MaterialGen-Expand"]
      218 SETTABLEKS                       R2 R1 K110 ["Expand"]
      220 LOADK                            R2 K126 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      221 SETTABLEKS                       R2 R1 K122 ["StudsPerTileValueBar"]
      223 LOADK                            R2 K127 ["Assistant-MaterialGen-OrganicPatternToggle"]
      224 SETTABLEKS                       R2 R1 K123 ["OrganicPatternToggle"]
      226 SETTABLEKS                       R1 R0 K128 ["MaterialGen"]
      228 DUPTABLE                         R1 K138 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles", "LastPreview", "NextPreview", "Cancel", "Regenerate", "Publish", "Insert"}]
      229 LOADK                            R2 K139 ["Assistant-MeshGen-Expand"]
      230 SETTABLEKS                       R2 R1 K110 ["Expand"]
      232 LOADK                            R2 K140 ["Assistant-MeshGen-PreviewImage"]
      233 SETTABLEKS                       R2 R1 K129 ["PreviewImage"]
      235 LOADK                            R2 K141 ["Assistant-MeshGen-UseSelection"]
      236 SETTABLEKS                       R2 R1 K130 ["UseSelection"]
      238 LOADK                            R2 K142 ["Assistant-MeshGen-MaxTriangles"]
      239 SETTABLEKS                       R2 R1 K131 ["MaxTriangles"]
      241 LOADK                            R2 K143 ["Assistant-MeshGen-LastPreview"]
      242 SETTABLEKS                       R2 R1 K132 ["LastPreview"]
      244 LOADK                            R2 K144 ["Assistant-MeshGen-NextPreview"]
      245 SETTABLEKS                       R2 R1 K133 ["NextPreview"]
      247 LOADK                            R2 K145 ["Assistant-MeshGen-Cancel"]
      248 SETTABLEKS                       R2 R1 K134 ["Cancel"]
      250 LOADK                            R2 K146 ["Assistant-MeshGen-Regenerate"]
      251 SETTABLEKS                       R2 R1 K135 ["Regenerate"]
      253 LOADK                            R2 K147 ["Assistant-MeshGen-Publish"]
      254 SETTABLEKS                       R2 R1 K136 ["Publish"]
      256 LOADK                            R2 K148 ["Assistant-MeshGen-Insert"]
      257 SETTABLEKS                       R2 R1 K137 ["Insert"]
      259 SETTABLEKS                       R1 R0 K149 ["MeshGen"]
      261 DUPTABLE                         R1 K153 [{"Expand", "Copy", "Run", "Stop"}]
      262 LOADK                            R2 K154 ["Assistant-RunCode-Expand"]
      263 SETTABLEKS                       R2 R1 K110 ["Expand"]
      265 LOADK                            R2 K155 ["Assistant-RunCode-Copy"]
      266 SETTABLEKS                       R2 R1 K150 ["Copy"]
      268 LOADK                            R2 K156 ["Assistant-RunCode-Run"]
      269 SETTABLEKS                       R2 R1 K151 ["Run"]
      271 LOADK                            R2 K157 ["Assistant-RunCode-Stop"]
      272 SETTABLEKS                       R2 R1 K152 ["Stop"]
      274 SETTABLEKS                       R1 R0 K158 ["RunCode"]
      276 DUPTABLE                         R1 K115 [{"Expand"}]
      277 LOADK                            R2 K159 ["Assistant-Thinking-Expand"]
      278 SETTABLEKS                       R2 R1 K110 ["Expand"]
      280 SETTABLEKS                       R1 R0 K160 ["Thinking"]
      282 DUPTABLE                         R1 K165 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      283 LOADK                            R2 K166 ["Assistant-ToolConfirmation-Warning"]
      284 SETTABLEKS                       R2 R1 K161 ["Warning"]
      286 LOADK                            R2 K167 ["Assistant-ToolConfirmation-Accept"]
      287 SETTABLEKS                       R2 R1 K162 ["Accept"]
      289 LOADK                            R2 K168 ["Assistant-ToolConfirmation-Reject"]
      290 SETTABLEKS                       R2 R1 K163 ["Reject"]
      292 LOADK                            R2 K169 ["Assistant-ToolConfirmation-AlwaysAccept"]
      293 SETTABLEKS                       R2 R1 K164 ["AlwaysAccept"]
      295 SETTABLEKS                       R1 R0 K170 ["ToolConfirmation"]
      297 DUPTABLE                         R1 K174 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      298 LOADK                            R2 K175 ["Assistant-ScriptChangeConfirmation-Warning"]
      299 SETTABLEKS                       R2 R1 K161 ["Warning"]
      301 LOADK                            R2 K176 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      302 SETTABLEKS                       R2 R1 K171 ["ReviewEach"]
      304 LOADK                            R2 K177 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      305 SETTABLEKS                       R2 R1 K172 ["AcceptAllPrompt"]
      307 LOADK                            R2 K178 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      308 SETTABLEKS                       R2 R1 K173 ["AcceptAllSession"]
      310 SETTABLEKS                       R1 R0 K179 ["ScriptChangeConfirmation"]
      312 DUPTABLE                         R1 K180 [{"Icon", "Expand"}]
      313 LOADK                            R2 K181 ["Assistant-Summarized-Icon"]
      314 SETTABLEKS                       R2 R1 K38 ["Icon"]
      316 LOADK                            R2 K182 ["Assistant-Summarized-Expand"]
      317 SETTABLEKS                       R2 R1 K110 ["Expand"]
      319 SETTABLEKS                       R1 R0 K183 ["Summarized"]
      321 DUPTABLE                         R1 K185 [{"Title"}]
      322 LOADK                            R2 K186 ["Assistant-ReadFile-Title"]
      323 SETTABLEKS                       R2 R1 K184 ["Title"]
      325 SETTABLEKS                       R1 R0 K187 ["ReadFile"]
      327 DUPTABLE                         R1 K115 [{"Expand"}]
      328 LOADK                            R2 K188 ["Assistant-InputRequested-Expand"]
      329 SETTABLEKS                       R2 R1 K110 ["Expand"]
      331 SETTABLEKS                       R1 R0 K189 ["InputRequested"]
      333 DUPTABLE                         R1 K194 [{"StepperPrev", "StepperNext", "ConfirmCheckbox", "Dismiss"}]
      334 LOADK                            R2 K195 ["Assistant-QuestionAnswer-StepperPrev"]
      335 SETTABLEKS                       R2 R1 K190 ["StepperPrev"]
      337 LOADK                            R2 K196 ["Assistant-QuestionAnswer-StepperNext"]
      338 SETTABLEKS                       R2 R1 K191 ["StepperNext"]
      340 LOADK                            R2 K197 ["Assistant-QuestionAnswer-ConfirmCheckbox"]
      341 SETTABLEKS                       R2 R1 K192 ["ConfirmCheckbox"]
      343 LOADK                            R2 K198 ["Assistant-QuestionAnswer-Dismiss"]
      344 SETTABLEKS                       R2 R1 K193 ["Dismiss"]
      346 SETTABLEKS                       R1 R0 K199 ["QuestionAnswer"]
      348 DUPTABLE                         R1 K203 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      349 LOADK                            R2 K204 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      350 SETTABLEKS                       R2 R1 K200 ["AddIntegrationDialog"]
      352 LOADK                            R2 K205 ["Assistant-IntegrationMenu-TabContent"]
      353 SETTABLEKS                       R2 R1 K201 ["TabContent"]
      355 LOADK                            R2 K206 ["Assistant-IntegrationMenu-EmptyState"]
      356 SETTABLEKS                       R2 R1 K202 ["EmptyState"]
      358 SETTABLEKS                       R1 R0 K207 ["IntegrationMenu"]
      360 DUPTABLE                         R1 K212 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      361 LOADK                            R2 K213 ["Assistant-IntegrationItem-Dialog"]
      362 SETTABLEKS                       R2 R1 K208 ["Dialog"]
      364 LOADK                            R2 K214 ["Assistant-IntegrationItem-Header"]
      365 SETTABLEKS                       R2 R1 K7 ["Header"]
      367 LOADK                            R2 K215 ["Assistant-IntegrationItem-ToolsContainer"]
      368 SETTABLEKS                       R2 R1 K209 ["ToolsContainer"]
      370 DUPCLOSURE                       R2 K216 [PROTO_0]
      371 SETTABLEKS                       R2 R1 K210 ["ToolPill"]
      373 DUPTABLE                         R2 K220 [{"Toggle", "OverflowButton", "OverflowContent"}]
      374 LOADK                            R3 K221 ["Assistant-IntegrationItem-Actions-Toggle"]
      375 SETTABLEKS                       R3 R2 K217 ["Toggle"]
      377 LOADK                            R3 K222 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      378 SETTABLEKS                       R3 R2 K218 ["OverflowButton"]
      380 LOADK                            R3 K223 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      381 SETTABLEKS                       R3 R2 K219 ["OverflowContent"]
      383 SETTABLEKS                       R2 R1 K211 ["Actions"]
      385 SETTABLEKS                       R1 R0 K224 ["IntegrationItem"]
      387 DUPTABLE                         R1 K229 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      388 LOADK                            R2 K230 ["Assistant-McpSetup-Toggle"]
      389 SETTABLEKS                       R2 R1 K217 ["Toggle"]
      391 LOADK                            R2 K231 ["Assistant-McpSetup-StartupCommandLabel"]
      392 SETTABLEKS                       R2 R1 K225 ["StartupCommandLabel"]
      394 LOADK                            R2 K232 ["Assistant-McpSetup-JsonConfigLabel"]
      395 SETTABLEKS                       R2 R1 K226 ["JsonConfigLabel"]
      397 LOADK                            R2 K233 ["Assistant-McpSetup-StartupCommandCopy"]
      398 SETTABLEKS                       R2 R1 K227 ["StartupCommandCopy"]
      400 LOADK                            R2 K234 ["Assistant-McpSetup-JsonConfigCopy"]
      401 SETTABLEKS                       R2 R1 K228 ["JsonConfigCopy"]
      403 SETTABLEKS                       R1 R0 K235 ["McpSetup"]
      405 DUPTABLE                         R1 K239 [{"Section", "Toggle", "CommandLabel", "CommandCopy"}]
      406 LOADK                            R2 K240 ["Assistant-QuickConnect-Section"]
      407 SETTABLEKS                       R2 R1 K236 ["Section"]
      409 DUPCLOSURE                       R2 K241 [PROTO_1]
      410 SETTABLEKS                       R2 R1 K217 ["Toggle"]
      412 DUPCLOSURE                       R2 K242 [PROTO_2]
      413 SETTABLEKS                       R2 R1 K237 ["CommandLabel"]
      415 DUPCLOSURE                       R2 K243 [PROTO_3]
      416 SETTABLEKS                       R2 R1 K238 ["CommandCopy"]
      418 SETTABLEKS                       R1 R0 K244 ["QuickConnect"]
      420 DUPCLOSURE                       R1 K245 [PROTO_4]
      421 SETTABLEKS                       R1 R0 K246 ["ProviderCheckbox"]
      423 DUPTABLE                         R1 K252 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      424 DUPCLOSURE                       R2 K253 [PROTO_5]
      425 SETTABLEKS                       R2 R1 K247 ["Display"]
      427 DUPCLOSURE                       R2 K254 [PROTO_6]
      428 SETTABLEKS                       R2 R1 K248 ["EditButton"]
      430 DUPCLOSURE                       R2 K255 [PROTO_7]
      431 SETTABLEKS                       R2 R1 K249 ["Input"]
      433 DUPCLOSURE                       R2 K256 [PROTO_8]
      434 SETTABLEKS                       R2 R1 K250 ["SaveButton"]
      436 DUPCLOSURE                       R2 K257 [PROTO_9]
      437 SETTABLEKS                       R2 R1 K251 ["CancelButton"]
      439 SETTABLEKS                       R1 R0 K258 ["APIKey"]
      441 DUPTABLE                         R1 K260 [{"Remove"}]
      442 LOADK                            R2 K5 ["Assistant-Header-SettingsButton"]
      443 SETTABLEKS                       R2 R1 K259 ["Remove"]
      445 SETTABLEKS                       R1 R0 K262 ["AttachedImagePreview"]
      447 GETIMPORT                        R1 K264 [pcall]
      449 GETIMPORT                        R2 K266 [game]
      451 GETTABLEKS                       R2 R2 K267 ["GetService"]
      453 GETIMPORT                        R3 K266 [game]
      455 LOADK                            R4 K12 ["Assistant-ThreadsMenu-Container"]
      456 CALL                             R1 3 1
      457 JUMPIFNOT                        R1 ; [+8]
      458 NEWTABLE                         R2 0 0
      460 DUPCLOSURE                       R3 K269 [PROTO_10]
      461 CAPTURE                          VAL R3
      462 CAPTURE                          VAL R2
      463 MOVE                             R4 R3
      464 MOVE                             R5 R0
      465 CALL                             R4 1 0
      466 RETURN                           R0 1
