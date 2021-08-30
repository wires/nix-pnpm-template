with import <nixpkgs> {};

stdenv.mkDerivation {

	name = "flep";

	buildInputs = [
		nodejs
		nodePackages.pnpm
	];

	shellHook = ''
		pnpm install
	'';
}
