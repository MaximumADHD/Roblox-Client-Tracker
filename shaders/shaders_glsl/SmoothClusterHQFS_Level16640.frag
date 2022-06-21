#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = dFdx(f5);
    vec2 f7 = dFdy(f5);
    vec2 f8 = f0.zw;
    vec2 f9 = f2.zw;
    vec2 f10 = dFdx(f9);
    vec2 f11 = dFdy(f9);
    vec2 f12 = dFdx(f3);
    vec2 f13 = dFdy(f3);
    vec4 f14 = ((texture2DGradARB(SpecularMapTexture, f4, f6, f7) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f8, f10, f11) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, f12, f13) * VARYING0.z);
    vec2 f15 = dFdx(f5);
    vec2 f16 = dFdy(f5);
    vec2 f17 = dFdx(f9);
    vec2 f18 = dFdy(f9);
    vec2 f19 = dFdx(f3);
    vec2 f20 = dFdy(f3);
    vec4 f21 = ((texture2DGradARB(AlbedoMapTexture, f4, f15, f16).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f8, f17, f18).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f1, f19, f20).yxzw * VARYING0.z);
    vec2 f22 = f21.yz - vec2(0.5);
    float f23 = f22.x;
    vec4 f24 = f21;
    f24.y = f23;
    float f25 = f22.y;
    vec4 f26 = f24;
    f26.z = f25;
    vec4 f27;
    if (VARYING9.w < 1.0)
    {
        vec3 f28 = vec3(0.0);
        f28.x = VARYING9.x * f21.x;
        vec3 f29 = f28;
        f29.y = (VARYING9.y * f23) - (VARYING9.z * f25);
        vec3 f30 = f29;
        f30.z = (VARYING9.z * f23) + (VARYING9.y * f25);
        vec3 f31 = mix(f30, f26.xyz, vec3(VARYING9.w));
        vec4 f32 = f26;
        f32.x = f31.x;
        vec4 f33 = f32;
        f33.y = f31.y;
        vec4 f34 = f33;
        f34.z = f31.z;
        f27 = f34;
    }
    else
    {
        f27 = f26;
    }
    float f35 = f27.x - f27.z;
    vec3 f36 = vec4(vec3(f35, f27.x, f35) + (vec3(f27.yzy) * vec3(1.0, 1.0, -1.0)), f27.w).xyz;
    vec3 f37 = mix(f36, f36 * VARYING9.xyz, vec3(VARYING9.w * f27.w));
    vec4 f38 = vec4(0.0);
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec3 f41 = f40.xyz * f40.xyz;
    float f42 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f43 = normalize(VARYING6);
    vec3 f44 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f45 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f46 = VARYING4.yzx - (VARYING4.yzx * f45);
    vec4 f47 = vec4(clamp(f45, 0.0, 1.0));
    vec4 f48 = mix(texture3D(LightMapTexture, f46), vec4(0.0), f47);
    vec4 f49 = mix(texture3D(LightGridSkylightTexture, f46), vec4(1.0), f47);
    vec4 f50 = texture2D(ShadowMapTexture, f44.xy);
    float f51 = f44.z;
    float f52 = f14.y;
    float f53 = f14.x;
    vec3 f54 = -CB0[11].xyz;
    float f55 = (dot(f43, f54) * CB0[9].w) * ((1.0 - ((step(f50.x, f51) * clamp(CB0[24].z + (CB0[24].w * abs(f51 - 0.5)), 0.0, 1.0)) * f50.y)) * f49.y);
    vec3 f56 = normalize(normalize(VARYING8) - CB0[11].xyz);
    float f57 = clamp(f55, 0.0, 1.0);
    float f58 = f52 * f52;
    float f59 = max(0.001000000047497451305389404296875, dot(f43, f56));
    float f60 = dot(f54, f56);
    float f61 = 1.0 - f60;
    float f62 = f61 * f61;
    float f63 = (f62 * f62) * f61;
    vec3 f64 = vec3(f63) + (mix(vec3(0.039999999105930328369140625), f41, vec3(f53)) * (1.0 - f63));
    float f65 = f58 * f58;
    float f66 = (((f59 * f65) - f59) * f59) + 1.0;
    float f67 = 1.0 - f53;
    vec3 f68 = (((((((vec3(f67) - (f64 * ((CB0[26].w * f42) * f67))) * CB0[10].xyz) * f57) + (CB0[12].xyz * (f67 * clamp(-f55, 0.0, 1.0)))) + (min((f48.xyz * (f48.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f49.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f14.z * 2.0) * f42)) * f41) + (((((f64 * (((f65 + (f65 * f65)) / (((f66 * f66) * ((f60 * 3.0) + 0.5)) * ((f59 * 0.75) + 0.25))) * f57)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f42) * VARYING0.w);
    vec4 f69 = vec4(0.0);
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec4 f72 = f71;
    f72.w = 1.0;
    vec3 f73 = mix(CB0[14].xyz, f72.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f74 = f72;
    f74.x = f73.x;
    vec4 f75 = f74;
    f75.y = f73.y;
    vec4 f76 = f75;
    f76.z = f73.z;
    vec3 f77 = sqrt(clamp(f76.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f78 = f76;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    gl_FragData[0] = f80;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
