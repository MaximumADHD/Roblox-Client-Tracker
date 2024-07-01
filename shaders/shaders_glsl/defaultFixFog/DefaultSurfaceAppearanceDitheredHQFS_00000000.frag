#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    if (f1 < (0.5 * CB0[53].z))
    {
        discard;
    }
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec2 f3 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    vec3 f5 = mix(vec3(0.0, 0.0, 1.0), vec3(f4, sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f6 = texture2D(SpecularMapTexture, VARYING0);
    float f7 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f8 = VARYING6.xyz * f7;
    vec3 f9 = VARYING5.xyz * f7;
    vec3 f10 = normalize(((f8 * f5.x) + ((cross(f9, f8) * VARYING6.w) * f5.y)) + (f9 * f5.z));
    vec3 f11 = f2.xyz;
    vec3 f12 = f11 * f11;
    vec4 f13 = f2;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    float f16 = length(VARYING4.xyz);
    vec3 f17 = VARYING4.xyz / vec3(f16);
    float f18 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f19 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f20 = f6.x * f18;
    vec3 f21 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture3D(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture3D(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec4 f27 = texture2D(ShadowMapTexture, f21.xy);
    float f28 = f21.z;
    vec3 f29 = -CB0[16].xyz;
    float f30 = dot(f10, f29) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[29].z + (CB0[29].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f26.y);
    vec3 f31 = normalize(f17 + f29);
    float f32 = clamp(f30, 0.0, 1.0);
    float f33 = f19 * f19;
    float f34 = max(0.001000000047497451305389404296875, dot(f10, f31));
    float f35 = dot(f29, f31);
    float f36 = 1.0 - f35;
    float f37 = f36 * f36;
    float f38 = (f37 * f37) * f36;
    vec3 f39 = vec3(f38) + (mix(vec3(0.039999999105930328369140625), f15.xyz, vec3(f20)) * (1.0 - f38));
    float f40 = f33 * f33;
    float f41 = (((f34 * f40) - f34) * f34) + 1.0;
    float f42 = 1.0 - f20;
    vec3 f43 = ((((((vec3(f42) - (f39 * (f18 * f42))) * CB0[15].xyz) * f32) + (CB0[17].xyz * (f42 * clamp(-f30, 0.0, 1.0)))) + (min((f25.xyz * (f25.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f26.x)), vec3(CB0[21].w)) * 1.0)) * f15.xyz) + (((f39 * (((f40 + (f40 * f40)) / (((f41 * f41) * ((f35 * 3.0) + 0.5)) * ((f34 * 0.75) + 0.25))) * f32)) * CB0[15].xyz) * 1.0);
    vec4 f44 = vec4(0.0);
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    float f47 = f2.w;
    vec4 f48 = f46;
    f48.w = f47;
    vec3 f49 = -f17;
    vec3 f50 = f49 * f49;
    bvec3 f51 = lessThan(f49, vec3(0.0));
    vec3 f52 = vec3(f51.x ? f50.x : vec3(0.0).x, f51.y ? f50.y : vec3(0.0).y, f51.z ? f50.z : vec3(0.0).z);
    vec3 f53 = f50 - f52;
    vec3 f54 = (((((CB0[34].xyz * f53.x) + (CB0[36].xyz * f53.y)) + (CB0[38].xyz * f53.z)) + (CB0[35].xyz * f52.x)) + (CB0[37].xyz * f52.y)) + (CB0[39].xyz * f52.z);
    bvec3 f55 = bvec3(!(CB0[18].w == 0.0));
    vec3 f56 = mix(vec3(f55.x ? CB0[19].xyz.x : f54.x, f55.y ? CB0[19].xyz.y : f54.y, f55.z ? CB0[19].xyz.z : f54.z), f48.xyz, vec3(clamp(exp2((CB0[18].z * f16) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f57 = f48;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    vec3 f60 = sqrt(clamp(f59.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f61 = f59;
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    vec4 f64 = f63;
    f64.w = f47;
    gl_FragData[0] = f64;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
