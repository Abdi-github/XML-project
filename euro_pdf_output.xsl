<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="page" page-height="29cm" 
					page-width="21cm" margin-top="0.5" margin-bottom="1cm" 
					margin-left="1cm" margin-right="1cm">
					<fo:region-body margin-top="1cm" margin-bottom="2cm"/>
					<fo:region-after extent="0.5cm" region-name="xsl-region-footer"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="page">
				<xsl:call-template name="footer"/>
				<fo:flow flow-name="xsl-region-body" font="12pt Times">
					<fo:block font-weight="bold" font-size="140%" space-after="0.5cm" text-align="center">
						UEFA FRANCE-2016 TOURNAMENT RESULTS
					</fo:block>
					<xsl:for-each select="euro_cup/group_stage">
						<fo:block keep-together="always">
							<fo:block font-weight="bold" font-size="120%" space-before="0.8cm" >
								Results of Group <xsl:value-of select="@group" />
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed"  border-width="0.3mm" 
									border-style="solid" font-size="12pt" space-before="10pt" >
									<fo:table-column column-number="1" column-width="90pt" />
									<fo:table-column column-number="2" column-width="40pt" />
									<fo:table-column column-number="3" column-width="20pt"/>
									<fo:table-column column-number="4" column-width="40pt"/>
									<fo:table-column column-number="5" column-width="90pt"/>
									<fo:table-column column-number="6"/>
									<fo:table-body>
										<xsl:for-each select="match">
											<fo:table-row>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block><xsl:value-of select="team[1]" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[1]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell   display-align="center" text-align="center" padding="2mm"  border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block>-</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[2]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block ><xsl:value-of select="team[2]" /></fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block >Match Date: <xsl:value-of select="@date" /></fo:block>
													<fo:block>Start Time: <xsl:value-of select="@time" /></fo:block>
													<fo:block>Stadium: <xsl:value-of select="@stadium" /></fo:block>
													<fo:block>Attendance: <xsl:value-of select="@attendance" /></fo:block>
												</fo:table-cell>
												
											</fo:table-row>
											
											
										</xsl:for-each>
										
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
						
					</xsl:for-each>
					<xsl:for-each select="/euro_cup/knock_out_phase">
						<fo:block keep-together="always">
							<fo:block font-weight="bold" font-size="120%" space-before="0.8cm">
								Results of Round-16 
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed"  border-width="0.3mm" 
									border-style="solid" font-size="12pt" space-before="10pt">
									<fo:table-column column-number="1" column-width="90pt" />
									<fo:table-column column-number="2" column-width="40pt" />
									<fo:table-column column-number="3" column-width="20pt"/>
									<fo:table-column column-number="4" column-width="40pt"/>
									<fo:table-column column-number="5" column-width="90pt"/>
									<fo:table-column column-number="6"/>
									
									<fo:table-body>
										<xsl:for-each select="round_of_16/match">
											<fo:table-row>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block><xsl:value-of select="team[1]" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[1]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell   display-align="center" text-align="center" padding="2mm"  border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block>-</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[2]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block ><xsl:value-of select="team[2]" /></fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block >Match Date: <xsl:value-of select="@date" /></fo:block>
													<fo:block>Start Time: <xsl:value-of select="@time" /></fo:block>
													<fo:block>Stadium: <xsl:value-of select="@stadium" /></fo:block>
													<fo:block>Attendance: <xsl:value-of select="@attendance" /></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</xsl:for-each>
					<xsl:for-each select="/euro_cup/knock_out_phase">
						<fo:block keep-together="always">
							<fo:block font-weight="bold" font-size="120%" space-before="0.8cm">
								Results of Quarter-Finals
							</fo:block>
							<fo:block >
								<fo:table table-layout="fixed"  border-width="0.3mm" 
									border-style="solid" font-size="12pt" space-before="10pt">
									<fo:table-column column-number="1" column-width="90pt" />
									<fo:table-column column-number="2" column-width="40pt" />
									<fo:table-column column-number="3" column-width="20pt"/>
									<fo:table-column column-number="4" column-width="40pt"/>
									<fo:table-column column-number="5" column-width="90pt"/>
									<fo:table-column column-number="6"/>							
									<fo:table-body>
										<xsl:for-each select="quarter_finals/match">
											<fo:table-row>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block><xsl:value-of select="team[1]" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[1]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell   display-align="center" text-align="center" padding="2mm"  border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block>-</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[2]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block ><xsl:value-of select="team[2]" /></fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block >Match Date: <xsl:value-of select="@date" /></fo:block>
													<fo:block>Start Time: <xsl:value-of select="@time" /></fo:block>
													<fo:block>Stadium: <xsl:value-of select="@stadium" /></fo:block>
													<fo:block>Attendance: <xsl:value-of select="@attendance" /></fo:block>
												</fo:table-cell>											
											</fo:table-row>										
										</xsl:for-each>										
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</xsl:for-each>
					<xsl:for-each select="/euro_cup/knock_out_phase">
						<fo:block keep-together="always">
							<fo:block font-weight="bold" font-size="120%" space-before="0.8cm">
								Results of Semi-Finals
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed"  border-width="0.3mm" 
									border-style="solid" font-size="12pt" space-before="10pt">
									<fo:table-column column-number="1" column-width="90pt" />
									<fo:table-column column-number="2" column-width="40pt" />
									<fo:table-column column-number="3" column-width="20pt"/>
									<fo:table-column column-number="4" column-width="40pt"/>
									<fo:table-column column-number="5" column-width="90pt"/>
									<fo:table-column column-number="6"/>								
									<fo:table-body>
										<xsl:for-each select="semi_finals/match">
											<fo:table-row>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block><xsl:value-of select="team[1]" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[1]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell   display-align="center" text-align="center" padding="2mm"  border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block>-</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[2]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block ><xsl:value-of select="team[2]" /></fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block >Match Date: <xsl:value-of select="@date" /></fo:block>
													<fo:block>Start Time: <xsl:value-of select="@time" /></fo:block>
													<fo:block>Stadium: <xsl:value-of select="@stadium" /></fo:block>
													<fo:block>Attendance: <xsl:value-of select="@attendance" /></fo:block>
												</fo:table-cell>												
											</fo:table-row>											
										</xsl:for-each>									
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>						
					</xsl:for-each>
					<xsl:for-each select="/euro_cup/knock_out_phase">
						<fo:block keep-together="always">
							<fo:block font-weight="bold" font-size="120%" space-before="0.8cm">
								 Final
							</fo:block>
							<fo:block>
								<fo:table table-layout="fixed"  border-width="0.3mm" 
									border-style="solid" font-size="12pt" space-before="10pt">
									<fo:table-column column-number="1" column-width="90pt" />
									<fo:table-column column-number="2" column-width="40pt" />
									<fo:table-column column-number="3" column-width="20pt"/>
									<fo:table-column column-number="4" column-width="40pt"/>
									<fo:table-column column-number="5" column-width="90pt"/>
									<fo:table-column column-number="6"/>									
									<fo:table-body>
										<xsl:for-each select="final/match">
											<fo:table-row>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block><xsl:value-of select="team[1]" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[1]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell   display-align="center" text-align="center" padding="2mm"  border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block>-</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block > <xsl:value-of select="team[2]/@score" /> </fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" text-align="center" padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block ><xsl:value-of select="team[2]" /></fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2mm" border-width="0.2mm" border-color="brown" border-style="dashed">
													<fo:block >Match Date: <xsl:value-of select="@date" /></fo:block>
													<fo:block>Start Time: <xsl:value-of select="@time" /></fo:block>
													<fo:block>Stadium: <xsl:value-of select="@stadium" /></fo:block>
													<fo:block>Attendance: <xsl:value-of select="@attendance" /></fo:block>
												</fo:table-cell>												
											</fo:table-row>									
										</xsl:for-each>										
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>						
					</xsl:for-each>
				</fo:flow>				
			</fo:page-sequence>
		</fo:root>		
	</xsl:template>
	<xsl:template name="footer">
		<fo:static-content flow-name="xsl-region-footer">
			<fo:block font="9pt helvetica" font-style="italic">
				<fo:table>
					<fo:table-column column-width="50%"/>
					<fo:table-column column-width="50%"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="start">Prepared By: Abdulkadir Ahmed Hussien</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="end"><fo:page-number/></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</fo:static-content>
	</xsl:template>
</xsl:stylesheet>
