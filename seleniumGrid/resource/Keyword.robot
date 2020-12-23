***Keywords***
open google
    [Arguments]    ${Browser_gc}    ${Browser_ff}    ${Browser_op}
    open Browser    ${URL}    ${Browser_gc}
    open Browser    ${URL}    ${Browser_ff}
    open Browser    ${URL}    ${Browser_op}
#     open Browser    ${URL}    ${Browser_gc}    remote_url=${port_url}
#     close Browser
# open google op
#     open Browser    ${URL}    ${Browser_op}    remote_url=${port_url}
#     close Browser
# open google ff
#     open Browser    ${URL}    ${Browser_ff}    remote_url=${port_url} 
#     close Browser
# open google me
#     open Browser    ${URL}    ${Browser_me}    remote_url=${port_url}
#     close Browser
# open google ie
#     open Browser    ${URL}    ${Browser_ie}    remote_url=${port_url}
#     close Browser