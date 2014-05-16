package org.jboss.as.quickstarts.hellosport.rest;

import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.DELETE;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import java.lang.annotation.Annotation;
import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import javax.naming.InitialContext;
import javax.transaction.UserTransaction;

import org.jboss.as.quickstarts.hellosport.model.Player;
import org.jboss.as.quickstarts.hellosport.model.Team;
import org.jboss.as.quickstarts.hellosport.rest.SportService;


//Dummy comment
@Path("/NBA")
public class NbaService implements SportService{

        @SportService(ServiceType.NBA)
        @PersistenceContext(unitName="NBA", type=PersistenceContextType.EXTENDED)
        private EntityManager emNba;

        @GET()
        @Path("players")
        @Produces("application/json")
        @SportService(ServiceType.NBA)
        public List<Player> listPlayers()
        {
                Query query = emNba.createQuery("FROM org.jboss.as.quickstarts.hellosport.model.Player order by last_name, first_name");
                @SuppressWarnings("unchecked")
                List <Player> player = query.getResultList();

                return player;
        }

        @GET()
        @Path("teams")
        @Produces("application/json")
        @SportService(ServiceType.NBA)
        public List<Team> listTeams()        {
                        Query query = emNba.createQuery("FROM org.jboss.as.quickstarts.hellosport.model.Team order by conference, division, city, name");
                @SuppressWarnings("unchecked")
                List <Team> team = query.getResultList();

                return team;
        }

        @GET()
        @Path("team/{teamId}")
        @Produces("application/json")
        @SportService(ServiceType.NBA)
        public List<Player> listTeam(@PathParam("teamId") int iTeamId)
        {
                Query query = emNba.createQuery("FROM org.jboss.as.quickstarts.hellosport.model.Player where team_id = ?1 order by last_name, first_name");
                query.setParameter(1,iTeamId);
                @SuppressWarnings("unchecked")
                List <Player> player = query.getResultList();

                return player;
        }

        @PUT()
        @Path("trade/{playerId}/newteam/{teamId}")
        @Produces("application/json")
        @SportService(ServiceType.MLB)
        public Player tradePlayer(@PathParam("playerId") int iPlayerId, @PathParam("teamId") int iTeamId)
        {
			    Player p = new Player();

                UserTransaction utx = null;

			    try
			    {
                   p = emNba.find(Player.class, iPlayerId);

                   System.out.println("BEFORE: Player id : "+p.getId()+" Player name = "+p.getFirstName()+" "+p.getLastName()+" Position = "+p.getPosition()+" team ID = "+p.getTeamId());

                   p.setTeamId(iTeamId);

                   utx = (UserTransaction) new InitialContext().lookup("java:comp/UserTransaction");

                   utx.begin();
                   emNba.merge(p);

                   emNba.flush();
                   utx.commit();

                   System.out.println("AFTER: Player id : "+p.getId()+" Player name = "+p.getFirstName()+" "+p.getLastName()+" Position = "+p.getPosition()+" team ID = "+p.getTeamId());
			    }
			    catch (Exception e)
			    {
					if (utx == null)
					{}
					else
					{
						try
						{
						   utx.rollback();
					    }
					    catch (Exception ex)
					    {
							System.out.println("Exception = "+ex.getMessage());
						}
					}

					System.out.println("Exception = "+e.getMessage());
				}

                return p;
        }

        @DELETE()
        @Path("release/{playerId}")
        @Produces("application/json")
        @SportService(ServiceType.MLB)
        public Player releasePlayer(@PathParam("playerId") int iPlayerId)
        {
			    Player p = new Player();

                UserTransaction utx = null;

			    try
			    {
                   p = emNba.find(Player.class, iPlayerId);

                   System.out.println("BEFORE: Player id : "+p.getId()+" Player name = "+p.getFirstName()+" "+p.getLastName()+" Position = "+p.getPosition()+" team ID = "+p.getTeamId());

                   utx = (UserTransaction) new InitialContext().lookup("java:comp/UserTransaction");

                   utx.begin();

                   emNba.remove(emNba.contains(p) ? p : emNba.merge(p));

                   emNba.flush();
                   utx.commit();

                   System.out.println("Removed: Player id : "+p.getId()+" Player name = "+p.getFirstName()+" "+p.getLastName()+" Position = "+p.getPosition()+" team ID = "+p.getTeamId());
			    }
			    catch (Exception e)
			    {
					if (utx == null)
					{}
					else
					{
						try
						{
						   utx.rollback();
					    }
					    catch (Exception ex)
					    {
							System.out.println("Exception = "+ex.getMessage());
						}
					}

					System.out.println("Exception = "+e.getMessage());
				}

                return p;
        }

        @POST()
        @Path("add")
        @Consumes("application/json")
        @Produces("application/json")
        @SportService(ServiceType.MLB)
        public Player addPlayer(Player p)
        {
                UserTransaction utx = null;

                p.setId(0);

			    try
			    {
                   System.out.println("INPUT: Player id : "+p.getId()+" Player name = "+p.getFirstName()+" "+p.getLastName()+" Position = "+p.getPosition()+" team ID = "+p.getTeamId());

                   utx = (UserTransaction) new InitialContext().lookup("java:comp/UserTransaction");

                   utx.begin();

                   p = emNba.merge(p);

                   emNba.flush();

                   utx.commit();

                   System.out.println("ADDED: Player id : "+p.getId()+" Player name = "+p.getFirstName()+" "+p.getLastName()+" Position = "+p.getPosition()+" team ID = "+p.getTeamId());
			    }
			    catch (Exception e)
			    {
					if (utx == null)
					{}
					else
					{
						try
						{
						   utx.rollback();
					    }
					    catch (Exception ex)
					    {
							System.out.println("Exception = "+ex.getMessage());
						}
					}

					System.out.println("Exception = "+e.getMessage());
				}

                return p;
        }

        @Override
        public Class<? extends Annotation> annotationType() {
                // TODO Auto-generated method stub
                return null;
        }
        @Override
        public ServiceType value() {
                // TODO Auto-generated method stub
                return null;
        }
}
