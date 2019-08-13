#version 110

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = texture2D(Texture2Texture, VARYING0).xyz;
    vec4 f2 = texture2D(Texture3Texture, VARYING0);
    float f3 = 1.0 - f2.w;
    vec3 f4 = f0.xyz;
    vec3 f5 = (f1 + (min(vec3(1.0), (f2.xyz * CB1[4].y) + (f4 * f3)).xyz * (vec3(1.0) - f1))).xyz + (f4 * (clamp(f3 - f0.w, 0.0, 1.0) * f3));
    vec3 f6 = mix(clamp(vec4(f5.x, f5.y, f5.z, f0.w), vec4(0.0), vec4(1.0)).xyz, texture2D(Texture1Texture, VARYING0).xyz, vec3(CB1[4].x));
    gl_FragData[0] = vec4(dot(f6, CB1[1].xyz) + CB1[1].w, dot(f6, CB1[2].xyz) + CB1[2].w, dot(f6, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
//$$Texture1Texture=s1
