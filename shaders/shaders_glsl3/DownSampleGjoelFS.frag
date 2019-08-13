#version 150

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

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture(Texture0Texture, VARYING1.xy).xyz;
    vec3 f2 = texture(Texture0Texture, VARYING1.zw).xyz;
    vec3 f3 = texture(Texture0Texture, VARYING2.xy).xyz;
    vec3 f4 = texture(Texture0Texture, VARYING2.zw).xyz;
    vec3 f5 = texture(Texture0Texture, VARYING3.xy).xyz;
    vec3 f6 = texture(Texture0Texture, VARYING3.zw).xyz;
    vec3 f7 = texture(Texture0Texture, VARYING4.xy).xyz;
    vec3 f8 = texture(Texture0Texture, VARYING4.zw).xyz;
    vec3 f9 = ((((((((((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + ((f2 * f2) * 4.0)) + ((f3 * f3) * 4.0)) + ((f4 * f4) * 4.0)) + ((f5 * f5) * 4.0)) + ((f6 * f6) * 4.0)) + ((f7 * f7) * 4.0)) + ((f8 * f8) * 4.0)) * 0.111111111938953399658203125;
    float f10 = max(max(f9.x, f9.y), f9.z);
    _entryPointOutput = vec4(sqrt(clamp((f9 * ((vec3(max(f10 - CB1[7].y, 0.0)) / vec3(f10 + 0.001000000047497451305389404296875)) * CB1[7].x)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
