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
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = texture(Texture2Texture, VARYING0).xyz;
    vec4 f2 = texture(Texture3Texture, VARYING0);
    float f3 = 1.0 - f2.w;
    vec3 f4 = f0.xyz;
    vec3 f5 = (f1 + (min(vec3(1.0), (f2.xyz * CB1[4].y) + (f4 * f3)).xyz * (vec3(1.0) - f1))).xyz + (f4 * (clamp(f3 - f0.w, 0.0, 1.0) * f3));
    _entryPointOutput = clamp(vec4(f5.x, f5.y, f5.z, f0.w), vec4(0.0), vec4(1.0));
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
