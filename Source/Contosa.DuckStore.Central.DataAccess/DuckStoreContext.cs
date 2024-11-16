using System.Collections.Generic;
using System.Reflection.Emit;
using Contosa.DuckStore.Central.Business.Entities;
using Microsoft.EntityFrameworkCore;

namespace Contosa.DuckStore.Central.DataAccess;

public class DuckStoreContext(DbContextOptions<DuckStoreContext> options, DbSet<Customer> customers, DbSet<Duck> ducks, DbSet<OrderItem> orderItems, DbSet<Order> orders) : DbContext(options)
{
    public DbSet<Duck> Ducks { get; set; } = ducks;
    public DbSet<Customer> Customers { get; set; } = customers;
    public DbSet<Order> Orders { get; set; } = orders;
    public DbSet<OrderItem> OrderItems { get; set; } = orderItems;

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // Configuring relationships and keys
        modelBuilder.Entity<Order>()
            .HasOne(o => o.Customer)
            .WithMany(c => c.Orders)
            .HasForeignKey(o => o.CustomerID)
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<OrderItem>()
            .HasOne(oi => oi.Order)
            .WithMany(o => o.OrderItems)
            .HasForeignKey(oi => oi.OrderID)
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<OrderItem>()
            .HasOne(oi => oi.Duck)
            .WithMany(d => d.OrderItems)
            .HasForeignKey(oi => oi.DuckID)
            .OnDelete(DeleteBehavior.Cascade);

        base.OnModelCreating(modelBuilder);
    }
}