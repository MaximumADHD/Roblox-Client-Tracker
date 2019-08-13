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
uniform samplerCube EnvironmentMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 _594 = (texture2D(DiffuseMapTexture, VARYING0.xy).xyz * VARYING2.xyz).xyz;
    vec3 _697 = vec3(CB0[15].x);
    float _799 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _743 = VARYING3.yzx - (VARYING3.yzx * _799);
    vec4 _753 = vec4(clamp(_799, 0.0, 1.0));
    vec4 _754 = mix(texture3D(LightMapTexture, _743), vec4(0.0), _753);
    vec4 _759 = mix(texture3D(LightGridSkylightTexture, _743), vec4(1.0), _753);
    float _776 = _759.x;
    vec4 _809 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _822 = (1.0 - ((step(_809.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _809.y)) * _759.y;
    vec3 _613 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, VARYING5.xyz)).xyz;
    vec3 _653 = ((min(((_754.xyz * (_754.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _776), vec3(CB0[17].w)) + (VARYING6.xyz * _822)) * ((mix(vec3(1.0), mix(_613, (_613 * _613) * CB0[15].w, _697), vec3(_776)) * VARYING7.w) + (mix(_594, _594 * _594, _697).xyz * (VARYING2.w - VARYING7.w))).xyz) + (CB0[10].xyz * (VARYING6.w * _822));
    vec4 _983 = vec4(_653.x, _653.y, _653.z, vec4(0.0).w);
    _983.w = VARYING2.w;
    vec3 _683 = mix(_983.xyz, sqrt(clamp(_983.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _697);
    gl_FragData[0] = mix(vec4(CB0[14].xyz, 1.0), vec4(_683.x, _683.y, _683.z, _983.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
