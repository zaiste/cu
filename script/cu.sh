function cu()
{
    local method
    local content_type
    local data

    while [ "$1" != "" ]; do
        case "$1" in
            -h|--help|"")
                echo "cu - speed up your cURL experience"
                echo "usage: cu <action> <format> <url>"
                exit
                ;;
            "get"|"post"|"put"|"delete"|"head"|"options")
                method="-X $1:u"
                ;;
            "json")
                content_type="-H 'Content-Type: application/json'"
                ;;
            "html"|"xml"|"plain")
                content_type="-H 'Content-Type: text/$1'"
                ;;
            {*})
                data="-d '$1'"
                ;;
            *)
                command="curl $method $content_type $data $1"
                ;;
        esac
        shift
    done
    echo "$command"
}