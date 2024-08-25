function fish_prompt
    # Set color for the username
    set_color C668DB  # Lighter purple
    echo -n (whoami)@  # Username and '@' in light purple

    # Reset color for the host
    set_color normal  # Reset to normal color for the host
    echo -n archlinux  # Host name in default color

    # Set color for the current path
    set_color C668DB  # Lighter purple for the path
    echo -n ' ' (prompt_pwd)  # Path in light purple

    set_color normal  # Reset to normal color for the prompt symbol
    echo -n ' > '
end
