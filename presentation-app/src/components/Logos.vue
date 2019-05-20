<template>
    <div>
        <three-d-scene
            :speed="devise.speed.text"
            :axis="devise.axis.value"
            :enable-controls="devise.enableControls.checked"
            :models="models"
            :camera-settings="camera"
        ></three-d-scene>
    </div>
</template>

<script>
import THREE from "../libs/three";

export default {
    name: "Logos",
    props: {
        devise: {
            type: Object,
            required: true
        }
    },
    data() {
        return {
            models: [],
            camera: {
                // lookAt: new THREE.Vector3(-30, 80, -1),
                position: {
                    x: 0,
                    y: 0,
                    z: 100
                }
            }
        };
    },
    computed: {
        modelPosition() {
            return {
                x: this.devise.modelX.text,
                y: this.devise.modelY.text,
                z: this.devise.modelZ.text
            };
        }
    },
    created() {
        this.models.push({
            file: "vuejs-laravel.glb",
            castShadow: true,
            receiveShadow: true,
            outline: true,
            materials: {
                "vuejs-blue": this.material("vuejs-blue"),
                "vuejs-green": this.material("vuejs-green"),
                laravel: this.material("laravel")
            },
            scale: {
                x: 50,
                y: 50,
                z: 50
            },
            position: {
                x: -20,
                y: -20,
                z: 0
            },
            rotation: {
                x: 0,
                y: 0,
                z: 0
            }
        });
    },
    methods: {
        material(materialFor) {
            let reflectivity = 1;
            let specularShininess = 1;
            let specularColor = new THREE.Color("#41b883");
            let diffuseColor = new THREE.Color().setHSL(0.9, 10, 0);

            if (materialFor === "laravel") {
                reflectivity = 0.7;
                specularShininess = 0.7;
                specularColor = new THREE.Color("#d65f2a");
                diffuseColor = new THREE.Color().setHSL(0.9, 10, 0);
            } else if (materialFor === "vuejs-blue") {
                reflectivity = 0.7;
                specularShininess = 0.7;
                specularColor = new THREE.Color("#35495e");
                diffuseColor = new THREE.Color().setHSL(0.9, 10, 0);
            }

            const material = new THREE.MeshPhongMaterial({
                color: diffuseColor,
                specular: specularColor,
                reflectivity,
                shininess: specularShininess,
                side: THREE.DoubleSide
            });

            return material;
        }
    }
};
</script>
