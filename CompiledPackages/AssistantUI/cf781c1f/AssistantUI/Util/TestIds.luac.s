PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-Skills-Row-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["Assistant-ScopePermissions-PresetItem-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["Assistant-ScopePermissions-ScopeCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-Toggle-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandLabel-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandCopy-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R2 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_11:
        0 LOADK                            R2 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R2 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_13:
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
      228 DUPTABLE                         R1 K132 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles"}]
      229 LOADK                            R2 K133 ["Assistant-MeshGen-Expand"]
      230 SETTABLEKS                       R2 R1 K110 ["Expand"]
      232 LOADK                            R2 K134 ["Assistant-MeshGen-PreviewImage"]
      233 SETTABLEKS                       R2 R1 K129 ["PreviewImage"]
      235 LOADK                            R2 K135 ["Assistant-MeshGen-UseSelection"]
      236 SETTABLEKS                       R2 R1 K130 ["UseSelection"]
      238 LOADK                            R2 K136 ["Assistant-MeshGen-MaxTriangles"]
      239 SETTABLEKS                       R2 R1 K131 ["MaxTriangles"]
      241 SETTABLEKS                       R1 R0 K137 ["MeshGen"]
      243 DUPTABLE                         R1 K141 [{"Expand", "Copy", "Run", "Stop"}]
      244 LOADK                            R2 K142 ["Assistant-RunCode-Expand"]
      245 SETTABLEKS                       R2 R1 K110 ["Expand"]
      247 LOADK                            R2 K143 ["Assistant-RunCode-Copy"]
      248 SETTABLEKS                       R2 R1 K138 ["Copy"]
      250 LOADK                            R2 K144 ["Assistant-RunCode-Run"]
      251 SETTABLEKS                       R2 R1 K139 ["Run"]
      253 LOADK                            R2 K145 ["Assistant-RunCode-Stop"]
      254 SETTABLEKS                       R2 R1 K140 ["Stop"]
      256 SETTABLEKS                       R1 R0 K146 ["RunCode"]
      258 DUPTABLE                         R1 K115 [{"Expand"}]
      259 LOADK                            R2 K147 ["Assistant-Thinking-Expand"]
      260 SETTABLEKS                       R2 R1 K110 ["Expand"]
      262 SETTABLEKS                       R1 R0 K148 ["Thinking"]
      264 DUPTABLE                         R1 K153 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      265 LOADK                            R2 K154 ["Assistant-ToolConfirmation-Warning"]
      266 SETTABLEKS                       R2 R1 K149 ["Warning"]
      268 LOADK                            R2 K155 ["Assistant-ToolConfirmation-Accept"]
      269 SETTABLEKS                       R2 R1 K150 ["Accept"]
      271 LOADK                            R2 K156 ["Assistant-ToolConfirmation-Reject"]
      272 SETTABLEKS                       R2 R1 K151 ["Reject"]
      274 LOADK                            R2 K157 ["Assistant-ToolConfirmation-AlwaysAccept"]
      275 SETTABLEKS                       R2 R1 K152 ["AlwaysAccept"]
      277 SETTABLEKS                       R1 R0 K158 ["ToolConfirmation"]
      279 DUPTABLE                         R1 K162 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      280 LOADK                            R2 K163 ["Assistant-ScriptChangeConfirmation-Warning"]
      281 SETTABLEKS                       R2 R1 K149 ["Warning"]
      283 LOADK                            R2 K164 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      284 SETTABLEKS                       R2 R1 K159 ["ReviewEach"]
      286 LOADK                            R2 K165 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      287 SETTABLEKS                       R2 R1 K160 ["AcceptAllPrompt"]
      289 LOADK                            R2 K166 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      290 SETTABLEKS                       R2 R1 K161 ["AcceptAllSession"]
      292 SETTABLEKS                       R1 R0 K167 ["ScriptChangeConfirmation"]
      294 DUPTABLE                         R1 K168 [{"Icon", "Expand"}]
      295 LOADK                            R2 K169 ["Assistant-Summarized-Icon"]
      296 SETTABLEKS                       R2 R1 K38 ["Icon"]
      298 LOADK                            R2 K170 ["Assistant-Summarized-Expand"]
      299 SETTABLEKS                       R2 R1 K110 ["Expand"]
      301 SETTABLEKS                       R1 R0 K171 ["Summarized"]
      303 DUPTABLE                         R1 K173 [{"Title"}]
      304 LOADK                            R2 K174 ["Assistant-ReadFile-Title"]
      305 SETTABLEKS                       R2 R1 K172 ["Title"]
      307 SETTABLEKS                       R1 R0 K175 ["ReadFile"]
      309 DUPTABLE                         R1 K115 [{"Expand"}]
      310 LOADK                            R2 K176 ["Assistant-InputRequested-Expand"]
      311 SETTABLEKS                       R2 R1 K110 ["Expand"]
      313 SETTABLEKS                       R1 R0 K177 ["InputRequested"]
      315 DUPTABLE                         R1 K182 [{"StepperPrev", "StepperNext", "ConfirmCheckbox", "Dismiss"}]
      316 LOADK                            R2 K183 ["Assistant-QuestionAnswer-StepperPrev"]
      317 SETTABLEKS                       R2 R1 K178 ["StepperPrev"]
      319 LOADK                            R2 K184 ["Assistant-QuestionAnswer-StepperNext"]
      320 SETTABLEKS                       R2 R1 K179 ["StepperNext"]
      322 LOADK                            R2 K185 ["Assistant-QuestionAnswer-ConfirmCheckbox"]
      323 SETTABLEKS                       R2 R1 K180 ["ConfirmCheckbox"]
      325 LOADK                            R2 K186 ["Assistant-QuestionAnswer-Dismiss"]
      326 SETTABLEKS                       R2 R1 K181 ["Dismiss"]
      328 SETTABLEKS                       R1 R0 K187 ["QuestionAnswer"]
      330 DUPTABLE                         R1 K191 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      331 LOADK                            R2 K192 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      332 SETTABLEKS                       R2 R1 K188 ["AddIntegrationDialog"]
      334 LOADK                            R2 K193 ["Assistant-IntegrationMenu-TabContent"]
      335 SETTABLEKS                       R2 R1 K189 ["TabContent"]
      337 LOADK                            R2 K194 ["Assistant-IntegrationMenu-EmptyState"]
      338 SETTABLEKS                       R2 R1 K190 ["EmptyState"]
      340 SETTABLEKS                       R1 R0 K195 ["IntegrationMenu"]
      342 DUPTABLE                         R1 K203 [{"TabContent", "CreateNewButton", "RefreshButton", "UploadButton", "PersonalGroup", "RobloxGroup", "Row", "DetailPane"}]
      343 LOADK                            R2 K204 ["Assistant-Skills-TabContent"]
      344 SETTABLEKS                       R2 R1 K189 ["TabContent"]
      346 LOADK                            R2 K205 ["Assistant-Skills-CreateNewButton"]
      347 SETTABLEKS                       R2 R1 K196 ["CreateNewButton"]
      349 LOADK                            R2 K206 ["Assistant-Skills-RefreshButton"]
      350 SETTABLEKS                       R2 R1 K197 ["RefreshButton"]
      352 LOADK                            R2 K207 ["Assistant-Skills-UploadButton"]
      353 SETTABLEKS                       R2 R1 K198 ["UploadButton"]
      355 LOADK                            R2 K208 ["Assistant-Skills-PersonalGroup"]
      356 SETTABLEKS                       R2 R1 K199 ["PersonalGroup"]
      358 LOADK                            R2 K209 ["Assistant-Skills-RobloxGroup"]
      359 SETTABLEKS                       R2 R1 K200 ["RobloxGroup"]
      361 DUPCLOSURE                       R2 K210 [PROTO_0]
      362 SETTABLEKS                       R2 R1 K201 ["Row"]
      364 DUPTABLE                         R2 K215 [{"Container", "Empty", "SourceUri", "OpenButton", "DuplicateButton"}]
      365 LOADK                            R3 K216 ["Assistant-Skills-DetailPane-Container"]
      366 SETTABLEKS                       R3 R2 K8 ["Container"]
      368 LOADK                            R3 K217 ["Assistant-Skills-DetailPane-Empty"]
      369 SETTABLEKS                       R3 R2 K211 ["Empty"]
      371 LOADK                            R3 K218 ["Assistant-Skills-DetailPane-SourceUri"]
      372 SETTABLEKS                       R3 R2 K212 ["SourceUri"]
      374 LOADK                            R3 K219 ["Assistant-Skills-DetailPane-OpenButton"]
      375 SETTABLEKS                       R3 R2 K213 ["OpenButton"]
      377 LOADK                            R3 K220 ["Assistant-Skills-DetailPane-DuplicateButton"]
      378 SETTABLEKS                       R3 R2 K214 ["DuplicateButton"]
      380 SETTABLEKS                       R2 R1 K202 ["DetailPane"]
      382 SETTABLEKS                       R1 R0 K221 ["Skills"]
      384 DUPTABLE                         R1 K226 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      385 LOADK                            R2 K227 ["Assistant-IntegrationItem-Dialog"]
      386 SETTABLEKS                       R2 R1 K222 ["Dialog"]
      388 LOADK                            R2 K228 ["Assistant-IntegrationItem-Header"]
      389 SETTABLEKS                       R2 R1 K7 ["Header"]
      391 LOADK                            R2 K229 ["Assistant-IntegrationItem-ToolsContainer"]
      392 SETTABLEKS                       R2 R1 K223 ["ToolsContainer"]
      394 DUPCLOSURE                       R2 K230 [PROTO_1]
      395 SETTABLEKS                       R2 R1 K224 ["ToolPill"]
      397 DUPTABLE                         R2 K234 [{"Toggle", "OverflowButton", "OverflowContent"}]
      398 LOADK                            R3 K235 ["Assistant-IntegrationItem-Actions-Toggle"]
      399 SETTABLEKS                       R3 R2 K231 ["Toggle"]
      401 LOADK                            R3 K236 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      402 SETTABLEKS                       R3 R2 K232 ["OverflowButton"]
      404 LOADK                            R3 K237 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      405 SETTABLEKS                       R3 R2 K233 ["OverflowContent"]
      407 SETTABLEKS                       R2 R1 K225 ["Actions"]
      409 SETTABLEKS                       R1 R0 K238 ["IntegrationItem"]
      411 DUPTABLE                         R1 K243 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      412 LOADK                            R2 K244 ["Assistant-McpSetup-Toggle"]
      413 SETTABLEKS                       R2 R1 K231 ["Toggle"]
      415 LOADK                            R2 K245 ["Assistant-McpSetup-StartupCommandLabel"]
      416 SETTABLEKS                       R2 R1 K239 ["StartupCommandLabel"]
      418 LOADK                            R2 K246 ["Assistant-McpSetup-JsonConfigLabel"]
      419 SETTABLEKS                       R2 R1 K240 ["JsonConfigLabel"]
      421 LOADK                            R2 K247 ["Assistant-McpSetup-StartupCommandCopy"]
      422 SETTABLEKS                       R2 R1 K241 ["StartupCommandCopy"]
      424 LOADK                            R2 K248 ["Assistant-McpSetup-JsonConfigCopy"]
      425 SETTABLEKS                       R2 R1 K242 ["JsonConfigCopy"]
      427 SETTABLEKS                       R1 R0 K249 ["McpSetup"]
      429 DUPTABLE                         R1 K253 [{"Container", "PresetGroup", "PresetItem", "ScopeCheckbox"}]
      430 LOADK                            R2 K254 ["Assistant-ScopePermissions-Container"]
      431 SETTABLEKS                       R2 R1 K8 ["Container"]
      433 LOADK                            R2 K255 ["Assistant-ScopePermissions-PresetGroup"]
      434 SETTABLEKS                       R2 R1 K250 ["PresetGroup"]
      436 DUPCLOSURE                       R2 K256 [PROTO_2]
      437 SETTABLEKS                       R2 R1 K251 ["PresetItem"]
      439 DUPCLOSURE                       R2 K257 [PROTO_3]
      440 SETTABLEKS                       R2 R1 K252 ["ScopeCheckbox"]
      442 SETTABLEKS                       R1 R0 K258 ["ScopePermissions"]
      444 DUPTABLE                         R1 K262 [{"Section", "Toggle", "CommandLabel", "CommandCopy"}]
      445 LOADK                            R2 K7 ["Header"]
      446 SETTABLEKS                       R2 R1 K259 ["Section"]
      448 DUPCLOSURE                       R2 K264 [PROTO_4]
      449 SETTABLEKS                       R2 R1 K231 ["Toggle"]
      451 DUPCLOSURE                       R2 K265 [PROTO_5]
      452 SETTABLEKS                       R2 R1 K260 ["CommandLabel"]
      454 DUPCLOSURE                       R2 K266 [PROTO_6]
      455 SETTABLEKS                       R2 R1 K261 ["CommandCopy"]
      457 SETTABLEKS                       R1 R0 K267 ["QuickConnect"]
      459 DUPCLOSURE                       R1 K268 [PROTO_7]
      460 SETTABLEKS                       R1 R0 K269 ["ProviderCheckbox"]
      462 DUPTABLE                         R1 K275 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      463 DUPCLOSURE                       R2 K276 [PROTO_8]
      464 SETTABLEKS                       R2 R1 K270 ["Display"]
      466 DUPCLOSURE                       R2 K277 [PROTO_9]
      467 SETTABLEKS                       R2 R1 K271 ["EditButton"]
      469 DUPCLOSURE                       R2 K278 [PROTO_10]
      470 SETTABLEKS                       R2 R1 K272 ["Input"]
      472 DUPCLOSURE                       R2 K279 [PROTO_11]
      473 SETTABLEKS                       R2 R1 K273 ["SaveButton"]
      475 DUPCLOSURE                       R2 K280 [PROTO_12]
      476 SETTABLEKS                       R2 R1 K274 ["CancelButton"]
      478 SETTABLEKS                       R1 R0 K281 ["APIKey"]
      480 DUPTABLE                         R1 K283 [{"Remove"}]
      481 LOADK                            R2 K28 ["AssistantModeDropdown"]
      482 SETTABLEKS                       R2 R1 K282 ["Remove"]
      484 SETTABLEKS                       R1 R0 K285 ["AttachedImagePreview"]
      486 GETIMPORT                        R1 K287 [pcall]
      488 GETIMPORT                        R2 K289 [game]
      490 GETTABLEKS                       R2 R2 K290 ["GetService"]
      492 GETIMPORT                        R3 K289 [game]
      494 LOADK                            R4 K35 ["Assistant-InputArea-AttachedImagesPreview"]
      495 CALL                             R1 3 1
      496 JUMPIFNOT                        R1 ; [+8]
      497 NEWTABLE                         R2 0 0
      499 DUPCLOSURE                       R3 K292 [PROTO_13]
      500 CAPTURE                          VAL R3
      501 CAPTURE                          VAL R2
      502 MOVE                             R4 R3
      503 MOVE                             R5 R0
      504 CALL                             R4 1 0
      505 RETURN                           R0 1
