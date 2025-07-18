function uu
    # Updates 
    rustup update
    pixi global update
    opam update
    uv self update
    uv tool update --all
    gup update # update tools installed with go 
    cargo install-update -a # Update tools installed with cargo

    # Upgrades if needed 
    opam upgrade

    # Perform system update
    yay -Syu
end
