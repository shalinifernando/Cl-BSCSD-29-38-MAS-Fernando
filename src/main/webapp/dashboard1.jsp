<%-- 
    Document   : dashboard1
    Created on : Mar 1, 2025, 12:01:24 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
  
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap');

*,
::after,
::before {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

a {
    text-decoration: none;
    color: #6366f1;
}

li {
    list-style: none;
}

h2 {
    color: #3e4455;
}

img {
    vertical-align: middle;
    max-width: 100%;
}

body {
    font-family: 'Poppins', sans-serif;
}

.container {
    display: flex;
}

/* Sidebar layout & functionality */

#sidebar {
    display: flex;
    flex-direction: column;
    background-color: #293b5f;
}

#toggler {
    display: none;
}

.toggle-btn {
    font-size: 1.5rem;
    cursor: pointer;
    color: #FFF;
    padding: 1rem 1.5rem;
    width: max-content;
}

.sidebar-nav {
    width: 85px;
    min-width: 85px;
    padding: 25px 0;
    flex: 1 1 auto;
    transition: all .25s ease-in-out;
}

#sidebar input[type="checkbox"]:checked~.sidebar-nav {
    width: 260px;
    min-width: 260px;
}

a.sidebar-link {
    padding: .625rem 1.625rem;
    color: #FFF;
    display: block;
    white-space: nowrap;
    border-left: 3px solid transparent;
}

.sidebar-link i {
    font-size: 1.1re;
    margin-right: .75rem;
}

a.sidebar-link:hover {
    background-color: rgba(255, 255, 255, .075);
    border-left: 3px solid #3b7ddd;
}

#sidebar input[type="checkbox"]:not(:checked)~* .sidebar-link span {
    display: none;
}

.main {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    width: 100%;
    overflow: hidden;
}

/* Dashboard Navbar */

.dashboard-navbar {
    display: flex;
    flex-wrap: nowrap;
    padding: 1rem 1.5rem;
    background-color: #f5f5f5;
}

.dashboard-navbar form {
    display: none;
}

.dashboard-navbar .navbar-content {
    display: flex;
    flex-grow: 1;
    min-width: 200px;
}

.dashboard-navbar .main-nav {
    margin-left: auto;
}

.user-link {
    position: relative;
}

.avatar {
    height: 40px;
    width: 40px;
}

.user-link-dropdown {
    display: none;
}

.user-link:hover .user-link-dropdown {
    position: absolute;
    right: 0;
    left: auto;
    min-width: 10rem;
    background-color: #FFF;
    display: block;
    border: 1px solid #d2d2d2;
    box-shadow: 0 .1rem .2rem rgba(255, 255, 255, .075);
    animation: fade .5s;
}



.user-link-dropdown a {
    display: block;
    width: 100%;
    color: #495057;
    padding: 0 0.75rem;
    font-size: 1rem;
    margin-top: 0.75rem;
}

/* Dashboard Content */

.content {
    padding: 2rem;
    flex: 1 1 auto;
}

.dashboard-card {
    grid-template-columns: repeat(1, 1fr);
    margin: 1rem 0;
    display: grid;
    gap: 2rem;
}

.card {
    background-color: #f5f5f5;
    padding: 1.5rem 1rem;
    color: #000;
    border-radius: 5px;
    transition: .4s;
    cursor: pointer;
}

.title {
    font-size: 1.25rem;
    font-weight: 600;
}

.amount {
    font-weight: 400;
    font-size: 1rem;
}

.card:hover {
    background-color: #293b5f;
    color: #FFF;
    transform: translateY(-10.5px);
}

.text-success-bg {
    background-color: #71c664;
    padding: 0.25rem 0.35rem;
    margin-right: 0.375rem;
    font-size: 0.715rem;
    color: #FFF;
    border-radius: 5px;
}

.badge-text {
    font-size: 0.85rem;
    font-weight: 400;
}

/*------------ Table Layout ------------*/

#posts {
    border-collapse: collapse;
    margin: 30px auto;
    width: 100%;
}

#posts thead tr {
    color: #FFF;
    text-align: left;
    background-color: #293b5f;
}

#posts th,
#posts td {
    padding: 12px 15px;
}

#posts tbody tr:nth-of-type(2n) {
    background-color: #f5f5f5;
}

/* Footer */

.footer-wrap {
    display: flex;
    flex-wrap: wrap;
    white-space: nowrap;
    align-items: center;
    overflow-x: auto;
    justify-content: space-between;
    background-color: #f5f5f5;
    padding: 1rem 2rem;
}

.social-icons {
    display: none;
}

/* Responsive */

