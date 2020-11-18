#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[52];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    float f4 = f3.w;
    vec4 f5 = vec4(mix(VARYING2.xyz, f3.xyz, vec3(f4)), VARYING2.w);
    vec4 f6 = vec4(f3.xyz, VARYING2.w * f4);
    bvec4 f7 = bvec4(CB3[0].x != 0.0);
    vec4 f8 = vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w);
    vec2 f9 = texture(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec2 f12 = vec3(f10, f11).xy * f2;
    vec4 f13 = texture(SpecularMapTexture, VARYING0);
    vec3 f14 = normalize(((VARYING6.xyz * f12.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f12.y)) + (VARYING5.xyz * f11));
    vec3 f15 = f8.xyz;
    vec3 f16 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    float f22 = f21.x;
    vec4 f23 = texture(ShadowMapTexture, f16.xy);
    float f24 = f16.z;
    vec3 f25 = (f15 * f15).xyz;
    float f26 = CB0[26].w * f2;
    float f27 = max(f13.y, 0.04500000178813934326171875);
    vec3 f28 = reflect(-f1, f14);
    float f29 = f27 * 5.0;
    vec3 f30 = vec4(f28, f29).xyz;
    vec4 f31 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f14, f1))));
    float f32 = f13.x * f26;
    vec3 f33 = mix(vec3(0.039999999105930328369140625), f25, vec3(f32));
    vec3 f34 = -CB0[11].xyz;
    float f35 = dot(f14, f34) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[24].z + (CB0[24].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f21.y);
    vec3 f36 = normalize(f34 + f1);
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f27 * f27;
    float f39 = max(0.001000000047497451305389404296875, dot(f14, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (f33 * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    float f47 = 1.0 - f32;
    float f48 = f26 * f47;
    vec3 f49 = vec3(f47);
    float f50 = f31.x;
    float f51 = f31.y;
    vec3 f52 = ((f33 * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = f49 - (f52 * f48);
    vec3 f54 = f14 * f14;
    bvec3 f55 = lessThan(f14, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = ((((((CB0[35].xyz * f58) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[40].xyz * f63)) + (((((((CB0[29].xyz * f58) + (CB0[31].xyz * f59)) + (CB0[33].xyz * f60)) + (CB0[30].xyz * f61)) + (CB0[32].xyz * f62)) + (CB0[34].xyz * f63)) * f22);
    vec3 f65 = (mix(textureLod(PrefilteredEnvIndoorTexture, f30, f29).xyz, textureLod(PrefilteredEnvTexture, f30, f29).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * f52) * f26;
    vec3 f66 = ((((((((f49 - (f44 * f48)) * CB0[10].xyz) * f37) + (CB0[12].xyz * (f47 * clamp(-f35, 0.0, 1.0)))) + ((f53 * f64) * CB0[25].w)) + (CB0[27].xyz + (CB0[28].xyz * f22))) * f25) + (((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[10].xyz) + f65)) + ((f20.xyz * (f20.w * 120.0)).xyz * mix(f25, f65 * (1.0 / (max(max(f64.x, f64.y), f64.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f53) * (f26 * (1.0 - f22))));
    float f67 = f8.w;
    vec4 f68 = vec4(f66.x, f66.y, f66.z, vec4(0.0).w);
    f68.w = f67;
    float f69 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f70 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f69) * 5.0).xyz;
    bvec3 f71 = bvec3(CB0[13].w != 0.0);
    vec3 f72 = sqrt(clamp(mix(vec3(f71.x ? CB0[14].xyz.x : f70.x, f71.y ? CB0[14].xyz.y : f70.y, f71.z ? CB0[14].xyz.z : f70.z), f68.xyz, vec3(f69)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f73 = vec4(f72.x, f72.y, f72.z, f68.w);
    f73.w = f67;
    _entryPointOutput = f73;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
