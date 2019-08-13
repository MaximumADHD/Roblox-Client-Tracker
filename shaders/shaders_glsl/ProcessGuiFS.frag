#version 110

uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 _100 = texture2D(Texture0Texture, VARYING0);
    gl_FragData[0] = vec4(clamp(_100.xyz * 2.0, vec3(0.0), vec3(1.0)), _100.w);
}

//$$Texture0Texture=s0
