<%-- 
    Document   : dnew
    Created on : Mar 1, 2025, 3:53:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar using CSS</title>
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap');
        a {
    color: #4b35ef;
    text-decoration: none;
    background-color: transparent;
}
a:hover{
    text-decoration: underline;
}
.btn-danger {
    background-color: #d71149;
    border-color: #d71149;
}

.card {
    border: none;
}

a:hover,
a:focus {
    text-decoration: none;
}
b{
    font-weight: 700;
}
.btn-group-lg>.btn,
.btn-lg {
    border-radius: none;
}

.pagecontainer__root {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.container__header {
    background-color: #fff;
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .1);
    position: sticky;
    top: 0;
    z-index: 4;
}

.nav__appbar {
    min-height: 4rem;
    padding: .65rem 0;
}

.wrapper__header {
    height: 100%;
    z-index: 14;
    align-items: center;
    display: flex;
}

.content__container {
    height: 100%;
    max-width: calc(1440px + 12rem);
}

@media only screen and (min-width:75rem) {
    .content__container {
        padding-left: 6rem;
        padding-right: 6rem;
    }
}

.content__wrapper {
    width: 100%;
    margin: 0 auto;
    align-items: center;
    display: flex;
}

.section__content {
    display: flex;
    align-items: center;
    height: 100%;
    z-index: 1;

}

.section__left {
    flex: 1 1;
}

.header__list {
    display: flex;
    list-style-type: none;
    margin: 0;
    padding: 0;
    align-items: center;
}

.tab__link {
    color: #19191a;
}
.tab__link:hover {
    text-decoration: none;
    cursor: pointer;
    color: #6400e4;
}

.tab__logo {
    margin-left: -2.375rem;
}

.image__header {
    height: 1.6875rem;
    margin-bottom: .25rem;
}

.desktop__view {
    display: inherit;
}

.header__list li {
    padding-left: 2.375rem;
    list-style-type: none;
}

.section__right {
    justify-content: flex-end;
    flex: 1 1;
}

.basic__button {
    text-align: center;
    text-decoration: none;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    font-family: inherit;
}
.basic__button:active{
    background-image: none;
    outline: 0;
}
.basic__button:active:focus, .basic__button:focus{
    outline: none;
}
.basic__button:focus,.basic__button:hover:focus{
    text-decoration: none;
}
.btn__medium {
    display: inline-flex;
    justify-content: center;
    font-weight: 700;
    border-radius: 2px;
    -moz-user-select: none;
    padding: .375rem 1rem;
    font-size: 1rem;
    line-height: 1.5;
    min-width: 8rem;
    transition: all .1s ease-in-out;
}

.btn_purple {
    color: #fff;
    background-color: #6400e4;
    border-color: transparent;
}
.btn_purple:active , .btn_purple:hover{
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .3);
    text-decoration: none;
    color: #fff;
}
.btn_purple:active{
    color: #e6e6e6;
    background-color: #5000b6;
}
.btn_purple:focus{
    box-shadow: 0 0 0 3px rgba(100, 0, 228, .5);
}
.btn_purple.btn_outline__purple {
    color: #6400e4;
    background-color: transparent;
    border: 1px solid #6400e4;
}
.btn_purple.btn_outline__purple:hover{
    background-color: rgba(100, 0, 228, .1);
    box-shadow: none;
}
.btn_purple.btn_outline__purple:active {
    background-color: rgba(100, 0, 228, .4);
    box-shadow: none;
}
.register__btn {
    padding: 0;
}

.container__main-page {
    max-width: 90rem !important;
    margin: auto;
    width: 100%;
    padding-left: 1rem;
    padding-right: 1rem;
    position: relative;
}

@media only screen and (min-width:48rem) {
    .container__main-page {
        padding-left: 1.5rem;
        padding-right: 1.5rem
    }
}

@media only screen and (min-width:64rem) {
    .container__main-page {
        padding-left: 2rem;
        padding-right: 2rem;
    }
}

.main__content {
    flex-grow: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}

@media only screen and (min-width:48rem) {
    .main__content {
        padding-top: 0;
        padding-bottom: 0;
    }
}

