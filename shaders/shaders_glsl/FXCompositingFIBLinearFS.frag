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

varying vec2 VARYING0;

void main()
{
    vec3 _179 = texture2D(Texture0Texture, VARYING0).xyz;
    gl_FragData[0] = vec4(sqrt(clamp(((((_179 * _179) * 4.0) + texture2D(Texture3Texture, VARYING0).xyz) + (texture2D(Texture2Texture, VARYING0).xyz * CB1[4].w)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
