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
    vec4 _591 = texture2D(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 _604 = _591.xyz;
    vec3 _700 = vec3(CB0[15].x);
    float _802 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _746 = VARYING3.yzx - (VARYING3.yzx * _802);
    vec4 _756 = vec4(clamp(_802, 0.0, 1.0));
    vec4 _757 = mix(texture3D(LightMapTexture, _746), vec4(0.0), _756);
    vec4 _762 = mix(texture3D(LightGridSkylightTexture, _746), vec4(1.0), _756);
    vec4 _812 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _825 = (1.0 - ((step(_812.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _812.y)) * _762.y;
    vec3 _653 = ((min(((_757.xyz * (_757.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _762.x), vec3(CB0[17].w)) + (VARYING6.xyz * _825)) * mix(_604, _604 * _604, _700).xyz) + (CB0[10].xyz * ((VARYING6.w * _825) * pow(clamp(dot(normalize(VARYING5.xyz), normalize((-CB0[11].xyz) + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 _990 = vec4(_653.x, _653.y, _653.z, vec4(0.0).w);
    _990.w = _591.w;
    vec3 _907 = mix(CB0[14].xyz, mix(_990.xyz, sqrt(clamp(_990.xyz * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _700).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_907.x, _907.y, _907.z, _990.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
