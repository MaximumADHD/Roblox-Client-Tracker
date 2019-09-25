#version 150

const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec3 Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

struct Instance
{
    vec4 row0;
    vec4 row1;
    vec4 row2;
    vec4 scale;
    vec4 color;
    vec4 uvScale;
    vec4 uvOffset;
};

uniform vec4 CB0[32];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    int v2 = int(NORMAL.w);
    vec4 v3 = COLOR0 * 0.0039215688593685626983642578125;
    float v4 = float(CB1[gl_InstanceID * 7 + 3].w > 0.0);
    vec3 v5 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v6 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v7 = vec4(v6.x, v6.y, v6.z, POSITION.w);
    float v8 = dot(CB1[gl_InstanceID * 7 + 0], v7);
    float v9 = dot(CB1[gl_InstanceID * 7 + 1], v7);
    float v10 = dot(CB1[gl_InstanceID * 7 + 2], v7);
    vec3 v11 = vec3(v8, v9, v10);
    float v12 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v5);
    float v13 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v5);
    float v14 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v5);
    vec3 v15 = vec3(v12, v13, v14);
    vec2 v16 = vec2(0.0);
    v16.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v17 = v16;
    v17.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v18 = vec2(0.0);
    v18.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v19 = v18;
    v19.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec3 v20 = CB1[gl_InstanceID * 7 + 4].xyz * mix(v3.xyz, vec3(1.0), vec3(v4));
    vec4 v21 = vec4(v20.x, v20.y, v20.z, v3.w);
    v21.w = CB1[gl_InstanceID * 7 + 4].w;
    float v22 = dot(v15, -CB0[11].xyz);
    vec4 v23 = vec4(v8, v9, v10, 1.0);
    vec4 v24 = v23 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v25 = vec4((TEXCOORD0.xy * v17) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 v26 = vec4(0.0, (TEXCOORD0.zw * v19).y, 0.0, 0.0);
    v26.x = max(0.0500000007450580596923828125, mix(1.0 - v3.w, 0.0, v4));
    float v27 = v24.w;
    vec4 v28 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * v27) * CB0[24].y);
    vec4 v29 = vec4(dot(CB0[21], v23), dot(CB0[22], v23), dot(CB0[23], v23), 0.0);
    v29.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = v24;
    VARYING0 = vec4(v25.x, v25.y, v28.x, v28.y);
    VARYING1 = vec4(v26.x, v26.y, v28.z, v28.w);
    VARYING2 = v21;
    VARYING3 = vec4(((v11 + (v15 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - v11, v27);
    VARYING5 = vec4(v12, v13, v14, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(v22, 0.0)) + (CB0[12].xyz * max(-v22, 0.0)), (float(v22 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = v29;
    VARYING8 = TEXCOORD2.w - 1.0;
}

