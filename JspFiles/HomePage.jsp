<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Job Tracker</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
	color: #343a40;
}

.jumbotron {
	background-image:
		url('https://cdn.pixabay.com/photo/2024/04/23/17/16/work-8715739_1280.jpg');
	background-size: cover;
	color: #fff;
	padding: 100px 0;
	height: 650px;
}

.feature-icon {
	width: 100px;
	height: 100px;
}

.navbar-nav .nav-link {
	color: #343a40;
	transition: color 0.3s ease;
}

.navbar-nav .nav-link:hover {
	color: #007bff;
}

.navbar-nav .nav-link.active {
	font-weight: bold;
}

.navbar-toggler-icon {
	transition: transform 0.3s ease;
}

.navbar-toggler:hover .navbar-toggler-icon {
	transform: rotate(90deg);
}

.jumbotron .btn-primary {
	transition: background-color 0.3s ease;
}

.move-text {
	animation: moveText 2s infinite alternate;
}

.jumbotron .btn-primary:hover {
	background-color: #0056b3;
}

.feature-icon {
	transition: transform 0.3s ease;
}

.feature-icon:hover {
	transform: scale(1.1);
}

@
keyframes moveText { 0% {
	transform: translateX(0);
}
100
%
{
transform
:
translateX(
50px
);
}
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#"><h2 class="move-text">Online
					Job Tracker</h2></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="index.jsp">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Register.jsp">Register</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<h1 class="display-4">
			<strong>Welcome to Online Job Tracker</strong>
		</h1>
		<p class="lead">Find the job With Us</p>
		<hr class="my-4">
		<p>Register And Login Through Tracker</p>
	</div>

	<div class="container mt-4">
		<h2 class="text-center mb-4">Key Features</h2>
		<div class="row">
			<div class="col-md-4">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAtDK4XHC9o0GnT3Gg4DGABFGOtf8av_RSzw&usqp=CAU"
					alt="Feature 1" class="feature-icon mx-auto d-block mb-3">
				<h4 class="text-center">Search Jobs</h4>
				<p>Search and filter job listings based on your preferences.</p>
			</div>
			<div class="col-md-4">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLXk8Sx1eCwRsjN2PMpHBt2iCZ6EKyY0h51g&usqp=CAU"
					alt="Feature 2" class="feature-icon mx-auto d-block mb-3">
				<h4 class="text-center">Save Favorites</h4>
				<p>Save your favorite job listings for quick access later.</p>
			</div>
			<div class="col-md-4">
				<img
					src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQTExYTExMWFxYXFhgbGBcZGBkZHxkbGBYYGBgeGRsZHikhHhsmHhYWIjIiJiosLy8vGCA1OjUuOSkuLywBCgoKDg0OHBAQHC4nISYwLi4vMC4xMC4uLjAwLi4uLi4uMC4uLjAuLi4uLi4uLi4wLi4uLi4uLi4uLi4uLi4uLv/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBAMBAAAAAAAAAAAAAAAHAAIFBgEDBAj/xABMEAACAQIEAgcDCQQGCQQDAQABAgMAEQQFEiEGMQcTIkFRYXEygZEUI0JSYpKhscEVM3LRJFOCk6LSFhc1Q1R0s+Hwc8PT8TREgwj/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMABAX/xAAuEQACAgICAAMGBgMBAAAAAAAAAQIRAyESMRNBUQQiMmGBkXGhscHh8BTR8SP/2gAMAwEAAhEDEQA/ACTjsW8ttJKxXuWHM/8AauxGZwDG5AHj30MMdj8yy9FDgTRfZBNvWurK+liPZZYtJr0J4mlpaOSORSYVElNt96043FCNDI2wFQ2X8U4eSEz6wFHid64lzMYwa9Q6sHZL8/WowxNy30VlkpEymMRwGBtfletE0Z7t6Sm9gY9vLurtjUAWqtqPQnfZDvMy0wZnbmKnMXCixs8hCgA7n0qo5QXnUyFbJc6T3kX51bHKM0210SmnGiYTM079q6ExSnkwqI/Zeu+g8vGuLEZbMnIH3U/h4306E8Sce0WkPTtVUc4+VDa59DXRFxI49oXov2WXkFZ0XC9K9V2DidD7QtXfDnETcmFSeGa7Q6yRZJ3pXrnSdTyINP1UnEbkbb0ga1a6WutQbN16VatVZ1UKNZsrFM10tVajWPrBFN1UtVajWZ00tNY1UtVEGhFaaVp2qsXrbMMK1rZa3E00mmTA0aCla2Suk0w06YjRysla2Suq1MYU6kK0cmilW/TSp+QvEsuFy5VQJa48964cfwnhJv3kCHztUtHMCL7W7rG9V3OeIiWMOHszj23+jGPM+PlXlR8SUtPZ2zjCtpFQz/gOITLDh3KKykst7hbeVReM4GljX+iYgtIOak0Q8swKoL31O3tOeZ/7V14XAIjFlWxPM12eNxVPf07Obwr6tfXoEKZ5mmE2likIHfbUPwq18K9IkcjEYgaCouNrE+6iB1YPMA1G51k+G6t3ljRRpPasAb22t51N5YS00OoZFtV+hS8RxfFi59Er6IVPZX63r5VbsrxcRFkdSO4AiqJg+B8O0PXSs41Dn3jzqNk4CxSdvCYgSL3AkqfjV5wilxT0iSyXK2n+oXwAOVb4ItW55DnQWhzTNcMbSxSEDvA1j8Km+KOkItCscQaO6jrGIsfMAVCWKXl9y8ckWSeer8rxgSC4SNbSOORPgPOpKfI1AA6u/mDvUDwzxpg0RUF023J3ufEmrlg85glF0lQ++qvJKNKPSJ+HGW5EHieEAd0e3kahsbw3PGC1rgb3FENd+W9cHFecphIWGzSupCr67fCtH2rLyS7A/Z41adAyTGuvsufjXZBxNMnfeprgrhcpH10w+cbkDvpB3+NTs3DkUh7aL6jY10z9ox3TRFY59xK3huM/rp8KlcLxPA/M29a04zgOM7xyEeR3qsZ9w3LhV6xyCl7ah40qeGbpMa5x7QQYcZG/suD7632oQYd3O8eo2+rc2+FdmGz/ABEfJz6Gi/Z/RhWVXQUrUqomG44kHtqDUxhOM4W9oFak8UkOpIsdK9ceGziF/ZkWu1XB5EGkaa7GGk1jVWysWoWYbqrGunEVjTRBsxrrGqslaaUog2Y1U1nrJWmFaKA7MF6aWpFaawp1Qti10q16axT0Cwa4OfN8HE8EkUiq3+8AZzbwUi9qdlXFWIwkR6zDN1RO7MCL38W8fWj8QO+qbxr1UzRYTUNTyDrEAv8AN/Sv4etcOLMm6o6cmNpXaK5w/wBIeCJ7RZCfHcD0q64HPcNKOxMhv9oUL856N8BrZIZZEYd4NwPWoeTo8x8NpMPIsqggjuNPLG3t/wCv1FU0tB1zDHxYeMyyMAo5eZ8BVTEz4pxNiexFf5qE9/gW/lQ7z3NMwZkM8Tl0tpXTZRbw7ia716QdBEeLhINv4Tb8qMMXD3n9/QE8nPUWvwCuqqy2sCK2QRKgsosPCqpk/HWCdQok0eTD9asuDx0UturkVr+BFTa+w6o7VTVta9UzpLgw2mGIoGkMg2Ub6SN7291TnFfEa4KMInbnk2Redr958qhOG8tCP1+KcNO+9ifZB/WjhTT5+S/MGWq4+f6Fex3R7hQg1u8ch5FOQ8L+NRmJ6N8dF2oJ1lHMA3U0YXjVuYBrYKMsze62LHFWk/3BLw9muYYKW8+HmddJFr6lv3G4vUNi+LWGLE2IXU1ydLXAXwAo6omo2oc9KUeGeeCEJql7QbSN+17IPne5p8c1KdJU/U0oyUbe19jpyrpIwz7NqS/vH4VacDn2Hm9iZD5XtVETorwvVgvK8cxFyUbYHw01E4jo1xkfaw86Sr3BwUb40rjFhUmGaBdR2qgdJmcibTgYLM2sarb3Ych/OoPLMwzPBxSxth3u4AEl9YTxIteqxknFAwmILyJdrba7jcnc3PfRhi4y5vpdBeTkuK7DBw/w8sEITk53cjvP8q3nIke/XIjjuOmx+NVzLek3DSW1qyeYsw/CrPgM+w837uZD5XsfxpXKd2Dw4PTRD43gPDv7BZD8R+NU/ifhh8IqyM4ZGawNrb+dFyFdRAFC/pT4gEzrBEbrE9rDfU/L8KphzZHLi3aFlhila0VjDRu9+rDNbc6QTb4V0xZrPEbamFu43/WiTwlw/wBTh1DbSOAXI/KpB8nVyRKqOnddRf41aXtEU2ifhz7QPMJxpMvtWapnC8cRn21I9KlsbwLhn9kMh+ydvgaqvEPBD4eN5lkDIm5uLEDlQU8U9GfNdotmF4hgflIB61IpiA3Ig+hoMQXYgJue4Dc/CumPGyxm2plPhuKp4KfQOdOgvl6WuhpheK505tqHnUxhONR/vI/eKR4mNyLkWrBaoXC8SQP9PSfOpOKdG9lgfQ0vFo1m0mmk1i1NIopGFWaZalTCmziXidtfyXCAPiDzP0Yh9Zz4+Va8kyhYASWMkr7yStzY+XgPKhlwnx2mGDJNCe25Jk5M9/Et7XxokZLxXhMRbTOoP1WOk/jXIoqCpHQ3ydskGyiJmDFdx+PrUpDEAAALCnRAEXBBHiN66USpTyNjxgl0YWEHmB76Gea5VhMwxs8VwyrGum3IOCQ5B7xy/Guzi7iiTES/IcCb72llHLzAPgO8+6prhrIY8NHYbnbW9t2PgP0FPjTxpyerEyVJ0l/APsb0RxsxGGndGUXOsdgerchUrw/wecvdZpcRNM68hBEoUbd7vfV7gKIRN+6w7l7h/M+ZrIoXezcWlSf32UJsTheu69oZ2lvfU82/3bWA8rVJycRwMbthn35nrOf4Vahl6SGzIp8SQDVLzTL4jNIkRv2lCKBcbjti/gD+tWxvHJ1T182c2VZoLlaf0RYcLxRhWsCGT+K/5gEVL4bGwyewQ1/Bwaos+QMuwdC31b6T7r7GtEMEsEiyaCrKbi4Nvj3ii8GN/CzR9pyR+OJd89z2LCALpLO30Q1iB4kkbeVQ+RZVhgwxLROsjX0mSQud+Z3FgTVbmkZ5DI51MTc33v5endap5M/VwFljIH2TsfUH+dDwOEdXfnsK9p5yd9eSLX83z0b+N6frT6p+NRODzOAgKjgW5A9n866cTiNKFgNR7gO8nYe6ufhujrU01aOmRVbbS3ua36VWOP8AAYNkjjngMjXJAVtDAWtcsBuPKrCZ+phMspBIGwG1yeQFUuHDvi5yznmbsfqqO4fkKfFC5W3pEs2Skkl7z6NOVdHeWSxiUYeSMG//AOxJ3G1zb0rd/oThEGqPDSSDutiWv8GAq6nDro6u3Zta3lTxttS6TtFGm403+hT8FmEeFV0XDYhQ4sdUrG38JYbH0qFwcWAjkSVcJIWQ3XVMWF/Egjc0RsQCVIW17bX3FRYydGSRp0jGlSdSjSRt4jvvVYygttfmznnDL0pfkjmh4ziJ7UMi+YYH+VSuFz7DSey2/gzaT+Iqi4LLnlYIgF7X3NuXOu/FcMTJy0v5Kd/gbVSeHFdXX1JY/aM1XVr8C+LIh5KfvVAcY5jAsfyaSN3EgBdUbSQL7XNu/wAKrWEaWB1J1rZgSpuoIB3FjtWjHSNLI0j+0xuf0HoBYUsPZlytvQ8/anw0qZO8JZDhN54VlQm6jWUcDxK2F/jUtjckJG4SVftAH4mozKs9jjRY2jYBRa4sb+J7u+prC5xET2ZAD4Ha/uPOln4ila/PZSDxzik6shMVwRhpBcKUb7J2v6GoPGdHjj9zKG8Awt+IojuoYal948PMeVceYY1YIpJnNgik+p5AfGhHPP1GeGPlr8AHSrodkNtSkgi/eDY1sixDruGIrXlmGbFYhol0MzMSWY2J1NdrDyBNGCfKBoCKsZRVACMoPLxNdjzRXZLg60DXC8STp9O/rvUthuMz9NB7qsc/BuHkFynVtbfQdvgdqhcb0fMN4pgfJhb8R/KssuNmqS7Ru/0sg8GpVAtwVih9FT/aFZpv/P1X3FtF34qy/BPB8gcXsuxC6mTwbbkaFmL6K8So14WVZU7rGx+62340ZP2PE3NASTct33PffnUph4AoAHIVwcopU9/idKUr1pHnIY3McAbSCVLd4LL+exqy4npOmmwiwDUjEESysRqceCW5X72o3tArCzKGHgQCPxoe9InCOFLYfq1hhlkmCt9EGMglmsOZWwt4k276WMoN1/IzjJK/4K7wHxdg4otLAo5J1SW1A2O3LcAUUmlGrQCOxzF/pEXY+4EL7jVLHR5hy+HOlEdJY2uOyZFVwzAgbG4FTjQlu2R7ZLfeOr9aee5bdkuTUbonBW6GMsbCoKNnXkx/P86HHSJnmLmxDYfCTSR/JIHmlMbvHqvpYg6CLkKUt5s1Jk91D45KTCpn2Z6QYYjv9Nh3eQ8/HwrjynLAg1H2iNvsj+dQ3DeYLicIuJv2miJPlIAQ/wAGBt7qpfBGSS43BnEPmuLhfW6/vm0qFAILXYG2++4oKfBUvMChzlyl5BRXK7t226xfBr3Hpvb8Kkha1u6g9l3EmJlyPGO8zmSGRESdWZWI6yE+2LEnc78yGF6zNksyZauPGbYtJOoWTS8zFSxAOgdq9yTYc9yKDy2UWNIK8uWRPzjFz4bH8Kh85ydYnCqdimqxPI3IsPht76onFvEWKbI8FixLJFLLMVd42MZYIJkudFva0Brcr+6iU2HMkrMx5m5P5AflTY8rb09Es2JV1tkNHlUjLqCEj8/Qc61rE6GwLKfeKhc2xcuV5okskkj4LE3UB3Zlgc2vbUTpUHfu7JYb6a28JYibNMdLjWeRcHCergiDMElYX7TLextfUbjmyDkpFN/kO6oX/FXaZYM0xjzaQ2wVQAPO25Pmafg5EERj7SFjcuN7+RtuBWeMMVFhMLNiNBJReyATYsxCoD5amW9u69Unh7gzE47DjGT46dXkXWqI2lUU+zty3FjYW+NZ5UlxSMsUrcmwk5QCL3lDDayg3t5771JE0JOFcxmEmKwGJfXLAjMkneyWG5Pj24yDz7XlUZ0W8WziQYfESyMs12heRma7L2WQFr7HTsPEfaqbmm18y0U0n8gyjEEydWq3sO0b8ieQ8zXHxNidhAvkZD4nmB+vwqh8FZrKJs61ySNoL9Xd2Ohr4i2jfs8u63sjwrd0ZSyTYJJJpHdmkk1O7F29rvLXJowac1oXInwdMuXDWA03lPfsvp3n9PdUs2HBcSEkkCwHcL8z60OulrMJYUwnUSvGpnVT1blbi3JtJBI8jUN0i8R4vC5pHJE0hWKFJJIAzaCut1fUoNuRG9jbY91LkyPk2NjxpRSQY3AOxF/WoXNMAgsVgBve5W4/AVT+Ns9MkuTzYaZxFPiBfS7KHUyQdlwDY2uwIPLceNRvFU/W5z8nkzCXCQdQrFln6pQwX7RC3NZZOO0GWJS0y5ZnlIjVGF+3fsmxta3ePX8K44sAzeypPPu8OdQ+TZZD8pDRZtLitAa0b4hZQVKlblQeQLX9bUQctw1kO5Bb8Bvy/OrxzS42zllgi50uiByuVoJQTcLydTcXU89vLn7qqXSXnsi/0F2LGOVpHbTYMmxw4vyJswJt3qaKMcGxDtrHdqA2qP4i4Ww2K0tNHdtIXUpINlJt5HnSc05pstGDjGkBzo2zGCHFSYjEMQEXQlhezPuxNvIW99GbA53BN+6mRvLUL/A70Ns66MMOsgEWMaF35K4BDfC1U/iXhzF4GRUkZH1LqVlJFxcj3G4pmvqMeh6aa885ZxjisPYdZKg8D21/G9XfLukacFVlSN9VrEHQd+/wrKNhChp8xSoG8W8YYhsXMYGHVh9K7j6ACH8VNKlDT9A64KZXvYMCOYZWUj7w39RcV3IlBDIumWYWWdI5PP8AdN+qk+6iFH0gQHC/KirAltCQ3Bd37lX878gNzUWm9oZOuyY4n4hiwUXWPu7bRxg7u1r+5RzLdwqiZHlcmNlGOxhuLgxJYgNY3U2PKIH2R9LmfPmyXBPmMzYvFMrqG0iMG69mxEYHdELi55u3PYWq+LXTCCgvmSnPk68jjgwsgxIlOlwXWxOxjW4uF2II5nuNSGFh0qF8BpPqvZP4g05RXXELt/F2h67ax8e1/b8qnklTs0Y6I7MZ44YpJpNkjRnYjwUEm3nttQo4J4fzOeObMIJoIxipH1CVS5YB2Bt2CAtywt9nyo3jCBtiAR33F/zrZIgsFUAKOQAtUZStorFUgLdHavhJcZlc5GtFMsZF7NdBr03tsVMbW8mrj6M+BMJjMGJp0dn6112dlFlC22HrRuODW+rSL+NhflbnWUwoUWVQB4AW/KgvmZ35A649yqLC5NiIoUCRqI7AeJni3JO5J23O9cnBfRpl0+Gw800Tszwo7/OOASVBOykWHpRQfDAixAI8CL1lcOALAWHgKzpgVoE/TtGq4LDoihI0nVY0UWCqIpAAAPSpyHpNywtpWc3ZtvmpdyTt9Gr1JhA2zKD6gH86Z+zo/wCrT7o/lRTp6D32UzpbiVsrxGoA6erK37m61ACPOxI95qS4CiVMuwgVQB1EZsBbdlDMfUsST61ZXwwIsQCPAi9ZXDgCwFh4CjyV2DdUVrjjJ2xmCnw8ftugKebI6yKN/EoB76qHCXSRhsPgkwmL6yCeBerdGie7BBZbADY2sCGtvfxotQxW7R93rXLiMvSRtTxo7eLKrEehIpZO3aCuqYKuAcNJiMRj81eNo4poXjiDjdlsp1C/gIkFxtcsByqN4e4ZONyOLqhbEQySyQsNm1B7lA3dqsLeYU91GzqKamGCiygAeAFvyrUg2wJdFc7TLm0su0jIrMLW7RTEltu7e9O6OONMDhsEkU8xSQO5I6uRti1xuqkUalwii9lAvz2G/r48zTP2dH/Vp90fyrJtdAaT8gQdJOZQ4nDYKeBtUbYuwaxW+m4OzAHmKlsbCG4gCOAytgXVlbcMpLggjwIJonvgk0quhdrm2kWBNN+SrfVpGrxsL/HnWu9m60jz5mOVzYLMcHgmJbDrjI5cOTfZZZYwwv5FACPEE/SqZ4smwkWdk45VaH5Mo7Ss41Edk2UE350aXwgNiVBI5XANvSsPgVJuUUnxKg0KDbBtwrmuTNiEjwYVZnuq6YpFJFtTC7Lbkt/dREEndbati4BAbhFB8QoH6Vt6inUhK9DRen4g7IPs3+Jp5iHMkADck7WA5k1HLm0M92ikSQd2lgdu7a9FPkzPSHyYdWIJUEjkSBt6UHekjOi+Mm0kGONVw6r3MUOtz7na3uokYjMGwmFxGKl2Kh5FQm9iezEvO1ydPLvJoBZgziybtJyPeWlkN29+pre6rJ02/QRKwz8G5WiQvNNh4ANCIgjVZNaqoLMzfSdmJv8AwgUsVwVhMS5EmG6sgXDoCg3PLSbrfv22qwZDho8JBh8MXUMkajcgFm21kerE/GpRjR5u7C4oHbdFkf0Z7DuHVjb/ABUqIGqsVTxZ/wBSF4gnzDomgl1fI8TYjmklnUHnbWg2+Bqq43gnMMFqPydmFiOsi+dFu+2ntKPUCvQOFiCgBQAO4AWrtj27655SV9FY21s81ZYuMw0bYiPVoDXYo263+sveB+F6smSdLDrZZ0Vx4/u2/wAp/CiD0p4aMYQyXjjxDOqx3ABlubMjnbsaSWJJsukE99D2boqZwWSaNRtbVq0k23tsSFve197W76ZPkvd+z/ZiP3X73n6fuXzKuP8ABzWBkMRPdILD7wuv41a8uxCSj5uRWHMMpDaSORFvW1u8EivOWY8E4/C3bqnKj6cXzi+pC7gfxAU/hri7E4UydU0aNImguVJKfaC8i43tfa/OlltU0MlT0en4JwTpNg2+w5NY2Ok99iNxzHf3X6errzVwrxu+El0g64SDeOR9mfUD1mrulJudQ3N/IWLGT9JWFksGlaE+Eq6190ikfFq53jl5bKc15l96ul1dR0Obq6hkaNge9XYg/BDW39peSfef/JS1L0GuJ2dXSEdc8OLL+yENvtN+qVWz0iYK9hPGbuUGnrW1MDay6Yjq3IAIve+1amHRbDHS6uuT9o+Sfef/AOOl8v8AJPvN/krVL0Bo6+rpdXXJ+0PJPvN/krBzHyT7z/8Ax1ql6G0dnV0urrikzIKjStoVEUs7F2AVQLkm6dwFRWB40w8zKkUiOzqGUKJT2SoYE/NbCxB3tzFZKXobRYurpdXUbjc4ES6nW4+wJZCPMiOIkDzqAPSfl4v/AEiPbntNt6/M1ql6G0XHq6QjqmJ0o5cTYYqK/n1w/OKt0vSLgVJBxEWwUmxka2sXUErGRe3dz2NbbDofx5xhHliRPJE8nWuUGgqLEC++r1qnJwlmeB/pk+ayTQ4cGWSLXL84kY1Mvaa1yBbeofpn4jhxmHwrQSK4XEMDp17HQp5Oinv50WOkD/ZuN/5Wf/pNQdmVC4Qz5MfhkxSIyK5cBWtcaWKm9tu6pvq6HfQritOUwDs+1LzZh/vX8FNXn9o/wfeb/JRqQNHX1dY6uuT5bcgA8+4D9W/lQa6ROPppGnggkKRK5hBXZpCtutJbnpB7NlsDq76eMJNiuUUWjpBzLEYtDgsvUlXZkmnDIF7IBaNCzDUNxrYXAvp5kgCvF5LjsIfn4DpAPbAt6WdSU/GiL0VYFRhflC9Yz6XjQO3ZsshZuqH0VZwoPiY/Kp3D4XExRjd2e1yVkDAsdyCkuwW5t2WFdUIqPRKbvsEOI4glfCjDyLLo61ZXZ21KVRTpRdze72PuFRXD+MRcZFJKNSxsZSv12XdB96xo6YnhjDzoDPh41kIBcx3TtEdrdbat/G9VTOOimF94pSp7g63PudLW+6aLSfn/AH6ATolF4gwmKfWs/VOTHdJlsOwxYAG4U7k8yefkKuYkBFwQR4g3oEZxwDjcMjSBg8aAljqDAAcyb2aw9NqhcHm2Lw5uhkXzjc2P9nv99bdbX7hXyPR96VAuPpRxQABm5eMS39+1Ktyibiw8w1qzjNosLC08xIVeSgXZ2Psqo73J2A/Lu14jMYoYWnlcLCi6ix5W8vG5sABuSRQkzLMcRm2KAAMaLuinf5PGdjJJbnO45L3cvEiKi26GTpWPQYjN8SzzdmNdpNJ2iQ7iCI98jbF29/IKDas7w0jFV0HqIwNCqvWC4FvnUJDMBtYKSb7mpPKsFHBGsMS2ReXiT3lj3sTuTXetdUfcOeUuRE8MRSgs5LKnJUJc3sfbHWdpQeWnutXXm/DeGxP7/Dox+uAUf76Wb3XtUglblpJybdjR0D3GdE8JN4JTuf3co1jyAZQCPUhqF+e5S+GmlRSy9W5VlB1aW32IO9ja4JG4r0pmGZR4KB8VNyUdhR7TsdlVR9ZjsPiaEmSvJmGMn62Ma5ikk7LyiVB1ccdzcHSuw27TAk3C3Eovk+L69SruKvz9Af5dn88BujMp8UYqfeBsauuU9J862Dur+Uq6T95bD41cjlOXTv8AJjhI9ADBJQNJZkI1gSLZyRcXJO5B52NQGZdFsb6/kmJ5Egxy9oA87F0Fxa/epNNxnAW4SJPjPj9JMLHhcJIBJNHqnkQ36mI7MoI/3jeyBzAPdcGuDoryeKWQ4livzPYgiuCUsN5GHvIB8S58Kp2Z8I4zDKQ2HOi9y8Q6xTbvJS5A3PtAWvyqEwGOkiN0BYAkhlNmX0IpY6+o72tHp69YikDrqRgy+KkEfEd9BHJulGeOyuwkHhKLH76/rerll3HuDmYPKjQybfOC592uPtEeRFqdU+mTdrtF9vTo1LEAczUfg8zimF4pUf8AhYH4jnTeJs9XL8K2II1SuQkMf15G2UW8O8+Q86E3xQYrkyo9LfEwH9AjN0QK+JIPtE7xQ+PaI1t9kDzFcvQ/lD2kxr6iW1JGL21bgubcrXUD1vy01R8ry6TG4pcOHLMzs80vO7E3mkO1iO5e42UbaqPuDw6RRrFGNKIoVR4ACw9T50sVSoaTshcE2IjciaRVMzalOkuFYgfN31AKQBttZt+/n35nkWHxAAxEEcrWsXK6W87OvaX3GpC9YvTvYq0D/OeivCsC0czwgDk9pUH3rN8WqsZp0c4qOMtD1Msa3b5ltyANyVYC5sOQLeVF7G4YSAAkixuLHvsRy5Hn337j3VyY/ExZfg58QwLWBsDuZZXARBtzJOkbDYb91BtRVmVt0ea8WHXQjEECQkeNyd716s6QP9m43/lZ/wDpNXl3OSB1MZ3eKyM3O5BJO/fa+keSCvUXSB/s3G/8rP8A9Jq5cqqR0R6AtwFxDmcODjjw2WtPEC+mUBzqu7FuW2xJHuq/ZVxfH1SjHPDhcRv1kLuEZNzouHN910t767Ogz/ZEH8c3/WeqVnGRwY3ieWDEIXjMSkgMy7rh0I3Ug1o5GgSgmWvO+M8PFhMRNBPFLKqBY1jdXOuQ6ENlPIE39AaCEsDM8eHj7T3WJd/alkaxN+/tsd/BRV96XOEMJlmHhmwcZR2nAJLu4ICOw7Lki4IBvUNluTT5PiIcXmUXzYLCMI6OTIy2vZSeSliL99UWXT9WK4UGnKMuTDwxQR+zEioPOw3PqTcn1rqJqEyrivC4jaOZQ31H7DfBufuvUwTVqJWJjWieJXFmUMPAi9bGNMY0yFZWuPMT8ny6YJfXLaGMXPtSmxtflZA5oYQTLNK6rAZXsECrdY+sZ0jVnKHUI/bY2tc25Xq1dKuZnroYQdoIXxDj7chEcPvBAPo5qt9FEbvmCKrMESN5JQCQGA7KBvHtMprRnW/UdRCnFwPgFAVsPqIG7GSW58z26VWC1Ktv1Bo854ni2aaKKKVgUi/dxqCFLcg8l/aI7hyH52XgPi2GKIxyKbmRizjcsSdiw57DYf8A3XNm3BWk3MRXzXl8OXwtUbjsljMJCqRKu6sO+3d41ZezZIbVP9ybz45ql/wMGX5jFMLxSK3odx6jmKko682Q4+eFuZuPG4I9Dzq25N0lzx2V2uPCQX/xDf41LxU9PQfCa62G0V14ZFAaSQhY0BLFjYAKLkknuA51SuG+NYsS6RFCpc2DBgy/Hnf3VD9KXF6ylsHE3zERtOyn97INxCp+qpF3I9PWeS+l5jY0ntkPxdxFLmeJTqQxTUVwkXK97hp3HcSAbE+yqltuZIHDWQx4SAQqdRO8j8i7kWJ8lA2A7gPG5MNwJw6cOpxEw/pEo5f1UZsQg8GNhfwsF7je3A1WEKQs52yPzDKA0caQsIjEQY2Avp2Kmw81LD313YLDLEgjQbD3knmST3km5J8TTwazVG21RNJDr1zz8NQYst10MZOk3l0gOu21nFm87XtXRGhYgDmaq/SlxEII/wBnxOQ8iasRIvOOE7ED7cnsgeB7r3qGV1pdlccb2+gP4nJGdUeNdZdnUKvb1aH0Bk0i5Vm1Ad/ZPOnYzgvH4dRIcPMi8yVs9v41jJK/2gKvHRdlzNI+MYlIoyViQcr6NJt4hVIHmfGrnleZymcmU6UljLxIbDQEYA6j9YhlY+HLureFyVjLJToBmFzR1F+y5B+jdG9b2tUzxNxTLjJElkXq+rjEcEWq5W4AkkY7dtuQ5d31bko5lg8vxkojeFZJGBPWopU2XmTKltQubcyLmq5m/RSp3w+I9EmH/uILj7prOEvMKlHyI7os4gw2GWUyghpHt1gFwFUCwIG47RJuOfZvyos4LMIphqikVx9kg/HwoCZhwLjcOS3VOB9aI9YvqQu4HqBUPDmc8LXBuR9JCVPxFC+K2jNW9M9Nk00mghk3ShiI7K7hx4Srv95f1q75b0iwuAZI2X7SkOv4b/hTxal0I7XZJdI2by4XBPNC2mRWQAlQ2zOAdmBHI1T5siz/ADCCCRnhaOyzRC8S7st1YgLuQG7+V6nukHEw4nKZpElFtcYXYks+sEIBzufyue6p3oo4uTERjBLE6yYSCNHYlSrMg6s6bG9rqedc2ZtS0XxJcTz1mUJjkMLsOsilKOoubsrFWIblYFbf2jXrDizAPPg8TDGAXlglRATYanQqLnu3NCrp8yiCJMNJHBFHJJOxd0RVZyQCdTAXO5J3o2VBu3bKJUVPowyKbBZfFh5wBIjSEhSGHakZhuPIioeLhPEjP3zAhfk5i0g6hqv1Kp7PP2gaIlKgEEf/APpD/wDCw/8AzP8A7T1f+JeFsNj40TFRmRUOpQHdLHTb6BF9q78yymDEKFnhjmUG4WRFcA2tcBgbGxrtPL3VjHj7JYJpVJjLMQbBdBe9gDzG+1WDLOLMZh9gz6QbWU612+w3L4VZehEJDh8TiWLXDhLDuAUNZR4sSo89K1dsZh4cS4TFYVNTl7OeywAF1HWIblrXuA3dXbiVxTOXI0pUVHKelItZZERj9klG+61/0q15Xxdh53SO7o7kABl7z5rcVCZt0XwPcxSFfsyKHHuYWYfjVcxPA+NgbXGW25GFxIBtbsq4Dg28BVkv70I6K/xZmnXzzzA7TzkJ/wClB83Hbya496Grv0J4C0WIxJH7xxGv8MYvt6lh92hxmeXSxkJoYaE0qpFmHM3IPfqYmpLh/jefBokSEIEFjG63BJYsW8QSSe8VJxcX7xVO17of70qF8fSvsLwKT32kNvd2azT8kJTCFYHY1H43IoJeaAHxG1SWms6a6VJrpnNKEZdopOacDagdBDD6rCqVmvBJUnsMn+Ifzo2aaToCLEA+tF5FLU0mKoTj8Evuecp8rmitpB2+lGdJ/DeuKfEPpCAWCiygdxvv7+Zv5CvQmO4cgl+hpPiKrGa8BX3XS3hcWPxqbwY5fC6/EovaZx+OP2K3kXSO8dklOoADaTY+5/51e8r4yw01rv1ZPc3L3MNqHed8JvpsY7FeTW/UVU58unhN11AeW4/89aE8eTH5WvVDRljyfC6PSMcgYXUgjxBvTr155yriqeE82HmpI+K8jRD4Z6QQZY0xDoqEi7SDqyB4m+xHpSLLGhnjkghZznEeX4V8VKLuezFH3u7ewo79+Z8ADQQw2Emx2K6otqmmkMmIk5hfrf2UB0qOV+XdUhx5xccbOZVJ6mLUmGXlc8nmI8TyX3d4NXXo2yNYMMJSQZcQFdiPora6IPS9z5nyFShFyfJlZPiqRacvwccESQxLZEXSo/U+ZNyT4mli8DFKVMkatpN1uAbfH3VtBrN66OiJzYbBKjvJclnsN7dlVGyrbkOZ9SafjkZkKobMe/8APfu2vv3VtvWL1t9g8huQYGQyHUSF2susvptzOpt97gW8qDPFRgxGIxLQnV1mKtD3alsyym52IaUrp35BuVxRM6R88OEwow6NpnxVxq744gPnH25WU2HmfKhbwPlfyrGoNHzUQBIO4VE5A+Z5eZYnuqHLlO/Irx4xonR0RSNHc4mLX3LoYr59u97XvY6d+dVvH8G4vB6i0EgH9ZExdfU6b7eTAUcMyjd9MaKuhjZySRZbcl0kG55c9q7E2sB3U3BGU5HnP9ozdWqtLrSNy6RhQB1hGkO3iQOX/wB1X8ax2Fu7/wA/KvSubcNYXEXMsCFj9NRob3stiffeqbnHRYj7wT2+xKur/GtrfdNJPFyWmGOSntFs/wBDYszyzLUklePqsNAw0aSbmBBvf0oj0Deh+IZZPjPlxGHRtKRyS3jSQo8l+rZ7Bhax27iD30cq4mqdHUnYqVKlQMKmtyPpTqo/ShxlLlkULxRpIZZChD6thpvcaTWMULoPjDYLEKyhgZ+X/wDNKIKZeodX1u2i+lWNwtxYnfcm225PfUdwjwvFl8bxRO7h31kva99IXbSBttU2xr0MSajRxzpysRNaJybHTa/dfl+FPY1rJqqQjOPLxJMoTERIbn2TZxYsbAgjmBbeg9jsNHK7dSodXmkWOMdoj51kjG/O4C29ffRZ4lzL5PhMRPexWJgh+2/YT/EwPuoISYhYZoULOqQ6SxjOlrjclT3Nqub0rnxl8hoRsfjMogR2Rmg1KbMBITY94utwbHbbwpUVuGOG4BhYtK3UrqXWo1WYlhfzsaVPxXovsHl82WoNTlNM004LTOiRsBp9q1BacKVhsfprOimg04NQDoZJAGFiAfWofH8LwSfR0nxFTganA0YzlHpiSxQl2gZ5v0c3uVAPpsfwqlZtwdKmxBIHINfb0Ir0DTJYFYWZQfWmeWMvjin+TAoZIfBL7nmLMcNMuzqRtYeAA7hba1r1L5DxpNhwq3ZQAB9ZTbyP6UbMw4Ugkv2dJ8qp+cdG9wdABHlt+FL4EG7xyp+j/wBjePJayR+qNuS9JEUlhIN/FP1U7irdgM3hmF45FPlex+BoH5pwRPEbqDt7j/KopcXiICA19vrA39x50svEh8cdeq2h48J/BIPk8kvXazGzRoLKFYXJPNiCd/Ae+pbJrqjT4ghVQM7XtZANwL+QG9BnJuOcQiaiXCjY6xrX48xU3xjxymJwkWFicdsa8UyXsEU7ID4sbf8AhpcmRSj7oYY5KXvFV4v4gfGTyYhrjrezGp+hApOgerG7H/vRU6Ocg+S4YFxaWazP4gfQX3A3PmxoacBZauLxoMltEfzhXx0myKPK4HuXzo1jEkyaNBsFuX7r+A8TWhHVoact0dN6wTWL00mnoSxxNMJrBNbMNHqYD4+nfR62DsH3TVDeHBoLF2mdrX30qgud+7zoq8NcTYbHxtJhZC6o+gkq6dqwa1nAPIivP3SHxD8pxM0qnsLeCD+Ff3rD1O3vqa6G+O8Fl+FljxLsrPNrUBGbs6EXmo8VNefmW782dePqj0BSof8A+uTKv69/7mT+VL/XJlX9e/8AcyfyqJQIFADpm41weOhgjwsut45izAo6WGkjm6gc6v8A/rkyn+vf+5k/y0EeCeG/l74gB1GmzDUpIOpm8OXKnhHlJIWcuKsIuVdJsTgdchH2kOofDnVrwGeYecfNSq3lff4Hegnn3BM2Fs7AqCbB0Opb+HiPfUEOujNx2vMbGu5uUe19jmSjLpnpYmtbGgZk/HeIisplYeTjUPjzq54DpAJsJIwb23Q+PkapDJGXQkoSR19J+MtHh8Pf95KZX/8AThF9/Vm/ChAUbETqgvqllC/Frfr+FXPpDzYS4mVh7MUUcK/xN25PfvaorowwPW4+MnlErOfW1h+LfhUJ7kl6stDUbDvh49Cqi8lAA9wtSpUq66IG4U4UqVIzIcBWbUqVAI7TS0UqVKYxorGmlSrGFTr0qVExm9K9KlWCa5IlbZlB9RULmXCcEt+yBfyuKVKjHJKPTFlii/IpOddHFgeraw8O74GqPmnDU8IIAXT32IF7eN6VKurFihnxuU1v5HHjzzjkUb0RGXZk+HcuL725GxFvCr/kHSU+yv2/Jhv8RWKVeXGbjLiuj1ZxTVl9yniyGbbtK3gQT+IqcD35UqVdhzjSaieNc3OEwEkifvJCIk8i+1/cLmlSpMvQYdgFxY7YjX6NkXza9rn1Yk0dsk4NwkUEaPhoJHVBqd4o2LHvJJW53pUqnFJ3ZWR2HhnBf8Fhv7iL/LTTwzgv+Dw39xF/lpUqqscfQRyYw8NYL/g8N/cR/wCWsQ5fHC4+TwQxhv3jIioSByHZAvvSpVSMI+hOUmV/pNxwVcHDYnXP1rjldIxZlv53NU6HAwGGWdtWozpBBEpsOsku5LsQeyqfE0qVRt/mOoos2K6MQUBSUF7bq6i1/IjlVNz3hh4X+dHVt9ZGFjblsKVKrRipN36EHklHog8xwhVAoJYaixJO5J7zS4Xz18I7Mh0s1t7X2B5VilXFm9yaaO2O4uwhR9JL2F4kJ7+dKlSqvNicUf/Z"
					alt="Feature 3" class="feature-icon mx-auto d-block mb-3">
				<h4 class="text-center">Apply Easily</h4>
				<p>Apply to jobs directly through our platform hassle-free.</p>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>