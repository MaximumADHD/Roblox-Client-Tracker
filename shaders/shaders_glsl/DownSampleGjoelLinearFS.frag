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

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;

void main()
{
    vec3 _296 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 _303 = texture2D(Texture0Texture, VARYING1.xy).xyz;
    vec3 _310 = texture2D(Texture0Texture, VARYING1.zw).xyz;
    vec3 _317 = texture2D(Texture0Texture, VARYING2.xy).xyz;
    vec3 _324 = texture2D(Texture0Texture, VARYING2.zw).xyz;
    vec3 _331 = texture2D(Texture0Texture, VARYING3.xy).xyz;
    vec3 _338 = texture2D(Texture0Texture, VARYING3.zw).xyz;
    vec3 _345 = texture2D(Texture0Texture, VARYING4.xy).xyz;
    vec3 _352 = texture2D(Texture0Texture, VARYING4.zw).xyz;
    vec3 _372 = ((((((((((_296 * _296) * 4.0) + ((_303 * _303) * 4.0)) + ((_310 * _310) * 4.0)) + ((_317 * _317) * 4.0)) + ((_324 * _324) * 4.0)) + ((_331 * _331) * 4.0)) + ((_338 * _338) * 4.0)) + ((_345 * _345) * 4.0)) + ((_352 * _352) * 4.0)) * 0.111111111938953399658203125;
    float _450 = max(max(_372.x, _372.y), _372.z);
    gl_FragData[0] = vec4(_372 * ((vec3(max(_450 - CB1[7].y, 0.0)) / vec3(_450 + 0.001000000047497451305389404296875)) * CB1[7].x), 1.0);
}

//$$Texture0Texture=s0
