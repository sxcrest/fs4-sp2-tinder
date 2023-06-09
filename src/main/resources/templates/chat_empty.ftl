<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/static/img/favicon.ico">


    <title>Chat</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="/static/css/style.css">
    <style>
        .link, .link:hover {
            text-decoration: none;
            color: #1d2124;
        }
        .bt {
            box-sizing: border-box;
            color: #1d2124;
            border: 1px solid #1d2124;
            border-radius: 8px; padding: 4px;
        }
        .bt:hover {
            background-color: #1d2124;
            color: #fff;
            transition: background-color .5s;
        }
        .bt:hover {
            fill: #fff;
        }
        .pan {
            padding: 24px 0;
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 1024px;
            z-index: 10;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }
        .pan-nav {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .user-icon:hover, .like-icon:hover, .logout-icon:hover {
            fill: #fff;
            transition: background-color .5s;
        }
    </style>
</head>
<body>

<header class="pan">
    <nav class="pan-nav">
        <a href="/liked" class="bt link" style="display: flex; align-items: center;">
            <svg class="like-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M17.516 3c2.382 0 4.487 1.564 4.487 4.712 0 4.963-6.528 8.297-10.003 11.935-3.475-3.638-10.002-6.971-10.002-11.934 0-3.055 2.008-4.713 4.487-4.713 3.18 0 4.846 3.644 5.515 5.312.667-1.666 2.333-5.312 5.516-5.312zm0-2c-2.174 0-4.346 1.062-5.516 3.419-1.17-2.357-3.342-3.419-5.515-3.419-3.403 0-6.484 2.39-6.484 6.689 0 7.27 9.903 10.938 11.999 15.311 2.096-4.373 12-8.041 12-15.311 0-4.586-3.414-6.689-6.484-6.689z"/></svg>
        </a>
        <a href="/users" class="bt link" style="display: flex; align-items: center;">
            <svg class="user-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm7.753 18.305c-.261-.586-.789-.991-1.871-1.241-2.293-.529-4.428-.993-3.393-2.945 3.145-5.942.833-9.119-2.489-9.119-3.388 0-5.644 3.299-2.489 9.119 1.066 1.964-1.148 2.427-3.393 2.945-1.084.25-1.608.658-1.867 1.246-1.405-1.723-2.251-3.919-2.251-6.31 0-5.514 4.486-10 10-10s10 4.486 10 10c0 2.389-.845 4.583-2.247 6.305z"/></svg>
        </a>
        <a href="/logout" class="bt link" style="display: flex; align-items: center;">
            <svg class="logout-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M14 19v-.083c-1.178.685-2.542 1.083-4 1.083-4.411 0-8-3.589-8-8s3.589-8 8-8c1.458 0 2.822.398 4 1.083v-2.245c-1.226-.536-2.576-.838-4-.838-5.522 0-10 4.477-10 10s4.478 10 10 10c1.424 0 2.774-.302 4-.838v-2.162zm4-9.592l2.963 2.592-2.963 2.592v-1.592h-8v-2h8v-1.592zm-2-4.408v4h-8v6h8v4l8-7-8-7z"/></svg>
        </a>
    </nav>
</header>

<div class="container">
    <div class="row">
        <div class="chat-main col-6 offset-3">
            <div class="col-md-12 chat-header">
                <div class="row header-one text-white p-1">
                    <div class="col-md-6 name pl-2">
                        <i class="fa fa-comment"></i>
                        <h6 class="ml-1 mb-0">${guestName}</h6>
                    </div>
                </div>
                <div class="row header-two w-100">
                    <div class="col-md-6 options-left pl-1">
                    </div>
                    <div class="col-md-6 options-right text-right pr-2">
                        <i class="fa fa"></i>
                    </div>
                </div>
            </div>
            <div class="chat-content" >
                <div class="col-md-12 chats pt-3 pl-2 pr-3 pb-3" style="height: 600px; overflow: auto">
                </div>

                <#--               `SEND MESSAGE FIELD block start`-->
                <form method="POST" action="/messages">
<#--                <form method="POST" action="/messages/${guestId}">-->
                    <div class="col-md-12 p-2 msg-box border border-primary">
                        <div class="row">
                            <div class="col-md-2 options-left">
                                <i class="fa fa-smile-o"></i>
                            </div>
                            <div class="col-md-7 pl-0">
                                <input type="hidden" name="idSender" value=${hostId}>
                                <input type="hidden" name="idReceiver" value=${guestId}>
                                <input type="text" name="body" class="border-0" placeholder=" Send message">
                            </div>
                            <div class="col-md-3 text-right options-right">
                                <i class="fa fa-picture-o mr-2"></i>
                            </div>
                        </div>
                    </div>
<#--                    <div class="col-md-12 p-2 msg-box border border-primary">-->
                        <div class="row">
                            <div class="col-md-6 options-left">
                                <button type="submit" name="submit" value="submit" class="btn btn-outline-info btn-block">SUBMIT</button>
                            </div>
                        </div>
<#--                    </div>-->
                </form>
                <#--               `SEND MESSAGE FIELD block end`-->

            </div>
        </div>
    </div>
</div>

</body>
</html>