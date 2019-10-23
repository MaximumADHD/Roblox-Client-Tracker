#version 110
#extension GL_ARB_shader_texture_lod : require

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
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 f1 = f0.xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture3D(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture3D(LightGridSkylightTexture, f3), vec4(1.0), f4);
    float f7 = f6.x;
    vec4 f8 = texture2D(ShadowMapTexture, VARYING6.xy);
    float f9 = (1.0 - ((step(f8.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f8.y)) * f6.y;
    vec3 f10 = normalize(VARYING4.xyz);
    vec3 f11 = (f1 * f1).xyz;
    float f12 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f13 = normalize(VARYING5.xyz);
    float f14 = max(VARYING5.w, 0.04500000178813934326171875);
    float f15 = f14 * 5.0;
    vec3 f16 = vec4(reflect(-f10, f13), f15).xyz;
    vec4 f17 = texture2D(PrecomputedBRDFTexture, vec2(f14, max(9.9999997473787516355514526367188e-05, dot(f13, f10))));
    vec3 f18 = mix(vec3(0.039999999105930328369140625), f11, vec3(VARYING6.w));
    vec3 f19 = -CB0[11].xyz;
    vec3 f20 = normalize(f19 + f10);
    float f21 = dot(f13, f19);
    float f22 = clamp(f21, 0.0, 1.0);
    float f23 = f14 * f14;
    float f24 = max(0.001000000047497451305389404296875, dot(f13, f20));
    float f25 = dot(f19, f20);
    float f26 = 1.0 - f25;
    float f27 = f26 * f26;
    float f28 = (f27 * f27) * f26;
    vec3 f29 = vec3(f28) + (f18 * (1.0 - f28));
    float f30 = f23 * f23;
    float f31 = (((f24 * f30) - f24) * f24) + 1.0;
    float f32 = 1.0 - (VARYING6.w * f12);
    float f33 = f17.x;
    float f34 = f17.y;
    vec3 f35 = ((f18 * f33) + vec3(f34)) / vec3(f33 + f34);
    vec3 f36 = (vec3(1.0) - (f35 * f12)) * f32;
    vec3 f37 = f13 * f13;
    bvec3 f38 = lessThan(f13, vec3(0.0));
    vec3 f39 = vec3(f38.x ? f37.x : vec3(0.0).x, f38.y ? f37.y : vec3(0.0).y, f38.z ? f37.z : vec3(0.0).z);
    vec3 f40 = f37 - f39;
    float f41 = f40.x;
    float f42 = f40.y;
    float f43 = f40.z;
    float f44 = f39.x;
    float f45 = f39.y;
    float f46 = f39.z;
    vec3 f47 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f16, f15).xyz, textureCubeLod(PrefilteredEnvTexture, f16, f15).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f13.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f7)) * f35) * f12;
    vec3 f48 = ((((((((((vec3(1.0) - (f29 * f12)) * f32) * CB0[10].xyz) * f22) + ((CB0[12].xyz * (1.0 - (VARYING6.w * CB0[26].w))) * clamp(-f21, 0.0, 1.0))) * f9) + (f36 * (((((((CB0[35].xyz * f41) + (CB0[37].xyz * f42)) + (CB0[39].xyz * f43)) + (CB0[36].xyz * f44)) + (CB0[38].xyz * f45)) + (CB0[40].xyz * f46)) + (((((((CB0[29].xyz * f41) + (CB0[31].xyz * f42)) + (CB0[33].xyz * f43)) + (CB0[30].xyz * f44)) + (CB0[32].xyz * f45)) + (CB0[34].xyz * f46)) * f7)))) + (CB0[27].xyz + (CB0[28].xyz * f7))) * f11) + (((((f29 * ((f30 + (f30 * f30)) / (((f31 * f31) * ((f25 * 3.0) + 0.5)) * ((f24 * 0.75) + 0.25)))) * CB0[10].xyz) * f22) * f9) + f47)) + ((f5.xyz * (f5.w * 120.0)).xyz * mix(f11, f47 * (1.0 / (max(max(f47.x, f47.y), f47.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f36) * f12) * (1.0 - f7)));
    vec4 f49 = vec4(f48.x, f48.y, f48.z, vec4(0.0).w);
    f49.w = f0.w;
    vec3 f50 = mix(CB0[14].xyz, (sqrt(clamp(f49.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(f50.x, f50.y, f50.z, f49.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
