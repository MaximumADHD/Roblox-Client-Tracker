#version 110

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

uniform vec4 CB0[32];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 _605 = (texture2D(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    vec3 _702 = vec3(CB0[15].x);
    float _804 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _748 = VARYING3.yzx - (VARYING3.yzx * _804);
    vec4 _758 = vec4(clamp(_804, 0.0, 1.0));
    vec4 _759 = mix(texture3D(LightMapTexture, _748), vec4(0.0), _758);
    vec4 _764 = mix(texture3D(LightGridSkylightTexture, _748), vec4(1.0), _758);
    vec4 _814 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _827 = (1.0 - ((step(_814.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _814.y)) * _764.y;
    vec3 _654 = ((min(((_759.xyz * (_759.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _764.x), vec3(CB0[17].w)) + (VARYING6.xyz * _827)) * mix(_605, _605 * _605, _702).xyz) + (CB0[10].xyz * ((VARYING6.w * _827) * pow(clamp(dot(normalize(VARYING5.xyz), normalize((-CB0[11].xyz) + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 _994 = vec4(_654.x, _654.y, _654.z, vec4(0.0).w);
    _994.w = 1.0;
    vec3 _909 = mix(CB0[14].xyz, mix(_994.xyz, sqrt(clamp(_994.xyz * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _702).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_909.x, _909.y, _909.z, _994.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