@media (min-width: 768px) {

    /* Navbar Form */

    .dashboard-navbar form {
        display: block;
        max-width: 320px;
    }

    .nav-search {
        display: flex;
        flex-wrap: wrap;
    }

    .nav-search .search-query {
        flex: 1 1 auto;
        width: 1%;
        height: calc(1.5em + .9rem + 2px);
        padding: 0 20px;
        border: none;
        color: #3e4455;
        font-family: 'Poppins', sans-serif;
    }

    .nav-search .search-query:focus-visible {
        outline: none;
    }

    .nav-search .btn {
        border: 0;
        background-color: #727cf5;
        color: #FFF;
        padding: 0.45rem 0.9rem;
        font-family: 'Poppins', sans-serif;
        cursor: pointer;
    }

    /* Dashboard Content  */

    .dashboard-card {
        grid-template-columns: repeat(3, 1fr);
    }

    /* Social Icons */

    .social-icons {
        display: block;
    }

    .social-icons li:not(:last-child) {
        margin-right: 0.5rem;
        border-right: 1px solid #000;
        padding-right: 0.7rem;
    }

    .social-icons li {
        display: inline-block;
    }

    .social-icons li a {
        color: #000;
    }
}
    </style>
</head>

<body>
    <div class="container">
        <aside id="sidebar">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="toggle-btn">
                <i class="lni lni-grid-alt"></i>
            </label>
            <ul class="sidebar-nav">
                <li class="sidebar-item">
                    <a href="booking.jsp" class="sidebar-link">
                        <i class="lni lni-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="booking.jsp" class="sidebar-link">
                        <i class="lni lni-agenda"></i>
                        <span>Task</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="bill.jsp" class="sidebar-link ">
                        <i class="lni lni-protection"></i>
                        <span>Auth</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="car_manager.jsp" class="sidebar-link ">
                        <i class="lni lni-layout"></i>
                        <span>Packages</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="user-list.jsp" class="sidebar-link">
                        <i class="lni lni-popup"></i>
                        <span>Notification</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="dashboard.jsp" class="sidebar-link">
                        <i class="lni lni-cog"></i>
                        <span>Setting</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="gallery.jsp" class="sidebar-link">
                        <i class="lni lni-layout"></i>
                        <span>Page</span>
                    </a>
                </li>
            </ul>
            <div class="sidebar-footer">
                <a href="index.jsp" class="sidebar-link">
                    <i class="lni lni-exit"></i>
                    <span>Logout</span>
                </a>
            </div>
        </aside>
        <div class="main">
            <div class="dashboard-navbar">
                <form action="#">
                    <div class="nav-search">
                        <input type="text" class="search-query" placeholder="Search...">
                        <button class="btn" type="button">Search</button>
                    </div>
                </form>
                <div class="navbar-content">
                    <ul class="main-nav">
                        <li class="user-link">
                            <a href="#">
                                <img src="account.png" alt="Profile" class="avatar">
                            </a>
                            <div class="user-link-dropdown">
                                <a href="#" class="dropdown-item">Profile</a>
                                <a href="#" class="dropdown-item">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="content">
                <h2>Statistics & Reports</h2>
                <div class="dashboard-card">
                    <div class="card">
                        <h6 class="title">Memebrs Progress</h6>
                        <h6 class="amount">Rs 72,540</h6>
                        <div class="badge">
                            <span class="text-success-bg"> +6.85% </span>
                            <span class="badge-text">Since Last Month</span>
                        </div>
                    </div>
                    <div class="card">
                        <h6 class="title">Authors Earninigs</h6>
                        <h6 class="amount">Rs 72,540</h6>
                        <div class="badge">
                            <span class="text-success-bg"> +6.85% </span>
                            <span class="badge-text">Since Last Month</span>
                        </div>
                    </div>
                    <div class="card">
                        <h6 class="title">Total Users</h6>
                        <h6 class="amount">Rs 72,540</h6>
                        <div class="badge">
                            <span class="text-success-bg"> +6.85% </span>
                            <span class="badge-text">Since Last Month</span>
                        </div>
                    </div>
                </div>
                <h2>Avg. Agent Earnings</h2>
                <div style="overflow-x:auto;">
                    <table id="posts">
                        <thead>
                            <tr>
                                <th style="width:5%">SN</th>
                                <th style="width:45%">Name</th>
                                <th style="width:45%">Email</th>
                                <th style="width:5%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Admin</td>
                                <td>admin@example.com</td>
                                <td><a href="#">Edit</a></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Admin #2 </td>
                                <td>a2jane@example.com</td>
                                <td><a href="#">Edit</a></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Admin #3</td>
                                <td>a3@example.com</td>
                                <td><a href="#">Edit</a></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Admin #4</td>
                                <td>a4@example.com</td>
                                <td><a href="#">Edit</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <footer>
                <div class="footer-wrap">
                    <div class="copyright-text">
                        <p>© Copyright 2023 by <strong>C S S Cabs</strong></p>
                    </div>
                    <ul class="social-icons">
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">LinkedIn</a></li>
                    </ul>
                </div>
            </footer>
        </div>

    </div>
</body>

</html>