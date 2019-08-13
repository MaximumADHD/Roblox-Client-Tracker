#version 150

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
    vec4 Technology_Exposure;
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

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 _909 = normalize(VARYING5.xyz);
    vec3 _920 = -CB0[11].xyz;
    vec3 _923 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    vec3 _1029 = vec3(CB0[15].x);
    float _1118 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1062 = VARYING3.yzx - (VARYING3.yzx * _1118);
    vec4 _1072 = vec4(clamp(_1118, 0.0, 1.0));
    vec4 _1073 = mix(texture(LightMapTexture, _1062), vec4(0.0), _1072);
    vec4 _1078 = mix(texture(LightGridSkylightTexture, _1062), vec4(1.0), _1072);
    float _1113 = _1078.y;
    vec3 _1195 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1204 = VARYING7.xyz - CB0[27].xyz;
    vec3 _1213 = VARYING7.xyz - CB0[28].xyz;
    vec4 _1257 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1195, _1195) < CB0[26].w) ? 0 : ((dot(_1204, _1204) < CB0[27].w) ? 1 : ((dot(_1213, _1213) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1195, _1195) < CB0[26].w) ? 0 : ((dot(_1204, _1204) < CB0[27].w) ? 1 : ((dot(_1213, _1213) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1195, _1195) < CB0[26].w) ? 0 : ((dot(_1204, _1204) < CB0[27].w) ? 1 : ((dot(_1213, _1213) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1195, _1195) < CB0[26].w) ? 0 : ((dot(_1204, _1204) < CB0[27].w) ? 1 : ((dot(_1213, _1213) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1308 = textureLod(ShadowAtlasTexture, _1257.xy, 0.0);
    vec2 _1621 = vec2(0.0);
    _1621.x = CB0[30].z;
    vec2 _1623 = _1621;
    _1623.y = CB0[30].w;
    float _1355 = (2.0 * _1257.z) - 1.0;
    float _1360 = exp(CB0[30].z * _1355);
    float _1367 = -exp((-CB0[30].w) * _1355);
    vec2 _1324 = (_1623 * CB0[31].y) * vec2(_1360, _1367);
    vec2 _1327 = _1324 * _1324;
    float _1380 = _1308.x;
    float _1387 = max(_1308.y - (_1380 * _1380), _1327.x);
    float _1391 = _1360 - _1380;
    float _1433 = _1308.z;
    float _1440 = max(_1308.w - (_1433 * _1433), _1327.y);
    float _1444 = _1367 - _1433;
    float _1240 = (dot(_909, _920) > 0.0) ? mix(_1113, mix(min((_1360 <= _1380) ? 1.0 : clamp(((_1387 / (_1387 + (_1391 * _1391))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1367 <= _1433) ? 1.0 : clamp(((_1440 / (_1440 + (_1444 * _1444))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1113, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _981 = ((min(((_1073.xyz * (_1073.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1078.x), vec3(CB0[17].w)) + (VARYING6.xyz * _1240)) * mix(_923, _923 * _923, _1029).xyz) + (CB0[10].xyz * ((VARYING6.w * _1240) * pow(clamp(dot(_909, normalize(_920 + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 _1644 = vec4(_981.x, _981.y, _981.z, vec4(0.0).w);
    _1644.w = 1.0;
    vec3 _1540 = mix(CB0[14].xyz, mix(_1644.xyz, sqrt(clamp(_1644.xyz * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1029).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1540.x, _1540.y, _1540.z, _1644.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
