<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<html>
		<head>
			<title>Euro 2016 Results</title>
			<link rel="stylesheet" href="euro.css"/>
		</head>
		<body>
			<h1>UEFA FRANCE-2016 TOURNAMENT RESULTS</h1>
		<xsl:for-each select="euro_cup/group_stage">
			<h2>
				Results of Group
				<xsl:value-of select="@group" />
			</h2>
			<table align="center">
				<xsl:for-each select="match">
					<tr>
						<td>
							<xsl:value-of select="team[1]" />
						</td>
						<td>
							<xsl:value-of select="team[1]/@score" />
						</td>
						<td>-</td>
						<td>
							<xsl:value-of select="team[2]/@score" />
						</td>
						<td>
							<xsl:value-of select="team[2]" />
						</td>
						<td>
							
								Match Date:
								<xsl:value-of select="@date" />
								<br />
								Start Time:
								<xsl:value-of select="@time" /><br />
								Stadium:
								<xsl:value-of select="@stadium" /><br />
								Attendance:
								<xsl:value-of select="@attendance" /><br />
						</td>
						
					</tr>

				</xsl:for-each>
			</table>

		</xsl:for-each>
		<xsl:for-each select="/euro_cup/knock_out_phase">
		<h2>Results of Round-16</h2>
		<table align="center">
				<xsl:for-each select="round_of_16/match">
					<tr>
						<td>
							<xsl:value-of select="team[1]" />
						</td>
						<td>
							<xsl:value-of select="team[1]/@score" />
						</td>
						<td>-</td>
						<td>
							<xsl:value-of select="team[2]/@score" />
						</td>
						<td>
							<xsl:value-of select="team[2]" />
						</td>
						<td>
							
								Match Date:
								<xsl:value-of select="@date" />
								<br />
								Start Time:
								<xsl:value-of select="@time" /><br />
								Stadium:
								<xsl:value-of select="@stadium" /><br />
								Attendance:
								<xsl:value-of select="@attendance" /><br />
						</td>
						
					</tr>

				</xsl:for-each>
			</table>
		</xsl:for-each>
		<xsl:for-each select="/euro_cup/knock_out_phase">
		<h2>Results of Quarter Finals</h2>
		<table align="center">
				<xsl:for-each select="quarter_finals/match">
					<tr>
						<td>
							<xsl:value-of select="team[1]" />
						</td>
						<td>
							<xsl:value-of select="team[1]/@score" />
						</td>
						<td>-</td>
						<td>
							<xsl:value-of select="team[2]/@score" />
						</td>
						<td>
							<xsl:value-of select="team[2]" />
						</td>
						<td>
							
								Match Date:
								<xsl:value-of select="@date" />
								<br />
								Start Time:
								<xsl:value-of select="@time" /><br />
								Stadium:
								<xsl:value-of select="@stadium" /><br />
								Attendance:
								<xsl:value-of select="@attendance" /><br />
						</td>
						
					</tr>

				</xsl:for-each>
			</table>
		</xsl:for-each>
		<xsl:for-each select="/euro_cup/knock_out_phase">
		<h2>Results of Semi Finals</h2>
		<table align="center">
				<xsl:for-each select="semi_finals/match">
					<tr>
						<td>
							<xsl:value-of select="team[1]" />
						</td>
						<td>
							<xsl:value-of select="team[1]/@score" />
						</td>
						<td>-</td>
						<td>
							<xsl:value-of select="team[2]/@score" />
						</td>
						<td>
							<xsl:value-of select="team[2]" />
						</td>
						<td>
							
								Match Date:
								<xsl:value-of select="@date" />
								<br />
								Start Time:
								<xsl:value-of select="@time" /><br />
								Stadium:
								<xsl:value-of select="@stadium" /><br />
								Attendance:
								<xsl:value-of select="@attendance" /><br />
						</td>
						
					</tr>

				</xsl:for-each>
			</table>
		</xsl:for-each>
		<xsl:for-each select="/euro_cup/knock_out_phase">
		<h2>Final</h2>
		<table align="center">
				<xsl:for-each select="final/match">
					<tr>
						<td>
							<xsl:value-of select="team[1]" />
						</td>
						<td>
							<xsl:value-of select="team[1]/@score" />
						</td>
						<td>-</td>
						<td>
							<xsl:value-of select="team[2]/@score" />
						</td>
						<td>
							<xsl:value-of select="team[2]" />
						</td>
						<td>
							
								Match Date:
								<xsl:value-of select="@date" />
								<br />
								Start Time:
								<xsl:value-of select="@time" /><br />
								Stadium:
								<xsl:value-of select="@stadium" /><br />
								Attendance:
								<xsl:value-of select="@attendance" /><br />
						</td>
						
					</tr>

				</xsl:for-each>
			</table>
			<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
				
				<g>
					<ellipse cx="600" cy="300" rx="500" ry="135" stroke="#aaa" stroke-width="2" fill="#964b64"></ellipse>
					<text x="600" y="300" alignment-baseline="middle" font-size="36" stroke-width="1" stroke="white" text-anchor="middle" fill="white">PORTUGAL Champions of Europe 2016 </text>
					
				</g>
			</svg>
			
		</xsl:for-each>
		
</body>
</html>
	</xsl:template>
	
	
	
</xsl:stylesheet>
