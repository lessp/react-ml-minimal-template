import { defineConfig } from "vite";
import { nodeResolve } from "@rollup/plugin-node-resolve";

export default defineConfig({
  plugins: [nodeResolve()],
  root: "public",
  build: {
    outDir: "../dist",
    emptyOutDir: true,
  },
});