.spacer__container {
    margin-top: 4rem;
    margin-bottom: 4rem;
}

.pageHeading__h1 {
    font-size: 1.8rem;
    margin-bottom: 2rem;
}
.form__container{
    max-width: 96vw;
    width: 22rem;
}
.container__content-form{
    display: flex;
    flex-direction: column;
    max-width: 22rem;
}
.flex__style{
    display: flex;
} 
.col__style{
    flex-direction: column;
}
.login-form__style{
    text-align: left;
    padding-bottom: 1rem;
}
.form__base{
    display: flex;
    -webkit-flex-direction: column;
    flex-direction: column;
    align-items: flex-start;
}
.screenRead__style{
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    -webkit-clip-path: inset(50%);
    clip-path: inset(50%);
    border: 0;
}
.form__group1{
    width: 100%;
}
.form__group2 {
    width: 100%;
    margin-bottom: 1.5rem;
}
.form__group3 {
    margin-bottom: 1rem;
}
.label__formGroup{
    display: block;
    font-weight: 700;
    margin-bottom: .5rem;
    line-height: 1.25rem;
}
.label__formGroup label{
    font-size: .9rem !important;
}
.input__formGroup{
    font-size: 1rem;
    text-indent: .8rem;
    padding: .8rem 0;
    outline: none;
    width: 100%;
    border: 1px solid #e9eaea;
    border-radius: 2px;
    transition: border-color .15s;
    font-weight: 400;
    box-sizing: border-box;
}
.input__formGroup:focus {
    border-color: #4c7ef3;
}
.padBottom__IfNotEmpty{
    text-align: left;
}
.container__forgot{
    position: relative;
    width: 100%;
}
.forgot__style{
    font-size: .9rem;
    color: #2e4a99 !important;
    margin-bottom: 1rem;
    font-weight: 700;
}
.btn__lg{
    display: inline-flex;
    justify-content: center;
    font-weight: 700;
    border: 1px solid transparent;
    border-radius: 2px;
    -moz-user-select: none;
    padding: .375rem 1rem;
    font-size: 1rem;
    line-height: 1.5;
    min-width: 8rem;
    transition: all .1s ease-in-out;
}
.btn__royalblue{
    color: #fff;
    background-color: #4b35ef;
    border-color: transparent;
}
.btn__royalblue:active{
    color: #e6e6e6;
    background-color: #3c2abf;
}
.btn__royalblue:active ,.btn__royalblue:hover{
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .3);
    text-decoration: none;
    color: #fff;
}
.btn__royalblue:focus{
    box-shadow: 0 0 0 3px rgba(75, 53, 239, .5);
}
.btn__xlarge{
    padding: .75rem 1.25rem;
    font-size: 1.25rem;
    line-height: 1.33333;
    min-width: 10rem;
}
.btn__submit{
    margin: 1rem 0;
    width: 100%;
}
button:focus{
    outline: 1px dotted;
    outline: 5px auto -webkit-focus-ring-color;
}
.heading__2{
    font-family:MuseoSans;
    font-weight:700;
    font-size: 1rem;
    margin-bottom: 1rem;
}
.btnContainer__social{
    padding: 0;
    display: flex;
    justify-content: space-between;
}
.btnContainer__ListItem{
    display: flex;
    justify-content: center;
    align-items: center;
    flex: 1 1 auto;
}
.btnContainer__ListItem+ .btnContainer__ListItem{
    margin-left: .5rem;
}
.btn__x-sm{
    display: inline-flex;
    justify-content: center;
    font-weight: 700;
    border: 1px solid transparent;
    border-radius: 2px;
    -moz-user-select: none;
    padding: .375rem 1rem;
    font-size: 1rem;
    line-height: 1.5;
    min-width: 8rem;
    transition: all .1s ease-in-out;
}
.btn__red{
    color: #fff;
    background-color: #f65a5b;
    border-color: transparent;
} 
.btn__red:focus{
    box-shadow: 0 0 0 3px rgba(246, 90, 91, .5);
}
.btn__red:active{
    color: #e6e6e6;
    background-color: #c54849;
}
.btn__red:active,.btn__red:hover{
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .3);
    text-decoration: none;
    color: #fff;
}
.btn__social{
    transition: box-shadow .3s;
    margin-bottom: .5rem;
    background-color: #fff;
    color: #5a5b5e;
    padding: .5rem 1rem;
    text-align: left;
    border: 2px solid #e9eaea;
    display: block;
    min-width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.btn__social:active,.btn__social:focus,.btn__social:hover{
    border: 2px solid #e9eaea;
    color: #5a5b5e;
    background-color: #fff;
    box-shadow: 0 4px 15px rgba(212, 213, 214, .6);
}
.icon__social{
    transition: transform .3s ease-in;
    transition: transform .3s ease-in;
    width: 1.5rem;
}
.outLink__register{
    text-align: right;
    display: block;
    color: #6400e4;
}
.outLink__register:focus,
.outLink__register:hover{
    color: #5900cb;
}
.footer__page{
    background-color: #15141f;
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
    color: hsla(0, 0%, 100%, .6);
    width: 100%;
}
.footer__page a{
    color: hsla(0, 0%, 100%, .6) !important;
}
.footer__page li {
    color: hsla(0, 0%, 100%, .6);
}
.container__styles{
    display: flex;
    flex-direction: column;
}
@media only screen and (min-width:48rem){
    .container__styles {
        justify-content: space-between;
        flex-direction: row;
    }
    .container__styles>div {
        margin-bottom: 0;
    }
    .container__styles>div:nth-of-type(2) {
        justify-content: center;
    }
}
.container__styles > div:first-of-type , .container__styles > div:last-of-type{
    flex-basis: 25%;
}
.container__styles>div{
    margin-bottom: 1.5rem;
}
.container__styles>div:nth-of-type(2) {
    flex-basis: 50%;
    display: flex;
}
svg:not(:root) {
    overflow: hidden;
}
.linkList__styles{
    display: flex;
    flex-direction: column;
    justify-self: end;
    list-style-type: none;
    padding: 0;
    margin: 0;
}
.linkList__styles a{
    color: #141c3a;
}
@media only screen and (min-width:48rem) {
    .linkList__styles {
        flex-direction: row;
        align-items: center;
    }
    .linkList__styles>li+li{
        margin-left: 3rem;
    }
}
.social__listStyles{
    list-style-type: none;
    display: flex;
    padding: 0;
    margin: 0;
    align-items: center;
    height: 100%;
}
.social__listStyles li+li{
    margin-left: 1.5rem;
}
@media only screen and (min-width:48rem) {
    .social__listStyles {
        justify-content: flex-end;
    }
}

    </style>
</head>

<body>
    <div class="pagecontainer__root">
        <header class="container__header">
            <nav class="wrapper__header nav__appbar">
                <div class="content__container content__wrapper">
                    <div class="section__content section__left">
                        <ul class="header__list">
                            <li>
                                <a id="logo" href="#" class="tab__link tab__logo">
                                    <img alt="Codecademy logo" class="image__header"
                                         <img src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp" class="rounded-circle" height="25" alt="Black and White Portrait of a Man" loading="lazy" />
                                </a>
                            </li>
                        </ul>
                        <ul class="header__list desktop__view">
                            <li>
                                <a id="catalog" href="#" class="tab__link">Catalog</a>
                            </li>
                            <li>
                                <a href="#" id="pricing" class="tab__link">Pricing</a>
                            </li>
                        </ul>
                    </div>
                    <div class="section__content section__right">
                        <ul class="header__list desktop__view">
                            <li>
                                <div id="pro-button" class="tab__link">
                                    <a data-btn="true" class="basic__button btn__medium btn_purple btn_outline__purple" href="#">Upgrade to Pro</a>
                                </div>
                            </li>
                            <li>
                                <div id="sign-up" class="tab__link register__btn">
                                    <a class="basic__button btn__medium btn_purple" href="#">Sign up</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main class="container__main-page main__content">
            <div class="spacer__container">
                <h1 class="pageHeading__h1">Log In to Codecademy</h1>
                <div class="form__container">
                    <div class="container__content-form">
                        <div class="flex__style col__style login-form__style">
                            <form action="#" class="form__base">
                                <legend class="screenRead__style">Log in</legend>
                                <div class="form__group1">
                                    <div class="form__group2 form__group3">
                                        <label for="user_login" class="Label__formGroup">Email or
                                            username</label>
                                            <input type="text" name="user[login]" id="user_login"
                                            class="input__formGroup" value=""></div>
                                    <div class="form__group2 form__group3">
                                        <label for="login__user_password"
                                            class="Label__formGroup">Password</label>
                                            <input type="password" name="user[password]" id="login__user_password"
                                            class="input__formGroup" value=""></div>
                                </div>
                                <div class="padBottom__IfNotEmpty"></div>
                                <div class="container__forgot">
                                    <a class="forgot__style" href="#">I forgot my
                                        password</a>
                                </div>
                                    <button class="basic__button btn__lg btn__royalblue btn__xlarge btn__submit"
                                    id="user_submit">Log in</button>
                            </form>
                        </div>
                        <div class="flex__style col__style">
                            <div>
                                <h2 class="heading__2">Log In with Another Account</h2>
                                <ul class="btnContainer__social">
                                    <li class="btnContainer__ListItem">
                                        <a class="basic__button btn__x-sm btn__red btn__social" href="#">
                                            <img src="https://www.codecademy.com/webpack/44054fb2b758a8db1cece67a2acbe209.svg"
                                                class="icon__social">
                                        </a>
                                    </li>
                                    <li class="btnContainer__ListItem">
                                        <a class="basic__button btn__x-sm btn__red btn__social" href="#">
                                            <img src="https://www.codecademy.com/webpack/ffab1a716871d082b20aba480a35595b.svg"
                                                class="icon__social">
                                        </a>
                                    </li>
                                    <li class="btnContainer__ListItem">
                                        <a class="basic__button btn__x-sm btn__red btn__social" href="#">
                                            <img src="https://www.codecademy.com/webpack/60fb18ae0caa43e1794d0715ce2fb6bf.svg"
                                                class="icon__social">
                                        </a>
                                    </li>
                                    <li class="btnContainer__ListItem">
                                        <a class="basic__button btn__x-sm btn__red btn__social" href="#">
                                            <img src="https://www.codecademy.com/webpack/74c384acd56adc62625f392b540a6d8b.svg"
                                                class="icon__social">
                                        </a>
                                    </li>
                                    <li class="btnContainer__ListItem">
                                        <a class="basic__button btn__x-sm btn__red btn__social" href="#">
                                            <img src="https://www.codecademy.com/webpack/be1606e736b7ae787add1973c386eff6.png"
                                                class="icon__social">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="outLink__register">Not a member yet? <b>Sign up free</b></a>
            </div>
        </main>
        <footer class="footer__page">
            <div class="container__main-page container__styles">
                <div data-testid="footer-logo"><a href="/"><svg xmlns="https://www.w3.org/2000/svg" viewBox="0 0 285 60"
                            width="150" height="40">
                            <title>Codecademy</title>
                            <g fill="rgba(255, 255, 255, 0.6)" fill-rule="evenodd">
                                <path
                                    d="M11.778 41.177C11.24 39.624 11 37.652 11 35.024c0-2.63.24-4.6.778-6.154C13.213 24.45 16.98 22 21.945 22c3.708 0 6.58 1.494 8.553 3.883a.49.49 0 0 1-.06.717l-3.23 2.868c-.24.18-.538.18-.717-.12-1.255-1.374-2.51-2.15-4.544-2.15-2.212 0-3.887 1.075-4.605 3.226-.36 1.254-.48 2.688-.48 4.6 0 1.91.12 3.405.54 4.66.72 2.09 2.393 3.226 4.606 3.226 2.033 0 3.35-.777 4.546-2.15.18-.24.48-.24.718-.06l3.23 2.867c.24.18.18.478.06.717-1.974 2.33-4.845 3.823-8.553 3.823-4.964-.06-8.792-2.45-10.227-6.93m110.998 0c-.538-1.553-.778-3.525-.778-6.153 0-2.63.24-4.6.778-6.154 1.435-4.42 5.203-6.87 10.167-6.87 3.708 0 6.64 1.494 8.553 3.883a.49.49 0 0 1-.06.717l-3.23 2.868c-.24.18-.538.18-.717-.12-1.255-1.374-2.51-2.15-4.544-2.15-2.212 0-3.887 1.075-4.605 3.226-.417 1.254-.54 2.688-.54 4.6 0 1.91.123 3.405.54 4.66.72 2.09 2.394 3.226 4.606 3.226 2.033 0 3.35-.777 4.546-2.15.18-.24.48-.24.718-.06l3.23 2.867c.24.18.18.478.06.717-1.974 2.33-4.845 3.823-8.553 3.823-4.964-.06-8.732-2.45-10.167-6.93m130.14 6.273c-.298 0-.537-.18-.537-.538V32.574c0-3.226-1.615-5.436-4.665-5.436-2.99 0-4.725 2.21-4.725 5.436v14.338c0 .3-.18.538-.538.538h-4.725c-.3 0-.538-.18-.538-.538V32.574c0-3.226-1.615-5.436-4.666-5.436-2.99 0-4.725 2.21-4.725 5.436v14.338c0 .3-.177.538-.536.538h-4.725c-.3 0-.54-.18-.54-.538V23.075c0-.298.18-.537.54-.537h4.724c.3 0 .538.18.538.537v1.793h.06c1.078-1.553 3.23-2.868 6.52-2.868 2.93 0 5.264 1.195 6.76 3.286h.06c1.912-2.09 4.365-3.286 7.893-3.286 5.742 0 8.972 3.943 8.972 9.26v15.712c0 .3-.18.538-.54.538l-4.604-.06zm11.82 8.782c-.3 0-.54-.18-.54-.538v-4.122c0-.3.18-.537.54-.537h.897c1.974 0 2.93-.897 3.708-2.928l.718-2.09-9.032-23.48c-.117-.298.12-.537.42-.537h5.085c.3 0 .538.18.598.538l5.562 16.25h.12l5.323-16.25c.12-.3.3-.538.597-.538h4.845c.298 0 .538.18.418.538l-9.33 25.987c-2.153 5.914-4.187 7.767-8.313 7.767l-1.615-.06zM49.67 39.622c.42-1.313.538-2.51.538-4.6s-.12-3.225-.538-4.6c-.718-2.09-2.333-3.225-4.605-3.225-2.273 0-3.947 1.195-4.665 3.226-.42 1.314-.54 2.45-.54 4.6 0 2.09.12 3.286.54 4.6.718 2.09 2.333 3.227 4.665 3.227 2.272.06 3.887-1.136 4.605-3.227m-14.832 1.553C34.3 39.444 34 37.772 34 35.023c0-2.748.24-4.36.838-6.153C36.213 24.51 39.98 22 45.005 22c4.964 0 8.732 2.51 10.107 6.87.54 1.732.838 3.405.838 6.153 0 2.75-.24 4.36-.838 6.153-1.375 4.36-5.143 6.87-10.107 6.87-4.964 0-8.732-2.51-10.167-6.87M155.288 22c-4.068 0-6.76.956-8.733 2.45-.18.18-.24.418-.12.656l1.914 3.406c.177.238.477.298.715.12 1.197-.956 2.87-1.733 5.622-1.733 4.008 0 5.384 1.192 5.503 3.88v8.305c0 2.867-1.973 4.24-5.502 4.24-2.75 0-4.245-1.014-4.245-3.105 0-2.33 1.614-3.345 5.322-3.345h1.137c.298 0 .538-.18.538-.537v-3.286c0-.298-.18-.538-.538-.538h-2.034c-6.1 0-9.868 2.51-9.868 7.886 0 5.197 3.768 7.588 8.313 7.588 3.47 0 5.8-1.195 6.938-2.868h.06v1.792c0 .3.18.538.54.538h4.306c.3 0 .54-.18.54-.538v-16.19C165.572 24.63 162.82 22 155.286 22M94.732 32.514c-.12 0-.24.06-.24.24v3.883c0 .12.06.24.24.24h12.68c.358 0 .538-.18.538-.538 0-4.004-.24-5.736-.838-7.47-1.376-4.24-5.084-6.87-10.168-6.87-4.904 0-8.73 2.51-10.107 6.87C86.3 30.485 86 32.455 86 35.025c0 2.568.36 4.48.897 6.093 1.376 4.36 5.084 6.93 10.287 6.93 4.545 0 8.014-1.733 10.167-4.24.18-.24.18-.54-.06-.718l-2.99-2.69c-.237-.18-.536-.18-.775.12-1.256 1.373-2.99 2.39-5.802 2.39-2.75 0-4.725-1.316-5.502-3.765-.12-.36-.24-.717-.3-1.076a20.057 20.057 0 0 1-.297-3.585c.06-1.434.12-2.33.3-3.465v-.12c.06-.297.118-.536.178-.775.66-2.032 2.513-3.226 4.845-3.226 2.333 0 4.128 1.192 4.785 3.224a7.01 7.01 0 0 1 .298 2.09c0 .18-.12.3-.3.3h-6.995zM81.232 12h-4.725c-.3 0-.538.18-.538.538v23.478c-.06 1.434-.24 2.39-.48 3.226-.66 2.09-2.273 3.167-4.606 3.167-2.273 0-3.888-1.138-4.545-3.17-.36-1.134-.54-2.39-.54-4.66s.18-3.524.54-4.66c.656-2.03 2.21-3.165 4.425-3.225H72.8c.118 0 .178-.12.178-.238v-4.72c0-.12-.06-.18-.18-.24H69.27c-4.126.06-7.117 2.032-8.373 5.975-.598 1.912-.897 3.644-.897 6.99 0 3.345.24 5.078.897 6.99 1.256 4.002 4.366 5.974 8.553 5.974 3.35 0 5.382-1.255 6.52-2.928h.06v1.85c0 .3.178.54.537.54h4.725c.3 0 .538-.18.538-.54V12.3c-.06-.12-.3-.298-.598-.298m123.5 20.512c-.12 0-.24.06-.24.24v3.883c0 .12.06.24.24.24h12.68c.358 0 .538-.18.538-.538 0-4.004-.24-5.736-.838-7.47-1.376-4.24-5.084-6.87-10.168-6.87-4.904 0-8.73 2.51-10.107 6.87-.538 1.615-.837 3.585-.837 6.155 0 2.568.36 4.48.897 6.093 1.376 4.36 5.084 6.93 10.287 6.93 4.545 0 8.014-1.733 10.167-4.24.18-.24.18-.54-.06-.718l-2.987-2.69c-.24-.18-.54-.18-.778.12-1.256 1.374-2.99 2.39-5.802 2.39-2.75 0-4.725-1.315-5.502-3.764-.12-.36-.24-.717-.3-1.076a20.045 20.045 0 0 1-.297-3.584c.06-1.434.12-2.33.3-3.465v-.12c.06-.296.118-.535.178-.774.66-2.032 2.513-3.226 4.845-3.226 2.333 0 4.128 1.193 4.785 3.225a7.01 7.01 0 0 1 .298 2.09c0 .18-.12.3-.3.3h-6.995zM191.232 12h-4.725c-.3 0-.538.18-.538.538v23.538c-.06 1.433-.24 2.39-.48 3.226-.66 2.09-2.273 3.226-4.606 3.226-2.333 0-3.888-1.136-4.545-3.226-.36-1.135-.54-2.39-.54-4.66s.18-3.525.54-4.66c.656-2.03 2.21-3.167 4.425-3.226h2.033c.298 0 .537-.18.537-.538v-4.122c0-.3-.18-.538-.538-.538h-3.47c-4.127.06-7.177 2.032-8.433 5.974-.598 1.912-.897 3.645-.897 7.05 0 3.346.24 5.138.897 7.05 1.256 4.002 4.366 5.974 8.553 5.974 3.35 0 5.382-1.255 6.58-2.927h.058v1.85c0 .3.18.537.538.537h4.725c.3 0 .54-.18.54-.538V12.477c-.12-.3-.36-.478-.658-.478M123 55v4c0 .752.175 1 1 1h16c.767 0 1-.186 1-1v-4c0-.752-.175-1-1-1h-17c.175 0 0 .186 0 1">
                                </path>
                                <path
                                    d="M6.99 54H6c.12-.06 0-.238 0 0V6c0 .238.12.06 0 0h107c-.12.06 0 .238 0 0v47c0 .703-.12.88 0 1H6.99zM119 0c-.12.18-.12.12 0 0-.12.12-.12.12 0 0-.24.06-.36 0-1 0H0c.12.12 0 .3 0 1v59c0-.3.06-.18 0 0h118c.64 0 .76-.06 1 0-.06-.24 0-.36 0-1V0z">
                                </path>
                            </g>
                        </svg></a></div>
                <div>
                    <ul class="linkList__styles">
                        <li>© Codecademy 2019</li>
                        <li><a href="#" data-testid="footer-jobs-link">Jobs</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Use</a></li>
                    </ul>
                </div>
                <div>
                    <ul class="social__listStyles" data-testid="footer-social">
                        <li><a href="#"><svg width="18" height="18"
                                    viewBox="0 0 18 18" xmlns="https://www.w3.org/2000/svg">
                                    <title>Facebook</title>
                                    <path
                                        d="M18 1v16c0 .5-.4 1-1 1h-4.6v-7h2.3l.3-2.7h-2.7V6.6c0-.8.2-1.3 1.4-1.3h1.4V2.8c-.2 0-1.1-.1-2.1-.1-2 0-3.4 1.3-3.4 3.6v2H7.3V11h2.3v7H1c-.5 0-1-.4-1-1V1c0-.5.4-1 1-1h16c.6 0 1 .4 1 1z"
                                        fill="rgba(255, 255, 255, 0.6)" fill-rule="evenodd"></path>
                                </svg></a></li>
                        <li><a href="#"><svg xmlns="https://www.w3.org/2000/svg"
                                    viewBox="0 0 300 244" width="20">
                                    <title>Twitter</title>
                                    <path
                                        d="M94.72 243.18c112.46 0 173.96-93.168 173.96-173.96 0-2.646-.054-5.28-.173-7.903a124.338 124.338 0 0 0 30.498-31.66c-10.955 4.87-22.744 8.147-35.11 9.625 12.622-7.569 22.313-19.543 26.885-33.817a122.62 122.62 0 0 1-38.824 14.841C240.8 8.422 224.916.99 207.327.99c-33.764 0-61.144 27.381-61.144 61.132 0 4.798.537 9.465 1.586 13.941-50.815-2.556-95.874-26.886-126.03-63.88a60.977 60.977 0 0 0-8.279 30.73c0 21.212 10.794 39.938 27.208 50.893a60.685 60.685 0 0 1-27.69-7.646c-.009.256-.009.506-.009.78 0 29.61 21.075 54.332 49.051 59.934a61.218 61.218 0 0 1-16.122 2.152c-3.933 0-7.766-.387-11.49-1.103 7.783 24.293 30.354 41.971 57.114 42.465-20.926 16.402-47.287 26.171-75.937 26.171-4.929 0-9.798-.28-14.584-.846 27.06 17.344 59.19 27.464 93.722 27.464"
                                        fill="rgba(255, 255, 255, 0.6)"></path>
                                </svg></a></li>
                        <li><a href="#"><svg
                                    xmlns="https://www.w3.org/2000/svg" viewBox="0 0 448 512" width="20">
                                    <title>LinkedIn</title>
                                    <path fill="rgba(255, 255, 255, 0.6)"
                                        d="M100.3 480H7.4V180.9h92.9V480zM53.8 140.1C24.1 140.1 0 115.5 0 85.8 0 56.1 24.1 32 53.8 32c29.7 0 53.8 24.1 53.8 53.8 0 29.7-24.1 54.3-53.8 54.3zM448 480h-92.7V334.4c0-34.7-.7-79.2-48.3-79.2-48.3 0-55.7 37.7-55.7 76.7V480h-92.8V180.9h89.1v40.8h1.3c12.4-23.5 42.7-48.3 87.9-48.3 94 0 111.3 61.9 111.3 142.3V480z">
                                    </path>
                                </svg></a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
    </body>

</html>