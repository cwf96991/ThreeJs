uniform float uSize;
uniform float uTime;
attribute float aScale;

varying vec3 vColor;
void main(){
    vec4 modelPosition =modelMatrix * vec4(position,1.0);
    // Rotate
    float angle = atan(modelPosition.x, modelPosition.z);
    float distanceToCenter = length(modelPosition.xz);
    float angleOffset = (1.0 / distanceToCenter) * uTime;
    angle += angleOffset;
    modelPosition.x = cos(angle) * distanceToCenter;
    modelPosition.z = sin(angle) * distanceToCenter;
    vec4 viewPosition = viewMatrix *modelPosition;
    vec4 projectedPosition = projectionMatrix * viewPosition;
    gl_Position = projectedPosition;
    gl_PointSize = uSize*aScale;
    //remark: to implement near big far small effect
    gl_PointSize *= (1.0/ - viewPosition.z);
    
     /**
     * Color
     */
    vColor = color; 
}