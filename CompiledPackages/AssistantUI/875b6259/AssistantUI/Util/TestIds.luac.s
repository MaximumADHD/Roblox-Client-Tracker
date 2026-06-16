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
        3 DUPTABLE                         R1 K4 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent", "VersionMismatchIcon"}]
        4 LOADK                            R2 K5 ["Assistant-Header-ToggleThreadsMenu"]
        5 SETTABLEKS                       R2 R1 K0 ["ToggleThreadsMenu"]
        7 LOADK                            R2 K6 ["Assistant-Header-SettingsButton"]
        8 SETTABLEKS                       R2 R1 K1 ["SettingsButton"]
       10 LOADK                            R2 K7 ["Assistant-Header-SettingsContent"]
       11 SETTABLEKS                       R2 R1 K2 ["SettingsContent"]
       13 LOADK                            R2 K8 ["Assistant-Header-VersionMismatchIcon"]
       14 SETTABLEKS                       R2 R1 K3 ["VersionMismatchIcon"]
       16 SETTABLEKS                       R1 R0 K9 ["Header"]
       18 DUPTABLE                         R1 K13 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
       19 LOADK                            R2 K14 ["Assistant-ThreadsMenu-Container"]
       20 SETTABLEKS                       R2 R1 K10 ["Container"]
       22 LOADK                            R2 K15 ["Assistant-ThreadsMenu-ExistingThreadButton"]
       23 SETTABLEKS                       R2 R1 K11 ["ExistingThreadButton"]
       25 LOADK                            R2 K16 ["Assistant-ThreadsMenu-AddThreadButton"]
       26 SETTABLEKS                       R2 R1 K12 ["AddThreadButton"]
       28 SETTABLEKS                       R1 R0 K17 ["ThreadsMenu"]
       30 DUPTABLE                         R1 K20 [{"OptionsButton", "RenameInput"}]
       31 LOADK                            R2 K21 ["Assistant-ThreadEntry-OptionsButton"]
       32 SETTABLEKS                       R2 R1 K18 ["OptionsButton"]
       34 LOADK                            R2 K22 ["Assistant-ThreadEntry-RenameInput"]
       35 SETTABLEKS                       R2 R1 K19 ["RenameInput"]
       37 SETTABLEKS                       R1 R0 K23 ["ThreadEntry"]
       39 DUPTABLE                         R1 K24 [{"Container"}]
       40 LOADK                            R2 K25 ["Assistant-ThreadOptionsMenu-Container"]
       41 SETTABLEKS                       R2 R1 K10 ["Container"]
       43 SETTABLEKS                       R1 R0 K26 ["ThreadOptionsMenu"]
       45 DUPTABLE                         R1 K33 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "AssistantModeDropdown", "AssistantModeDropdownMenu", "Footer"}]
       46 LOADK                            R2 K34 ["Assistant-InputArea-Container"]
       47 SETTABLEKS                       R2 R1 K10 ["Container"]
       49 LOADK                            R2 K35 ["Assistant-InputArea-StopButton"]
       50 SETTABLEKS                       R2 R1 K27 ["StopButton"]
       52 LOADK                            R2 K36 ["Assistant-InputArea-AttachImageButton"]
       53 SETTABLEKS                       R2 R1 K28 ["AttachImageButton"]
       55 LOADK                            R2 K37 ["Assistant-InputArea-AttachedImagesPreview"]
       56 SETTABLEKS                       R2 R1 K29 ["AttachedImagesPreview"]
       58 LOADK                            R2 K38 ["Assistant-InputArea-AssistantModeDropdown"]
       59 SETTABLEKS                       R2 R1 K30 ["AssistantModeDropdown"]
       61 LOADK                            R2 K39 ["Assistant-InputArea-AssistantModeDropdownMenu"]
       62 SETTABLEKS                       R2 R1 K31 ["AssistantModeDropdownMenu"]
       64 DUPTABLE                         R2 K41 [{"Container", "Icon"}]
       65 LOADK                            R3 K42 ["Assistant-InputArea-Footer-Container"]
       66 SETTABLEKS                       R3 R2 K10 ["Container"]
       68 LOADK                            R3 K43 ["Assistant-InputArea-Footer-Icon"]
       69 SETTABLEKS                       R3 R2 K40 ["Icon"]
       71 SETTABLEKS                       R2 R1 K32 ["Footer"]
       73 SETTABLEKS                       R1 R0 K44 ["InputArea"]
       75 DUPTABLE                         R1 K48 [{"Container", "ThumbsUp", "ThumbsDown", "Retry"}]
       76 LOADK                            R2 K49 ["Assistant-MessageActions-Container"]
       77 SETTABLEKS                       R2 R1 K10 ["Container"]
       79 LOADK                            R2 K50 ["Assistant-MessageActions-ThumbsUp"]
       80 SETTABLEKS                       R2 R1 K45 ["ThumbsUp"]
       82 LOADK                            R2 K51 ["Assistant-MessageActions-ThumbsDown"]
       83 SETTABLEKS                       R2 R1 K46 ["ThumbsDown"]
       85 LOADK                            R2 K52 ["Assistant-MessageActions-Retry"]
       86 SETTABLEKS                       R2 R1 K47 ["Retry"]
       88 SETTABLEKS                       R1 R0 K53 ["MessageActions"]
       90 DUPTABLE                         R1 K58 [{"Container", "Dropdown", "TextArea", "Close", "Submit"}]
       91 LOADK                            R2 K59 ["Assistant-FeedbackView-Container"]
       92 SETTABLEKS                       R2 R1 K10 ["Container"]
       94 LOADK                            R2 K60 ["Assistant-FeedbackView-Dropdown"]
       95 SETTABLEKS                       R2 R1 K54 ["Dropdown"]
       97 LOADK                            R2 K61 ["Assistant-FeedbackView-TextArea"]
       98 SETTABLEKS                       R2 R1 K55 ["TextArea"]
      100 LOADK                            R2 K62 ["Assistant-FeedbackView-Close"]
      101 SETTABLEKS                       R2 R1 K56 ["Close"]
      103 LOADK                            R2 K63 ["Assistant-FeedbackView-Submit"]
      104 SETTABLEKS                       R2 R1 K57 ["Submit"]
      106 SETTABLEKS                       R1 R0 K64 ["FeedbackView"]
      108 LOADK                            R1 K65 ["Assistant-GenerationIndicator"]
      109 SETTABLEKS                       R1 R0 K66 ["GenerationIndicator"]
      111 LOADK                            R1 K67 ["Assistant-ModelQualityWarning"]
      112 SETTABLEKS                       R1 R0 K68 ["ModelQualityWarning"]
      114 DUPTABLE                         R1 K70 [{"Button"}]
      115 LOADK                            R2 K71 ["Assistant-ServerManagement-Button"]
      116 SETTABLEKS                       R2 R1 K69 ["Button"]
      118 SETTABLEKS                       R1 R0 K72 ["ServerManagement"]
      120 DUPTABLE                         R1 K75 [{"Checkbox", "CheckboxInput"}]
      121 LOADK                            R2 K76 ["Assistant-McpServer-Checkbox"]
      122 SETTABLEKS                       R2 R1 K73 ["Checkbox"]
      124 LOADK                            R2 K77 ["Assistant-McpServer-Checkbox--container"]
      125 SETTABLEKS                       R2 R1 K74 ["CheckboxInput"]
      127 SETTABLEKS                       R1 R0 K78 ["McpServer"]
      129 DUPTABLE                         R1 K80 [{"Container", "Item"}]
      130 LOADK                            R2 K81 ["Assistant-SlashCommandMenu-Container"]
      131 SETTABLEKS                       R2 R1 K10 ["Container"]
      133 DUPTABLE                         R2 K83 [{"Container", "Command"}]
      134 LOADK                            R3 K84 ["Assistant-SlashCommandMenu-Item-Container"]
      135 SETTABLEKS                       R3 R2 K10 ["Container"]
      137 LOADK                            R3 K85 ["Assistant-SlashCommandMenu-Item-Command"]
      138 SETTABLEKS                       R3 R2 K82 ["Command"]
      140 SETTABLEKS                       R2 R1 K79 ["Item"]
      142 SETTABLEKS                       R1 R0 K86 ["SlashCommandMenu"]
      144 DUPTABLE                         R1 K88 [{"Container", "Option"}]
      145 LOADK                            R2 K89 ["Assistant-ToolMenuView-Container"]
      146 SETTABLEKS                       R2 R1 K10 ["Container"]
      148 DUPTABLE                         R2 K90 [{"Container", "Checkbox"}]
      149 LOADK                            R3 K91 ["Assistant-ToolMenuView-Option-Container"]
      150 SETTABLEKS                       R3 R2 K10 ["Container"]
      152 LOADK                            R3 K92 ["Assistant-ToolMenuView-Option-Checkbox"]
      153 SETTABLEKS                       R3 R2 K73 ["Checkbox"]
      155 SETTABLEKS                       R2 R1 K87 ["Option"]
      157 SETTABLEKS                       R1 R0 K93 ["ToolMenuView"]
      159 DUPTABLE                         R1 K94 [{"Container", "Dropdown"}]
      160 LOADK                            R2 K95 ["Assistant-ModelPicker-Container"]
      161 SETTABLEKS                       R2 R1 K10 ["Container"]
      163 LOADK                            R2 K96 ["Assistant-ModelPicker-Dropdown"]
      164 SETTABLEKS                       R2 R1 K54 ["Dropdown"]
      166 SETTABLEKS                       R1 R0 K97 ["ModelPicker"]
      168 DUPTABLE                         R1 K24 [{"Container"}]
      169 LOADK                            R2 K98 ["Assistant-Carousel-Container"]
      170 SETTABLEKS                       R2 R1 K10 ["Container"]
      172 SETTABLEKS                       R1 R0 K99 ["Carousel"]
      174 DUPTABLE                         R1 K101 [{"Selected"}]
      175 LOADK                            R2 K102 ["Assistant-CarouselItem-Selected"]
      176 SETTABLEKS                       R2 R1 K100 ["Selected"]
      178 SETTABLEKS                       R1 R0 K103 ["CarouselItem"]
      180 DUPTABLE                         R1 K106 [{"Continue", "EditApiKeys", "Close"}]
      181 LOADK                            R2 K107 ["Assistant-Alert-Continue"]
      182 SETTABLEKS                       R2 R1 K104 ["Continue"]
      184 LOADK                            R2 K108 ["Assistant-Alert-EditApiKeys"]
      185 SETTABLEKS                       R2 R1 K105 ["EditApiKeys"]
      187 LOADK                            R2 K109 ["Assistant-Alert-Close"]
      188 SETTABLEKS                       R2 R1 K56 ["Close"]
      190 SETTABLEKS                       R1 R0 K110 ["Alert"]
      192 DUPTABLE                         R1 K113 [{"Image", "Expand"}]
      193 LOADK                            R2 K114 ["Assistant-ImageContent-Image"]
      194 SETTABLEKS                       R2 R1 K111 ["Image"]
      196 LOADK                            R2 K115 ["Assistant-ImageContent-Expand"]
      197 SETTABLEKS                       R2 R1 K112 ["Expand"]
      199 SETTABLEKS                       R1 R0 K116 ["ImageContent"]
      201 DUPTABLE                         R1 K117 [{"Expand"}]
      202 LOADK                            R2 K118 ["Assistant-AssetInsert-Expand"]
      203 SETTABLEKS                       R2 R1 K112 ["Expand"]
      205 SETTABLEKS                       R1 R0 K119 ["AssetInsert"]
      207 DUPTABLE                         R1 K117 [{"Expand"}]
      208 LOADK                            R2 K120 ["Assistant-AssetSearch-Expand"]
      209 SETTABLEKS                       R2 R1 K112 ["Expand"]
      211 SETTABLEKS                       R1 R0 K121 ["AssetSearch"]
      213 DUPTABLE                         R1 K117 [{"Expand"}]
      214 LOADK                            R2 K122 ["Assistant-AssetVariation-Expand"]
      215 SETTABLEKS                       R2 R1 K112 ["Expand"]
      217 SETTABLEKS                       R1 R0 K123 ["AssetVariation"]
      219 DUPTABLE                         R1 K126 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      220 LOADK                            R2 K127 ["Assistant-MaterialGen-Expand"]
      221 SETTABLEKS                       R2 R1 K112 ["Expand"]
      223 LOADK                            R2 K128 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      224 SETTABLEKS                       R2 R1 K124 ["StudsPerTileValueBar"]
      226 LOADK                            R2 K129 ["Assistant-MaterialGen-OrganicPatternToggle"]
      227 SETTABLEKS                       R2 R1 K125 ["OrganicPatternToggle"]
      229 SETTABLEKS                       R1 R0 K130 ["MaterialGen"]
      231 DUPTABLE                         R1 K134 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles"}]
      232 LOADK                            R2 K135 ["Assistant-MeshGen-Expand"]
      233 SETTABLEKS                       R2 R1 K112 ["Expand"]
      235 LOADK                            R2 K136 ["Assistant-MeshGen-PreviewImage"]
      236 SETTABLEKS                       R2 R1 K131 ["PreviewImage"]
      238 LOADK                            R2 K137 ["Assistant-MeshGen-UseSelection"]
      239 SETTABLEKS                       R2 R1 K132 ["UseSelection"]
      241 LOADK                            R2 K138 ["Assistant-MeshGen-MaxTriangles"]
      242 SETTABLEKS                       R2 R1 K133 ["MaxTriangles"]
      244 SETTABLEKS                       R1 R0 K139 ["MeshGen"]
      246 DUPTABLE                         R1 K143 [{"Expand", "Copy", "Run", "Stop"}]
      247 LOADK                            R2 K144 ["Assistant-RunCode-Expand"]
      248 SETTABLEKS                       R2 R1 K112 ["Expand"]
      250 LOADK                            R2 K145 ["Assistant-RunCode-Copy"]
      251 SETTABLEKS                       R2 R1 K140 ["Copy"]
      253 LOADK                            R2 K146 ["Assistant-RunCode-Run"]
      254 SETTABLEKS                       R2 R1 K141 ["Run"]
      256 LOADK                            R2 K147 ["Assistant-RunCode-Stop"]
      257 SETTABLEKS                       R2 R1 K142 ["Stop"]
      259 SETTABLEKS                       R1 R0 K148 ["RunCode"]
      261 DUPTABLE                         R1 K117 [{"Expand"}]
      262 LOADK                            R2 K149 ["Assistant-Thinking-Expand"]
      263 SETTABLEKS                       R2 R1 K112 ["Expand"]
      265 SETTABLEKS                       R1 R0 K150 ["Thinking"]
      267 DUPTABLE                         R1 K155 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      268 LOADK                            R2 K156 ["Assistant-ToolConfirmation-Warning"]
      269 SETTABLEKS                       R2 R1 K151 ["Warning"]
      271 LOADK                            R2 K157 ["Assistant-ToolConfirmation-Accept"]
      272 SETTABLEKS                       R2 R1 K152 ["Accept"]
      274 LOADK                            R2 K158 ["Assistant-ToolConfirmation-Reject"]
      275 SETTABLEKS                       R2 R1 K153 ["Reject"]
      277 LOADK                            R2 K159 ["Assistant-ToolConfirmation-AlwaysAccept"]
      278 SETTABLEKS                       R2 R1 K154 ["AlwaysAccept"]
      280 SETTABLEKS                       R1 R0 K160 ["ToolConfirmation"]
      282 DUPTABLE                         R1 K164 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      283 LOADK                            R2 K165 ["Assistant-ScriptChangeConfirmation-Warning"]
      284 SETTABLEKS                       R2 R1 K151 ["Warning"]
      286 LOADK                            R2 K166 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      287 SETTABLEKS                       R2 R1 K161 ["ReviewEach"]
      289 LOADK                            R2 K167 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      290 SETTABLEKS                       R2 R1 K162 ["AcceptAllPrompt"]
      292 LOADK                            R2 K168 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      293 SETTABLEKS                       R2 R1 K163 ["AcceptAllSession"]
      295 SETTABLEKS                       R1 R0 K169 ["ScriptChangeConfirmation"]
      297 DUPTABLE                         R1 K170 [{"Icon", "Expand"}]
      298 LOADK                            R2 K171 ["Assistant-Summarized-Icon"]
      299 SETTABLEKS                       R2 R1 K40 ["Icon"]
      301 LOADK                            R2 K172 ["Assistant-Summarized-Expand"]
      302 SETTABLEKS                       R2 R1 K112 ["Expand"]
      304 SETTABLEKS                       R1 R0 K173 ["Summarized"]
      306 DUPTABLE                         R1 K175 [{"Title"}]
      307 LOADK                            R2 K176 ["Assistant-ReadFile-Title"]
      308 SETTABLEKS                       R2 R1 K174 ["Title"]
      310 SETTABLEKS                       R1 R0 K177 ["ReadFile"]
      312 DUPTABLE                         R1 K180 [{"Expand", "ReviveButton", "CloseButton"}]
      313 LOADK                            R2 K181 ["Assistant-InputRequested-Expand"]
      314 SETTABLEKS                       R2 R1 K112 ["Expand"]
      316 LOADK                            R2 K182 ["Assistant-InputRequested-ReviveButton"]
      317 SETTABLEKS                       R2 R1 K178 ["ReviveButton"]
      319 LOADK                            R2 K183 ["Assistant-InputRequested-CloseButton"]
      320 SETTABLEKS                       R2 R1 K179 ["CloseButton"]
      322 SETTABLEKS                       R1 R0 K184 ["InputRequested"]
      324 DUPTABLE                         R1 K189 [{"StepperPrev", "StepperNext", "ConfirmCheckbox", "Dismiss"}]
      325 LOADK                            R2 K190 ["Assistant-QuestionAnswer-StepperPrev"]
      326 SETTABLEKS                       R2 R1 K185 ["StepperPrev"]
      328 LOADK                            R2 K191 ["Assistant-QuestionAnswer-StepperNext"]
      329 SETTABLEKS                       R2 R1 K186 ["StepperNext"]
      331 LOADK                            R2 K192 ["Assistant-QuestionAnswer-ConfirmCheckbox"]
      332 SETTABLEKS                       R2 R1 K187 ["ConfirmCheckbox"]
      334 LOADK                            R2 K193 ["Assistant-QuestionAnswer-Dismiss"]
      335 SETTABLEKS                       R2 R1 K188 ["Dismiss"]
      337 SETTABLEKS                       R1 R0 K194 ["QuestionAnswer"]
      339 DUPTABLE                         R1 K198 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      340 LOADK                            R2 K199 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      341 SETTABLEKS                       R2 R1 K195 ["AddIntegrationDialog"]
      343 LOADK                            R2 K200 ["Assistant-IntegrationMenu-TabContent"]
      344 SETTABLEKS                       R2 R1 K196 ["TabContent"]
      346 LOADK                            R2 K201 ["Assistant-IntegrationMenu-EmptyState"]
      347 SETTABLEKS                       R2 R1 K197 ["EmptyState"]
      349 SETTABLEKS                       R1 R0 K202 ["IntegrationMenu"]
      351 DUPTABLE                         R1 K211 [{"TabContent", "CreateNewButton", "RefreshButton", "UploadButton", "PersonalGroup", "RobloxGroup", "Row", "CreateModal", "DetailPane"}]
      352 LOADK                            R2 K212 ["Assistant-Skills-TabContent"]
      353 SETTABLEKS                       R2 R1 K196 ["TabContent"]
      355 LOADK                            R2 K213 ["Assistant-Skills-CreateNewButton"]
      356 SETTABLEKS                       R2 R1 K203 ["CreateNewButton"]
      358 LOADK                            R2 K214 ["Assistant-Skills-RefreshButton"]
      359 SETTABLEKS                       R2 R1 K204 ["RefreshButton"]
      361 LOADK                            R2 K215 ["Assistant-Skills-UploadButton"]
      362 SETTABLEKS                       R2 R1 K205 ["UploadButton"]
      364 LOADK                            R2 K216 ["Assistant-Skills-PersonalGroup"]
      365 SETTABLEKS                       R2 R1 K206 ["PersonalGroup"]
      367 LOADK                            R2 K217 ["Assistant-Skills-RobloxGroup"]
      368 SETTABLEKS                       R2 R1 K207 ["RobloxGroup"]
      370 DUPCLOSURE                       R2 K218 [PROTO_0]
      371 SETTABLEKS                       R2 R1 K208 ["Row"]
      373 DUPTABLE                         R2 K223 [{"Container", "NameInput", "DescriptionInput", "CreateButton", "CancelButton"}]
      374 LOADK                            R3 K224 ["Assistant-Skills-CreateModal-Container"]
      375 SETTABLEKS                       R3 R2 K10 ["Container"]
      377 LOADK                            R3 K225 ["Assistant-Skills-CreateModal-NameInput"]
      378 SETTABLEKS                       R3 R2 K219 ["NameInput"]
      380 LOADK                            R3 K226 ["Assistant-Skills-CreateModal-DescriptionInput"]
      381 SETTABLEKS                       R3 R2 K220 ["DescriptionInput"]
      383 LOADK                            R3 K227 ["Assistant-Skills-CreateModal-CreateButton"]
      384 SETTABLEKS                       R3 R2 K221 ["CreateButton"]
      386 LOADK                            R3 K228 ["Assistant-Skills-CreateModal-CancelButton"]
      387 SETTABLEKS                       R3 R2 K222 ["CancelButton"]
      389 SETTABLEKS                       R2 R1 K209 ["CreateModal"]
      391 DUPTABLE                         R2 K234 [{"Container", "Empty", "SourceUri", "OpenButton", "DuplicateButton", "ConflictModal"}]
      392 LOADK                            R3 K235 ["Assistant-Skills-DetailPane-Container"]
      393 SETTABLEKS                       R3 R2 K10 ["Container"]
      395 LOADK                            R3 K236 ["Assistant-Skills-DetailPane-Empty"]
      396 SETTABLEKS                       R3 R2 K229 ["Empty"]
      398 LOADK                            R3 K237 ["Assistant-Skills-DetailPane-SourceUri"]
      399 SETTABLEKS                       R3 R2 K230 ["SourceUri"]
      401 LOADK                            R3 K238 ["Assistant-Skills-DetailPane-OpenButton"]
      402 SETTABLEKS                       R3 R2 K231 ["OpenButton"]
      404 LOADK                            R3 K239 ["Assistant-Skills-DetailPane-DuplicateButton"]
      405 SETTABLEKS                       R3 R2 K232 ["DuplicateButton"]
      407 DUPTABLE                         R3 K242 [{"Container", "OverwriteButton", "ReloadButton"}]
      408 LOADK                            R4 K243 ["Assistant-Skills-DetailPane-ConflictModal-Container"]
      409 SETTABLEKS                       R4 R3 K10 ["Container"]
      411 LOADK                            R4 K244 ["Assistant-Skills-DetailPane-ConflictModal-OverwriteButton"]
      412 SETTABLEKS                       R4 R3 K240 ["OverwriteButton"]
      414 LOADK                            R4 K245 ["Assistant-Skills-DetailPane-ConflictModal-ReloadButton"]
      415 SETTABLEKS                       R4 R3 K241 ["ReloadButton"]
      417 SETTABLEKS                       R3 R2 K233 ["ConflictModal"]
      419 SETTABLEKS                       R2 R1 K210 ["DetailPane"]
      421 SETTABLEKS                       R1 R0 K246 ["Skills"]
      423 DUPTABLE                         R1 K251 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      424 LOADK                            R2 K252 ["Assistant-IntegrationItem-Dialog"]
      425 SETTABLEKS                       R2 R1 K247 ["Dialog"]
      427 LOADK                            R2 K253 ["Assistant-IntegrationItem-Header"]
      428 SETTABLEKS                       R2 R1 K9 ["Header"]
      430 LOADK                            R2 K254 ["Assistant-IntegrationItem-ToolsContainer"]
      431 SETTABLEKS                       R2 R1 K248 ["ToolsContainer"]
      433 DUPCLOSURE                       R2 K255 [PROTO_1]
      434 SETTABLEKS                       R2 R1 K249 ["ToolPill"]
      436 DUPTABLE                         R2 K259 [{"Toggle", "OverflowButton", "OverflowContent"}]
      437 LOADK                            R3 K4 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent", "VersionMismatchIcon"}]
      438 SETTABLEKS                       R3 R2 K256 ["Toggle"]
      440 LOADK                            R3 K5 ["Assistant-Header-ToggleThreadsMenu"]
      441 SETTABLEKS                       R3 R2 K257 ["OverflowButton"]
      443 LOADK                            R3 K6 ["Assistant-Header-SettingsButton"]
      444 SETTABLEKS                       R3 R2 K258 ["OverflowContent"]
      446 SETTABLEKS                       R2 R1 K250 ["Actions"]
      448 SETTABLEKS                       R1 R0 K263 ["IntegrationItem"]
      450 DUPTABLE                         R1 K268 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      451 LOADK                            R2 K13 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
      452 SETTABLEKS                       R2 R1 K256 ["Toggle"]
      454 LOADK                            R2 K14 ["Assistant-ThreadsMenu-Container"]
      455 SETTABLEKS                       R2 R1 K264 ["StartupCommandLabel"]
      457 LOADK                            R2 K15 ["Assistant-ThreadsMenu-ExistingThreadButton"]
      458 SETTABLEKS                       R2 R1 K265 ["JsonConfigLabel"]
      460 LOADK                            R2 K16 ["Assistant-ThreadsMenu-AddThreadButton"]
      461 SETTABLEKS                       R2 R1 K266 ["StartupCommandCopy"]
      463 LOADK                            R2 K17 ["ThreadsMenu"]
      464 SETTABLEKS                       R2 R1 K267 ["JsonConfigCopy"]
      466 SETTABLEKS                       R1 R0 K274 ["McpSetup"]
      468 DUPTABLE                         R1 K278 [{"Container", "PresetGroup", "PresetItem", "ScopeCheckbox"}]
      469 LOADK                            R2 K23 ["ThreadEntry"]
      470 SETTABLEKS                       R2 R1 K10 ["Container"]
      472 LOADK                            R2 K24 [{"Container"}]
      473 SETTABLEKS                       R2 R1 K275 ["PresetGroup"]
      475 DUPCLOSURE                       R2 K281 [PROTO_2]
      476 SETTABLEKS                       R2 R1 K276 ["PresetItem"]
      478 DUPCLOSURE                       R2 K282 [PROTO_3]
      479 SETTABLEKS                       R2 R1 K277 ["ScopeCheckbox"]
      481 SETTABLEKS                       R1 R0 K283 ["ScopePermissions"]
      483 DUPTABLE                         R1 K287 [{"Section", "Toggle", "CommandLabel", "CommandCopy"}]
      484 LOADK                            R2 K32 ["Footer"]
      485 SETTABLEKS                       R2 R1 K284 ["Section"]
      487 DUPCLOSURE                       R2 K289 [PROTO_4]
      488 SETTABLEKS                       R2 R1 K256 ["Toggle"]
      490 DUPCLOSURE                       R2 K290 [PROTO_5]
      491 SETTABLEKS                       R2 R1 K285 ["CommandLabel"]
      493 DUPCLOSURE                       R2 K291 [PROTO_6]
      494 SETTABLEKS                       R2 R1 K286 ["CommandCopy"]
      496 SETTABLEKS                       R1 R0 K292 ["QuickConnect"]
      498 DUPCLOSURE                       R1 K293 [PROTO_7]
      499 SETTABLEKS                       R1 R0 K294 ["ProviderCheckbox"]
      501 DUPTABLE                         R1 K299 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      502 DUPCLOSURE                       R2 K300 [PROTO_8]
      503 SETTABLEKS                       R2 R1 K295 ["Display"]
      505 DUPCLOSURE                       R2 K301 [PROTO_9]
      506 SETTABLEKS                       R2 R1 K296 ["EditButton"]
      508 DUPCLOSURE                       R2 K302 [PROTO_10]
      509 SETTABLEKS                       R2 R1 K297 ["Input"]
      511 DUPCLOSURE                       R2 K303 [PROTO_11]
      512 SETTABLEKS                       R2 R1 K298 ["SaveButton"]
      514 DUPCLOSURE                       R2 K304 [PROTO_12]
      515 SETTABLEKS                       R2 R1 K222 ["CancelButton"]
      517 SETTABLEKS                       R1 R0 K305 ["APIKey"]
      519 DUPTABLE                         R1 K307 [{"Container", "Remove"}]
      520 LOADK                            R2 K52 ["Assistant-MessageActions-Retry"]
      521 SETTABLEKS                       R2 R1 K10 ["Container"]
      523 LOADK                            R2 K53 ["MessageActions"]
      524 SETTABLEKS                       R2 R1 K306 ["Remove"]
      526 SETTABLEKS                       R1 R0 K310 ["AttachedImagePreview"]
      528 DUPTABLE                         R1 K315 [{"SuggestCheckbox", "RefreshButton", "WarningToggle", "CancelButton", "SuggestButton", "UploadButton", "DeletePillButton"}]
      529 LOADK                            R2 K60 ["Assistant-FeedbackView-Dropdown"]
      530 SETTABLEKS                       R2 R1 K311 ["SuggestCheckbox"]
      532 LOADK                            R2 K61 ["Assistant-FeedbackView-TextArea"]
      533 SETTABLEKS                       R2 R1 K204 ["RefreshButton"]
      535 LOADK                            R2 K62 ["Assistant-FeedbackView-Close"]
      536 SETTABLEKS                       R2 R1 K312 ["WarningToggle"]
      538 LOADK                            R2 K63 ["Assistant-FeedbackView-Submit"]
      539 SETTABLEKS                       R2 R1 K222 ["CancelButton"]
      541 LOADK                            R2 K64 ["FeedbackView"]
      542 SETTABLEKS                       R2 R1 K313 ["SuggestButton"]
      544 LOADK                            R2 K65 ["Assistant-GenerationIndicator"]
      545 SETTABLEKS                       R2 R1 K205 ["UploadButton"]
      547 LOADK                            R2 K66 ["GenerationIndicator"]
      548 SETTABLEKS                       R2 R1 K314 ["DeletePillButton"]
      550 SETTABLEKS                       R1 R0 K323 ["SegmentationPropertyRow"]
      552 GETIMPORT                        R1 K325 [pcall]
      554 GETIMPORT                        R2 K327 [game]
      556 GETTABLEKS                       R2 R2 K328 ["GetService"]
      558 GETIMPORT                        R3 K327 [game]
      560 LOADK                            R4 K73 ["Checkbox"]
      561 CALL                             R1 3 1
      562 JUMPIFNOT                        R1 ; [+8]
      563 NEWTABLE                         R2 0 0
      565 DUPCLOSURE                       R3 K330 [PROTO_13]
      566 CAPTURE                          VAL R3
      567 CAPTURE                          VAL R2
      568 MOVE                             R4 R3
      569 MOVE                             R5 R0
      570 CALL                             R4 1 0
      571 RETURN                           R0 1
