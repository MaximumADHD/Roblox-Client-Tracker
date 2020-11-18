#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec3 f2 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f3 = (texture(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    vec3 f4 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.x;
    vec4 f11 = texture(ShadowMapTexture, f4.xy);
    float f12 = f4.z;
    vec3 f13 = (f3 * f3).xyz;
    float f14 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f15 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f16 = reflect(-f1, f2);
    float f17 = f15 * 5.0;
    vec3 f18 = vec4(f16, f17).xyz;
    vec4 f19 = texture(PrecomputedBRDFTexture, vec2(f15, max(9.9999997473787516355514526367188e-05, dot(f2, f1))));
    float f20 = VARYING6.w * f14;
    vec3 f21 = mix(vec3(0.039999999105930328369140625), f13, vec3(f20));
    vec3 f22 = -CB0[11].xyz;
    float f23 = dot(f2, f22) * ((1.0 - ((step(f11.x, f12) * clamp(CB0[24].z + (CB0[24].w * abs(f12 - 0.5)), 0.0, 1.0)) * f11.y)) * f9.y);
    vec3 f24 = normalize(f22 + f1);
    float f25 = clamp(f23, 0.0, 1.0);
    float f26 = f15 * f15;
    float f27 = max(0.001000000047497451305389404296875, dot(f2, f24));
    float f28 = dot(f22, f24);
    float f29 = 1.0 - f28;
    float f30 = f29 * f29;
    float f31 = (f30 * f30) * f29;
    vec3 f32 = vec3(f31) + (f21 * (1.0 - f31));
    float f33 = f26 * f26;
    float f34 = (((f27 * f33) - f27) * f27) + 1.0;
    float f35 = 1.0 - f20;
    float f36 = f14 * f35;
    vec3 f37 = vec3(f35);
    float f38 = f19.x;
    float f39 = f19.y;
    vec3 f40 = ((f21 * f38) + vec3(f39)) / vec3(f38 + f39);
    vec3 f41 = f37 - (f40 * f36);
    vec3 f42 = f2 * f2;
    bvec3 f43 = lessThan(f2, vec3(0.0));
    vec3 f44 = vec3(f43.x ? f42.x : vec3(0.0).x, f43.y ? f42.y : vec3(0.0).y, f43.z ? f42.z : vec3(0.0).z);
    vec3 f45 = f42 - f44;
    float f46 = f45.x;
    float f47 = f45.y;
    float f48 = f45.z;
    float f49 = f44.x;
    float f50 = f44.y;
    float f51 = f44.z;
    vec3 f52 = ((((((CB0[35].xyz * f46) + (CB0[37].xyz * f47)) + (CB0[39].xyz * f48)) + (CB0[36].xyz * f49)) + (CB0[38].xyz * f50)) + (CB0[40].xyz * f51)) + (((((((CB0[29].xyz * f46) + (CB0[31].xyz * f47)) + (CB0[33].xyz * f48)) + (CB0[30].xyz * f49)) + (CB0[32].xyz * f50)) + (CB0[34].xyz * f51)) * f10);
    vec3 f53 = (mix(textureLod(PrefilteredEnvIndoorTexture, f18, f17).xyz, textureLod(PrefilteredEnvTexture, f18, f17).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f16.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f10)) * f40) * f14;
    vec3 f54 = ((((((((f37 - (f32 * f36)) * CB0[10].xyz) * f25) + (CB0[12].xyz * (f35 * clamp(-f23, 0.0, 1.0)))) + ((f41 * f52) * CB0[25].w)) + (CB0[27].xyz + (CB0[28].xyz * f10))) * f13) + (((f32 * (((f33 + (f33 * f33)) / (((f34 * f34) * ((f28 * 3.0) + 0.5)) * ((f27 * 0.75) + 0.25))) * f25)) * CB0[10].xyz) + f53)) + ((f8.xyz * (f8.w * 120.0)).xyz * mix(f13, f53 * (1.0 / (max(max(f52.x, f52.y), f52.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f41) * (f14 * (1.0 - f10))));
    vec4 f55 = vec4(f54.x, f54.y, f54.z, vec4(0.0).w);
    f55.w = 1.0;
    float f56 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f57 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f56) * 5.0).xyz;
    bvec3 f58 = bvec3(CB0[13].w != 0.0);
    vec3 f59 = sqrt(clamp(mix(vec3(f58.x ? CB0[14].xyz.x : f57.x, f58.y ? CB0[14].xyz.y : f57.y, f58.z ? CB0[14].xyz.z : f57.z), f55.xyz, vec3(f56)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f60 = vec4(f59.x, f59.y, f59.z, f55.w);
    f60.w = 1.0;
    _entryPointOutput = f60;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
