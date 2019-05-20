<template>
    <div>
        <div>
            <div id="container"></div>
        </div>
    </div>
</template>

<script>
/* eslint-disable no-param-reassign */
/* eslint-disable no-restricted-syntax */
/* eslint-disable no-restricßted-syntax */
import THREE from "../libs/three";

export default {
    name: "Scene",
    props: {
        models: {
            type: Array,
            required: true
        },
        enableControls: {
            type: Boolean,
            default: false
        },
        showGrid: {
            type: Boolean,
            default: false
        },
        showLightHelpers: {
            type: Boolean,
            default: false
        },
        cameraSettings: {
            type: Object,
            required: true
        },
        speed: {
            type: String,
            required: true
        },
        axis: {
            type: String,
            required: true
        }
    },
    data() {
        return {
            camera: null,
            controls: null,
            composer: null,
            scene: null,
            renderer: null,
            directionalLight: null,
            light1: null,
            light2: null,
            light3: null,
            light4: null,
            meshes: [],
            helper: null
        };
    },
    mounted() {
        this.init();

        this.addHelper();

        this.addSky();
        this.addLight();
        this.loadModels();

        this.animate();
    },
    methods: {
        init() {
            const container = document.getElementById("container");

            this.camera = new THREE.PerspectiveCamera(
                45,
                container.clientWidth / container.clientHeight,
                0.01,
                3000
            );
            this.camera.position.x = 116;
            this.camera.position.y = 121;
            this.camera.position.z = 200;

            if (this.cameraSettings.position) {
                this.camera.position.x = this.cameraSettings.position.x;
                this.camera.position.y = this.cameraSettings.position.y;
                this.camera.position.z = this.cameraSettings.position.z;
            }

            this.scene = new THREE.Scene();

            this.renderer = new THREE.WebGLRenderer({ antialias: true });
            this.renderer.setSize(
                container.clientWidth,
                container.clientHeight
            );
            container.appendChild(this.renderer.domElement);

            this.controls = new THREE.OrbitControls(
                this.camera,
                this.renderer.domElement
            );
            this.controls.screenSpacePanning = true;
        },
        animate() {
            requestAnimationFrame(this.animate);
            // Anything after to animate

            this.render();
        },
        render() {
            const time = Date.now() * 0.0005;

            // Animate lights
            this.light2.position.x = Math.cos(time * (this.speed * 100)) * 30;
            this.light2.position.y = Math.sin(time * (this.speed * 100)) * 40;
            this.light2.position.z = Math.sin(time * (this.speed * 100)) * 30;
            this.light3.position.x = Math.sin(time * (this.speed * 100)) * 30;
            this.light3.position.y = Math.cos(time * (this.speed * 100)) * 40;
            this.light3.position.z = Math.sin(time * (this.speed * 100)) * 30;
            this.light4.position.x = Math.sin(time * (this.speed * 100)) * 30;
            this.light4.position.y = Math.cos(time * (this.speed * 100)) * 40;
            this.light4.position.z = Math.sin(time * (this.speed * 100)) * 30;

            if (this.speed) {
                this.meshes.forEach(mesh => {
                    if (this.axis === "all" || this.axis === "z") {
                        mesh.rotation.z -= parseFloat(this.speed, 4);
                    }

                    if (this.axis === "all" || this.axis === "x") {
                        mesh.rotation.x -= parseFloat(this.speed, 4);
                    }

                    if (this.axis === "all" || this.axis === "y") {
                        mesh.rotation.y -= parseFloat(this.speed, 4);
                    }
                });
            }

            // Helper Control settings coming from Devise
            this.helper.visible = false;
            this.controls.enabled = this.enableControls;

            this.renderer.render(this.scene, this.camera);
        },
        addLight() {
            this.directionalLight = new THREE.DirectionalLight(0xc31a1a, 5);
            this.scene.add(this.directionalLight);

            const sphere = new THREE.SphereBufferGeometry(0.5, 16, 8);

            this.light1 = new THREE.PointLight(0xff0040, 2, 1000);
            this.light1.add(
                new THREE.Mesh(sphere, new THREE.MeshBasicMaterial())
            );
            this.light1.position.set(20, 50, 0);
            this.scene.add(this.light1);
            this.light2 = new THREE.PointLight(0x0040ff, 2, 1000);
            this.light2.position.set(20, 50, 0);
            this.light2.add(
                new THREE.Mesh(
                    sphere,
                    new THREE.MeshBasicMaterial({ color: 0x0040ff })
                )
            );
            this.scene.add(this.light2);
            this.light3 = new THREE.PointLight(0x80ff80, 2, 1000);
            this.light3.position.set(0, 75, 0);
            this.light3.add(
                new THREE.Mesh(
                    sphere,
                    new THREE.MeshBasicMaterial({ color: 0x80ff80 })
                )
            );
            this.scene.add(this.light3);
            this.light4 = new THREE.PointLight(0xffaa00, 2, 1000);
            this.light4.position.set(0, 50, 0);
            this.light4.add(
                new THREE.Mesh(
                    sphere,
                    new THREE.MeshBasicMaterial({ color: 0xffaa00 })
                )
            );
            this.scene.add(this.light4);

            const light5 = new THREE.PointLight(0xffffff, 5, 5000);
            light5.position.set(0, 5, 50);
            // light5.add(
            //     new THREE.Mesh(
            //         sphere,
            //         new THREE.MeshBasicMaterial({ color: 0xffaa00 })
            //     )
            // );
            this.scene.add(light5);
        },
        addSky() {
            // Add Sky
            const sky = new THREE.Sky();
            sky.scale.setScalar(450000);
            this.scene.add(sky);

            const sunSphere = new THREE.Mesh(
                new THREE.SphereBufferGeometry(20000, 16, 8),
                new THREE.MeshBasicMaterial({ color: 0xffffff })
            );
            sunSphere.visible = false;
            this.scene.add(sunSphere);

            const { uniforms } = sky.material;
            uniforms.turbidity.value = 10;
            uniforms.rayleigh.value = 4;
            uniforms.luminance.value = 1.05;
            uniforms.mieCoefficient.value = 0.01;
            uniforms.mieDirectionalG.value = 0.8;

            const theta = Math.PI * (0.49 - 0.5);
            const phi = 2 * Math.PI * (0.145 - 0.4);
            const distance = 400000;

            sunSphere.position.x = distance * Math.cos(phi);
            sunSphere.position.y = distance * Math.sin(phi) * Math.sin(theta);
            sunSphere.position.z = distance * Math.sin(phi) * Math.cos(theta);
            sunSphere.visible = true;
            uniforms.sunPosition.value.copy(sunSphere.position);
        },
        addHelper() {
            this.helper = new THREE.GridHelper(160, 10);
            this.helper.rotation.x = Math.PI / 2;
            this.scene.add(this.helper);
        },

        loadModels() {
            const loader = new THREE.GLTFLoader().setPath("/models/");

            for (const model of this.models) {
                loader.load(`${model.file}`, gltf => {
                    if (typeof gltf.scene !== "undefined") {
                        gltf.scene.traverse(child => {
                            if (child.isMesh) {
                                child.material = model.materials[child.name];
                                child.material.metalness = 1;

                                if (!model.materials[child.name]) {
                                    console.warn(
                                        `Could not load texture for ${
                                            child.name
                                        }`
                                    );
                                }

                                console.info(
                                    `Loaded texture for ${child.name}`
                                );

                                this.meshes.push(child);
                            }
                        });

                        if (model.position) {
                            gltf.scene.position.x = model.position.x;
                            gltf.scene.position.y = model.position.y;
                            gltf.scene.position.z = model.position.z;
                        }
                        if (model.rotation) {
                            gltf.scene.rotation.x = model.rotation.x;
                            gltf.scene.rotation.y = model.rotation.y;
                            gltf.scene.rotation.z = model.rotation.z;
                        }
                        gltf.scene.scale.set(
                            model.scale.x,
                            model.scale.y,
                            model.scale.z
                        ); // scale here
                        this.scene.add(gltf.scene);
                    }
                });
            }
        }
    }
};
</script>

<style>
#container {
    width: 800px;
    height: 400px;
}
</style>
